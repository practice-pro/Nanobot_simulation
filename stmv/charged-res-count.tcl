set fb [open "basic_residues.txt" "w"] 
set fa [open "acidic_residues.txt" "w"] 

for {set x 1} {$x<=30} {incr x} {

set y [expr $x -1]
set sel1 [atomselect top "name CA and basic and same residue as within $x of nucleic"]
set sel2 [atomselect top "name CA and basic and same residue as within $y of nucleic"]
set sel3 [atomselect top "name CA and acidic and same residue as within $x of nucleic"]
set sel4 [atomselect top "name CA and acidic and same residue as within $y of nucleic"]

set b1 [$sel1 num]
set b2 [$sel2 num]
set a1 [$sel3 num]
set a2 [$sel4 num]

set bb [expr $b1 - $b2]
set aa [expr $a1 - $a2]

puts $fb "$x $bb"
puts $fa "$x $aa"

}
close $fb
close $fa
