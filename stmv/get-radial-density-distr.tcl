proc getrad_overtime {rmax seltext outfile} {
  set num_frames [molinfo top get numframes]
  set ostr [open "$outfile" w];

  for {set frame 0} {$frame < $num_frames} {incr frame} {
    puts $ostr "Frame: $frame"
    puts "Frame: $frame"
    radden $rmax $seltext $$ostr $framenum
  }

  close $ofile
}

proc radden {rmax seltext ostr scalefact framenum} {
  set pi 3.14159265
  set r 1
  set lastr 0
#  puts $ostr "#Radius Mass Density"

  while {$r < $rmax} {
    set sel [atomselect top "$seltext and sqrt(x*x+y*y+z*z)<$r and sqrt(x*x+y*y+z*z)>= $lastr" frame $framenum]
    set num [$sel num]
    set mass 0
    if {[$sel num] == 1} {
      set mass [$sel get mass]
    } 
    if {[$sel num] > 1} {
      set mass [eval "vecadd [$sel get mass]"]
    }
#      puts $ostr "$r [expr {$scalefact*$mass}] [expr {$scalefact*$mass / ((4/3)*$pi*( ($r^3) - ($lastr^3)))}]]"
      puts $ostr "$r [expr {($scalefact*$mass) / ((4/3)*$pi*( ($r*$r*$r) - ($lastr*$lastr*$lastr) ))}]"
      
    incr r
    incr lastr
    $sel delete
  }
}

set ofile [open "radden_prot.dat" "w"]
radden 100 protein $ofile 1 0
close $ofile

set ofile [open "radden_rna.dat" "w"]
radden 100 nucleic $ofile 1 0
close $ofile

set ofile [open "radden_mg.dat" "w"]
radden 100 "name MG" $ofile 25 0
close $ofile

set ofile [open "radden_cl.dat" "w"]
radden 100 "name CLA" $ofile 25 0
close $ofile

