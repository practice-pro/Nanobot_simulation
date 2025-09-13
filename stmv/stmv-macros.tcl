############################################################################
# MACROS FOR STMV PARTICLE (PDBID:1A34); Yaroslav Daniel Bodnar, June 2013 #
# LAST UPDATED BY Boon Chong Goh, July 2013 				   #
############################################################################

# recalculate the secondary structure profile due to the large size of STMV capsid
# so that one can view the capsid in new cartoon representation
source stride_workaround.tcl
set_structure stride_stmv.tcl

###############################
# ASU# = capsid protein corresponding to ASU
# TRIM# = trimers (only for trimers 1 to 5; or one capsomer)
# PENT# = pentamers
# ASUA = 1 to 37
# ASUB = 38 to 46
# ASUC = 53 to 56
# ASUD = 74 to 81
# ASUE = 94 to 98
# ASUF = 109 to 112
# ASUG = 121 to 134
# ASUH = 139 to 145
# ASUI = 149 to 158
# ASUJ = 159
# ASU*CHEF = ASU*FRONT
# ASU*BIDG = ASU*BACK
###############################




set PRO_list {}
for {set i 1} {$i <= 60} {incr i} {
    lappend PRO_list "C[expr {($i - 1)}]"
    atomselect macro ASU${i} "segid ${PRO_list}"

    atomselect macro ASU${i}A "segname C[expr {($i - 1)}] and resid 1 to 37"
    atomselect macro ASU${i}B "segname C[expr {($i - 1)}] and resid 38 to 46"
    atomselect macro ASU${i}C "segname C[expr {($i - 1)}] and resid 53 to 56"
    atomselect macro ASU${i}D "segname C[expr {($i - 1)}] and resid 74 to 81"
    atomselect macro ASU${i}E "segname C[expr {($i - 1)}] and resid 94 to 98"
    atomselect macro ASU${i}F "segname C[expr {($i - 1)}] and resid 109 to 112"
    atomselect macro ASU${i}G "segname C[expr {($i - 1)}] and resid 121 to 134"
    atomselect macro ASU${i}H "segname C[expr {($i - 1)}] and resid 139 to 145"
    atomselect macro ASU${i}I "segname C[expr {($i - 1)}] and resid 149 to 158"
    atomselect macro ASU${i}J "segname C[expr {($i - 1)}] and resid 159"

    atomselect macro ASU${i}BC "segname C[expr {($i - 1)}] and resid 47 to 52"
    atomselect macro ASU${i}CD "segname C[expr {($i - 1)}] and resid 57 to 73"
    atomselect macro ASU${i}DE "segname C[expr {($i - 1)}] and resid 82 to 93"
    atomselect macro ASU${i}EF "segname C[expr {($i - 1)}] and resid 99 to 108"
    atomselect macro ASU${i}FG "segname C[expr {($i - 1)}] and resid 113 to 120"
    atomselect macro ASU${i}GH "segname C[expr {($i - 1)}] and resid 135 to 138"
    atomselect macro ASU${i}HI "segname C[expr {($i - 1)}] and resid 146 to 148"

    atomselect macro ASU${i}BIDG "ASU${i}B or ASU${i}I or ASU${i}D or ASU${i}G"
    atomselect macro ASU${i}FRONT "ASU${i}B or ASU${i}I or ASU${i}D or ASU${i}G"
    atomselect macro ASU${i}CHEF "ASU${i}C or ASU${i}H or ASU${i}E or ASU${i}F"
    atomselect macro ASU${i}BACK "ASU${i}C or ASU${i}H or ASU${i}E or ASU${i}F"

    set PRO_list {}
}

set PENT1_list {}
for {set i 0} {$i <= 4} {incr i} {
    lappend PENT1_list "C${i}"
}
atomselect macro penta1 "segid ${PENT1_list}"

set PENT2_list {}
for {set i 5} {$i <= 9} {incr i} {
    lappend PENT2_list "C${i}"
}
atomselect macro penta2 "segid ${PENT2_list}"

set PENT3_list {}
for {set i 10} {$i <= 14} {incr i} {
    lappend PENT3_list "C${i}"
}
atomselect macro penta3 "segid ${PENT3_list}"

set PENT4_list {}
for {set i 15} {$i <= 19} {incr i} {
    lappend PENT4_list "C${i}"
}
atomselect macro penta4 "segid ${PENT4_list}"

set PENT5_list {}
for {set i 20} {$i <= 24} {incr i} {
    lappend PENT5_list "C${i}"
}
atomselect macro penta5 "segid ${PENT5_list}"

set PENT6_list {}
for {set i 25} {$i <= 29} {incr i} {
    lappend PENT6_list "C${i}"
}
atomselect macro penta6 "segid ${PENT6_list}"

set PENT7_list {}
for {set i 30} {$i <= 34} {incr i} {
    lappend PENT7_list "C${i}"
}
atomselect macro penta7 "segid ${PENT7_list}"

set PENT8_list {}
for {set i 35} {$i <= 39} {incr i} {
    lappend PENT8_list "C${i}"
}
atomselect macro penta8 "segid ${PENT8_list}"

set PENT9_list {}
for {set i 40} {$i <= 44} {incr i} {
    lappend PENT9_list "C${i}"
}
atomselect macro penta9 "segid ${PENT9_list}"

set PENT10_list {}
for {set i 45} {$i <= 49} {incr i} {
    lappend PENT10_list "C${i}"
}
atomselect macro penta10 "segid ${PENT10_list}"

set PENT11_list {}
for {set i 50} {$i <= 54} {incr i} {
    lappend PENT11_list "C${i}"
}
atomselect macro penta11 "segid ${PENT11_list}"

set PENT12_list {}
for {set i 55} {$i <= 59} {incr i} {
    lappend PENT12_list "C${i}"
}
atomselect macro penta12 "segid ${PENT12_list}"

atomselect macro TRIM1 "(segid C0 C5 C10)"
atomselect macro TRIM2 "(segid C1 C14 C32)"
atomselect macro TRIM3 "(segid C2 C31 C44)"
atomselect macro TRIM4 "(segid C3 C43 C53)"
atomselect macro TRIM5 "(segid C4 C52 C6)"
atomselect macro TRIM6 "(segid C7 C51 C49)"


