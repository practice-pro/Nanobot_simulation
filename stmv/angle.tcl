#package require Orient
#namespace import Orient::orient

#avoid installing extra plugin
source la.tcl
source orient.tcl

set fb [open "angle_stmv.txt" "w"] 
puts $fb "distance angle"

set selection {"backbone and segname C0 C1 C2 C3 C4" "backbone and segname C5 C6 to C9" "backbone and segname C10 to C14" "backbone and segname C15 to C19" "backbone and segname C20 to C24" "backbone and segname C25 to C29" "backbone and segname C30 to C34" "backbone and segname C35 to C39" "backbone and segname C40 to C44" "backbone and segname C45 to C49" "backbone and segname C50 to C54" "backbone and segname C55 to C59"}

for {set x 0} {$x<12} {incr x} {

	set i [atomselect top [lindex $selection $x]]
	set I1 [draw principalaxes $i]

	for {set y 0} {$y<12} {incr y} {
	
	if {$x == $y} {continue}
 
	set j [atomselect top [lindex $selection $y]]
	set I2 [draw principalaxes $j]

	set dist [veclength "[vecsub [measure center $i] [measure center $j]]"]

		if {$dist < 70} {
			set angle1 [expr acos([vecdot [lindex $I1 0] [lindex $I2 0]])]
			set ang_deg [expr $angle1 / 3.14159 * 180]
			if {$ang_deg > 90} {set ang_deg [expr 180 - $ang_deg]}
			puts $fb "$dist $ang_deg"
		}

	}
}
close $fb
