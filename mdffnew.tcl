set ::MDFFGUI::settings::AverageMap 0
set ::MDFFGUI::settings::BFS 0
set ::MDFFGUI::settings::BSharp none
set ::MDFFGUI::settings::BSharpFactor 0
set ::MDFFGUI::settings::CCRes {}
set ::MDFFGUI::settings::CCSel {protein and noh}
set ::MDFFGUI::settings::CCThresh {}
set ::MDFFGUI::settings::ChiralityRestraints 0
set ::MDFFGUI::settings::CispeptideRestraints 0
set ::MDFFGUI::settings::CrossCorrelation 0
set ::MDFFGUI::settings::CurrentCrystPath {}
set ::MDFFGUI::settings::CurrentDXPath {}
set ::MDFFGUI::settings::CurrentDir {C:/Program Files (x86)/University of Illinois/VMD}
set ::MDFFGUI::settings::CurrentPDBPath {C:/Program Files (x86)/University of Illinois/VMD/mdffnew-step1.pdb}
set ::MDFFGUI::settings::CurrentPSFPath {C:/Program Files (x86)/University of Illinois/VMD/mdffnew-step1.psf}
set ::MDFFGUI::settings::CurrentRefsPath {}
set ::MDFFGUI::settings::DensityList {}
set ::MDFFGUI::settings::FTemperature 300
set ::MDFFGUI::settings::FixedColumn occupancy
set ::MDFFGUI::settings::FixedPDBSelText none
set ::MDFFGUI::settings::GScale 0.3
set ::MDFFGUI::settings::GScaleList {}
set ::MDFFGUI::settings::GridOff 1
set ::MDFFGUI::settings::GridPDBSelList {}
set ::MDFFGUI::settings::GridPDBSelText {protein and noh}
set ::MDFFGUI::settings::GridforceLite 0
set ::MDFFGUI::settings::IMD 1
set ::MDFFGUI::settings::IMDFreq 1
set ::MDFFGUI::settings::IMDIgnore 0
set ::MDFFGUI::settings::IMDKeep 0
set ::MDFFGUI::settings::IMDPort 2000
set ::MDFFGUI::settings::IMDProcs 1
set ::MDFFGUI::settings::IMDSelText all
set ::MDFFGUI::settings::IMDWait 0
set ::MDFFGUI::settings::Mask 0
set ::MDFFGUI::settings::MaskCutoff 5
set ::MDFFGUI::settings::MaskRes 5
set ::MDFFGUI::settings::Minsteps 200
set ::MDFFGUI::settings::MolID 2
set ::MDFFGUI::settings::Numsteps 50000
set ::MDFFGUI::settings::PBCorGBIS {}
set ::MDFFGUI::settings::ParameterList {{C:/Program Files (x86)/University of Illinois/VMD/plugins/noarch/tcl/readcharmmpar1.3/par_all36_prot.prm} {C:/Program Files (x86)/University of Illinois/VMD/plugins/noarch/tcl/readcharmmpar1.3/par_all36_lipid.prm} {C:/Program Files (x86)/University of Illinois/VMD/plugins/noarch/tcl/readcharmmpar1.3/par_all36_na.prm} {C:/Program Files (x86)/University of Illinois/VMD/plugins/noarch/tcl/readcharmmpar1.3/par_all36_carb.prm} {C:/Program Files (x86)/University of Illinois/VMD/plugins/noarch/tcl/readcharmmpar1.3/par_all36_cgenff.prm} {C:/Program Files (x86)/University of Illinois/VMD/plugins/noarch/tcl/readcharmmpar1.3/toppar_all36_carb_glycopeptide.str} {C:/Program Files (x86)/University of Illinois/VMD/plugins/noarch/tcl/readcharmmpar1.3/toppar_water_ions_namd.str}}
set ::MDFFGUI::settings::RefSteps 20000
set ::MDFFGUI::settings::RefsList {}
set ::MDFFGUI::settings::SSRestraints 1
set ::MDFFGUI::settings::SimulationName mdffnew
set ::MDFFGUI::settings::SimulationStep 1
set ::MDFFGUI::settings::Temperature 300
set ::MDFFGUI::settings::UseCCThresh 0
set ::MDFFGUI::settings::xMDFF 0
set ::MDFFGUI::settings::xMDFFAverageMapList {}
set ::MDFFGUI::settings::xMDFFBSharpFactorList {}
set ::MDFFGUI::settings::xMDFFBSharpList {}
set ::MDFFGUI::settings::xMDFFGScaleList {}
set ::MDFFGUI::settings::xMDFFGridPDBSelList {}
set ::MDFFGUI::settings::xMDFFMaskCutoffList {}
set ::MDFFGUI::settings::xMDFFMaskList {}
set ::MDFFGUI::settings::xMDFFMaskResList {}
set ::MDFFGUI::settings::xMDFFSel {noh and not water}
MDFFGUI::gui::add_server "default localhost" {
  maxprocs 1
  namdbin {namd2 +p%d}
  jobtype local
  timeout 20
  numprocs 1
}
