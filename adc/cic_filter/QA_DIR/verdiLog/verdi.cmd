simSetSimulator "-vcssv" -exec \
           "/home/qidc/Nutstore/Project/gysc/adc/cic_filter/QA_DIR/simv" -args
debImport "-dbdir" \
          "/home/qidc/Nutstore/Project/gysc/adc/cic_filter/QA_DIR/simv.daidir"
debdebExit
esult /home/qidc/Nutstore/Project/gysc/adc/cic_filter/QA_DIR/rtl.fsdb
wvCreateWindow
wvRestoreSignal -win $_nWave2 "signal.rc" -overWriteAutoAlias on -appendSignals \
           on
srcSignalView -on
srcSignalViewSelect "sp_ram.dina\[31:0\]"
srcSignalViewSelect "sp_ram.addra\[9:0\]"
srcSignalViewSelect "sp_ram.douta\[31:0\]"
srcHBSelect "cic_filter_tb" -win $_nTrace1
srcHBSelect "cic_filter_tb.u_cic_filter" -win $_nTrace1
srcSetScope -win $_nTrace1 "cic_filter_tb.u_cic_filter" -delim "."
srcHBSelect "cic_filter_tb.u_cic_filter" -win $_nTrace1
srcSignalViewSelect "cic_filter_tb.u_cic_filter.dat_in\[4:0\]"
srcSignalViewSelect "cic_filter_tb.u_cic_filter.dat_in\[4:0\]" \
           "cic_filter_tb.u_cic_filter.dat_out\[34:0\]"
srcSignalViewSelect "cic_filter_tb.u_cic_filter.dat_in\[4:0\]" \
           "cic_filter_tb.u_cic_filter.dat_out\[34:0\]" \
           "cic_filter_tb.u_cic_filter.clk_vld_out"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 18920404.554318 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 11728437.910864 -snap {("G2" 0)}
wvSelectGroup -win $_nWave2 {G2}
wvSetCursor -win $_nWave2 13498768.161560 -snap {("G2" 0)}
srcHBSelect "cic_filter_tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "cic_filter_tb" -delim "."
srcHBSelect "cic_filter_tb" -win $_nTrace1
wvSelectGroup -win $_nWave2 {G2}
wvSelectGroup -win $_nWave2 {G2}
wvSelectGroup -win $_nWave2 {G2}
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 0)}
srcSignalViewSelect "cic_filter_tb.ClockPeriod"
srcSignalViewSelect "cic_filter_tb.dat_in\[4:0\]"
srcSignalViewSelect "cic_filter_tb.dat_in\[4:0\]" "cic_filter_tb.dat_out\[34:0\]"
srcSignalViewSelect "cic_filter_tb.dat_in\[4:0\]" "cic_filter_tb.dat_out\[34:0\]" \
           "cic_filter_tb.clk_vld_out"
srcSignalViewSelect "cic_filter_tb.dat_in\[4:0\]" "cic_filter_tb.dat_out\[34:0\]" \
           "cic_filter_tb.clk_vld_out" "cic_filter_tb.file"
srcSignalViewSelect "cic_filter_tb.dat_in\[4:0\]" "cic_filter_tb.dat_out\[34:0\]" \
           "cic_filter_tb.clk_vld_out" "cic_filter_tb.file" \
           "cic_filter_tb.scan_file"
srcSignalViewSelect "cic_filter_tb.file"
srcSignalViewSelect "cic_filter_tb.file" "cic_filter_tb.scan_file"
srcSignalViewSelect "cic_filter_tb.file" "cic_filter_tb.scan_file" \
           "cic_filter_tb.data\[31:0\]"
srcSignalViewSelect "cic_filter_tb.file" "cic_filter_tb.scan_file" \
           "cic_filter_tb.data\[31:0\]" "cic_filter_tb.data_in\[31:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 33525629.122563 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 13867586.963788 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 34632085.529248 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 38394037.311978 -snap {("G1" 2)}
srcSignalViewSelect "cic_filter_tb.clk"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
verdiSetFont -monoFont "Fixed" -monoFontSize "20"
simSetSvtbMode off
srcSignalViewSelect "cic_filter_tb.data\[31:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 1)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "data" -line 54 -pos 1 -win $_nTrace1
srcAction -pos 53 11 1 -win $_nTrace1 -name "data" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "data" -line 54 -pos 1 -win $_nTrace1
srcAction -pos 53 11 1 -win $_nTrace1 -name "data" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "data" -line 73 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "data" -line 70 -pos 1 -win $_nTrace1
srcAction -pos 69 13 2 -win $_nTrace1 -name "data" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "data" -line 70 -pos 1 -win $_nTrace1
srcAction -pos 69 13 2 -win $_nTrace1 -name "data" -ctrlKey off
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 2 4 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 5 )} 
wvSetRadix -win $_nWave2 -1Com
wvSetCursor -win $_nWave2 33964.465869 -snap {("G2" 0)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 35729.321466 -snap {("G2" 0)}
wvSelectGroup -win $_nWave2 {G2}
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSetCursor -win $_nWave2 41348.045406 -snap {("G2" 0)}
srcHBSelect "cic_filter_tb" -win $_nTrace1
srcHBSelect "cic_filter_tb.u_cic_filter" -win $_nTrace1
srcHBSelect "cic_filter_tb" -win $_nTrace1
srcHBSelect "cic_filter_tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "cic_filter_tb" -delim "."
srcHBSelect "cic_filter_tb" -win $_nTrace1
srcSignalViewSelect "cic_filter_tb.clk_vld_out"
srcSignalViewSelect "cic_filter_tb.dat_out\[34:0\]"
srcSignalViewSelect "cic_filter_tb.clk"
srcSignalViewSelect "cic_filter_tb.dat_out\[34:0\]"
srcSignalViewSelect "cic_filter_tb.file"
srcSignalViewSelect "cic_filter_tb.dat_out\[34:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 6)}
srcDeselectAll -win $_nTrace1
srcHBSelect "cic_filter_tb.u_cic_filter" -win $_nTrace1
srcSetScope -win $_nTrace1 "cic_filter_tb.u_cic_filter" -delim "."
srcHBSelect "cic_filter_tb.u_cic_filter" -win $_nTrace1
srcSignalViewSelect "cic_filter_tb.u_cic_filter.dat_in\[4:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
srcHBSelect "dff" -win $_nTrace1
srcHBSelect "cic_filter_tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "cic_filter_tb" -delim "."
srcHBSelect "cic_filter_tb" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {33 34 1 1 1 1} -backward
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat_in" -line 33 -pos 1 -win $_nTrace1
wvSaveSignal -win $_nWave2 \
           "/home/qidc/Nutstore/Project/gysc/adc/cic_filter/QA_DIR/signal.rc"
debReload
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSetRadix -win $_nWave2 -1Com
srcSignalViewSelect "cic_filter_tb.dat_out\[34:0\]"
srcHBSelect "cic_filter_tb.u_cic_filter" -win $_nTrace1
srcSetScope -win $_nTrace1 "cic_filter_tb.u_cic_filter" -delim "."
srcHBSelect "cic_filter_tb.u_cic_filter" -win $_nTrace1
srcSignalViewSelect "cic_filter_tb.u_cic_filter.dat_out\[34:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
srcSignalViewSelect "cic_filter_tb.u_cic_filter.dat_in\[4:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "section_out10" -line 123 -pos 1 -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 2 3 4 5 6 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 3)}
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 34720.832554 -snap {("G1" 1)}
srcDeselectAll -win $_nTrace1
srcSetOptions -win $_nTrace1 -annotate on
schSetOptions -win $_nSchema1 -annotate on
srcDeselectAll -win $_nTrace1
srcSelect -signal "section_out1" -line 69 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "section_out1" -line 69 -pos 2 -win $_nTrace1
wvSetCursor -win $_nWave2 50280.375773 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 52729.563131 -snap {("G1" 1)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "rstn" -line 59 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 4 5 )} 
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSelectGroup -win $_nWave2 {G3}
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvSelectSignal -win $_nWave2 {( "G2" 2 3 )} 
wvSelectSignal -win $_nWave2 {( "G2" 2 )} 
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSelectGroup -win $_nWave2 {G3}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {69 70 2 1 1 1} -backward
wvSetCursor -win $_nWave2 139027.400059 -snap {("G3" 0)}
wvSelectSignal -win $_nWave2 {( "G2" 3 )} 
wvSelectSignal -win $_nWave2 {( "G2" 2 3 )} 
wvSelectSignal -win $_nWave2 {( "G2" 1 2 3 )} 
wvSetRadix -win $_nWave2 -Unsigned
wvSetRadix -win $_nWave2 -1Com
wvSetCursor -win $_nWave2 79382.484386 -snap {("G3" 0)}
wvSelectGroup -win $_nWave2 {G3}
wvSetCursor -win $_nWave2 93501.329159 -snap {("G3" 0)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {69 70 1 1 1 1} -backward
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
debReload
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "section_out5_2r" -line 89 -pos 1 -win $_nTrace1
srcAction -pos 88 10 9 -win $_nTrace1 -name "section_out5_2r" -ctrlKey off
wvSetCursor -win $_nWave2 85289.348015 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 154731.013123 -snap {("G1" 1)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "section_out5_r" -line 108 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "section_out5" -line 108 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G2" 4 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetPosition -win $_nWave2 {("G2" 5)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSelectGroup -win $_nWave2 {G3}
wvSelectSignal -win $_nWave2 {( "G2" 4 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 5 )} 
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvScrollDown -win $_nWave2 1
wvSelectGroup -win $_nWave2 {G4}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "phase_1" -line 106 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 1 3 )} 
wvSelectSignal -win $_nWave2 {( "G3" 1 2 3 )} 
wvSelectSignal -win $_nWave2 {( "G3" 2 )} 
wvSelectSignal -win $_nWave2 {( "G3" 1 2 )} 
wvSetRadix -win $_nWave2 -1Com
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G3" 3 )} 
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetCursor -win $_nWave2 167337.124527 -snap {("G4" 0)}
wvSetCursor -win $_nWave2 189812.020288 -snap {("G4" 0)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G2" 3 )} 
wvDigitalToAnalog -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G3" 4 )} 
wvSelectSignal -win $_nWave2 {( "G3" 3 )} 
wvSelectSignal -win $_nWave2 {( "G3" 2 )} 
wvSelectSignal -win $_nWave2 {( "G3" 2 )} 
wvSelectSignal -win $_nWave2 {( "G3" 2 )} 
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 135337915.292479 -snap {("G2" 1)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 149719873.593315 -snap {("G2" 1)}
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 53471383.426184 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 16594567.270195 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 44989715.710306 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 116161970.891365 -snap {("G3" 2)}
wvScrollDown -win $_nWave2 0
srcSignalViewSelect "cic_filter_tb.u_cic_filter.section_out1\[34:0\]"
srcSignalViewSelect "cic_filter_tb.u_cic_filter.dat_out\[34:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvDigitalToAnalog -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 3 )} 
wvDigitalToAnalog -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 3 )} 
wvSelectSignal -win $_nWave2 {( "G3" 2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 3)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSelectSignal -win $_nWave2 {( "G3" 2 )} 
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvDigitalToAnalog -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvDigitalToAnalog -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 11
wvScrollUp -win $_nWave2 1
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 57527833.203343 -snap {("G3" 3)}
wvZoom -win $_nWave2 22494857.855153 70803487.019499
wvZoom -win $_nWave2 27096961.246294 32748667.165242
wvZoom -win $_nWave2 28038387.469001 28498080.540960
wvZoom -win $_nWave2 28117265.166027 28127509.022784
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 83874393.543108 -snap {("G3" 4)}
wvSetCursor -win $_nWave2 83885716.000938 -snap {("G3" 4)}
wvSetCursor -win $_nWave2 83894116.534167 -snap {("G3" 4)}
wvSetCursor -win $_nWave2 83906169.473148 -snap {("G3" 4)}
wvSetCursor -win $_nWave2 83916761.449828 -snap {("G3" 4)}
wvSetCursor -win $_nWave2 83926257.704782 -snap {("G3" 4)}
wvSetCursor -win $_nWave2 83937945.403188 -snap {("G3" 4)}
wvSetCursor -win $_nWave2 83950363.582744 -snap {("G3" 4)}
wvSetCursor -win $_nWave2 83965703.686901 -snap {("G3" 4)}
wvSetCursor -win $_nWave2 83974834.701280 -snap {("G3" 4)}
wvSetCursor -win $_nWave2 83994557.692339 -snap {("G3" 4)}
wvSetCursor -win $_nWave2 84004419.187869 -snap {("G3" 4)}
wvSetCursor -win $_nWave2 84016472.126850 -snap {("G3" 4)}
wvSetCursor -win $_nWave2 84025237.900654 -snap {("G3" 4)}
wvSetCursor -win $_nWave2 84045326.132288 -snap {("G3" 4)}
wvSetCursor -win $_nWave2 84055918.108968 -snap {("G3" 4)}
wvSetCursor -win $_nWave2 84057379.071269 -snap {("G3" 4)}
wvSetCursor -win $_nWave2 84057379.071269 -snap {("G3" 4)}
wvSetCursor -win $_nWave2 84057013.830694 -snap {("G3" 4)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
debExit
