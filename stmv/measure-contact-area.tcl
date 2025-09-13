
proc measure_contact_area {mol seltext1 seltext2 outfile} {
# For each timestep, measure the contact area between sel1 and sel2
# and write it to a file. This is defined as sasa(1) + sasa(2) - sasa(12)
# example usage: measure_contact_area 0 {segname C0} {segname C1} contact_c0-c1.txt

  set sel1 [atomselect $mol "$seltext1"]
  set sel2 [atomselect $mol "$seltext2"]

  set sel12 [atomselect $mol "($seltext1) or ($seltext2)"]

  set ofile [open "$outfile" "w"]

  for {set i 0} {$i < [molinfo $mol get numframes]} {incr i} {
    $sel1 frame $i
    $sel2 frame $i
    $sel12 frame $i

    set a1 [measure sasa 1.4 $sel1]
    set a2 [measure sasa 1.4 $sel2]
    set a12 [measure sasa 1.4 $sel12]

    set sasa [expr ($a1 + $a2 - $a12)/2]

    puts $ofile $sasa 
  }

  close $ofile
  $sel1 delete
  $sel2 delete
  $sel12 delete
}

