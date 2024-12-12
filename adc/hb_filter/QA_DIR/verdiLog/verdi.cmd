simSetSimulator "-vcssv" -exec \
           "/home/qidc/Nutstore/Project/gysc/adc/hb_filter/QA_DIR/simv" -args
debImport "-dbdir" \
          "/home/qidc/Nutstore/Project/gysc/adc/hb_filter/QA_DIR/simv.daidir"
debLoadSimResult /home/qidc/Nutstore/Project/gysc/adc/hb_filter/QA_DIR/rtl.fsdb
wvCreateWindow
wvRestoreSignal -win $_nWave2 "signal.rc" -overWriteAutoAlias on -appendSignals \
           on
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "hb_filter_tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "hb_filter_tb" -delim "."
srcHBSelect "hb_filter_tb" -win $_nTrace1
srcHBSelect "hb_filter_tb.u_hb2_filter" -win $_nTrace1
srcSetScope -win $_nTrace1 "hb_filter_tb.u_hb2_filter" -delim "."
srcHBSelect "hb_filter_tb.u_hb2_filter" -win $_nTrace1
srcHBSelect "hb_filter_tb.u_hb1_filter" -win $_nTrace1
srcSetScope -win $_nTrace1 "hb_filter_tb.u_hb1_filter" -delim "."
srcHBSelect "hb_filter_tb.u_hb1_filter" -win $_nTrace1
srcSignalView -on
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
verdiSetFont -monoFont "Courier" -monoFontSize "14"
simSetSvtbMode off
verdiSetFont -monoFont "Courier" -monoFontSize "24"
verdiSetFont -monoFont "Courier" -monoFontSize "14"
verdiSetFont -font "Bitstream Vera Sans" -size "16"
srcSetPreference -iconSize large
srcSetPreference -iconSize small
srcSetPreference -iconSize medium
srcSetPreference -iconSize large
srcSetPreference -iconSize medium
verdiSetFont -font "Bitstream Vera Sans" -size "14"
verdiSetFont -font "Bitstream Vera Sans" -size "16"
srcSignalViewSelect "hb_filter_tb.u_hb1_filter.clk"
srcSignalViewSelect "hb_filter_tb.u_hb1_filter.clk" \
           "hb_filter_tb.u_hb1_filter.rstn"
srcSignalViewSelect "hb_filter_tb.u_hb1_filter.clk" \
           "hb_filter_tb.u_hb1_filter.rstn" \
           "hb_filter_tb.u_hb1_filter.clk_vld_in"
srcSignalViewSelect "hb_filter_tb.u_hb1_filter.clk" \
           "hb_filter_tb.u_hb1_filter.rstn" \
           "hb_filter_tb.u_hb1_filter.clk_vld_in" \
           "hb_filter_tb.u_hb1_filter.dat_in\[34:0\]"
srcSignalViewSelect "hb_filter_tb.u_hb1_filter.clk" \
           "hb_filter_tb.u_hb1_filter.rstn" \
           "hb_filter_tb.u_hb1_filter.clk_vld_in" \
           "hb_filter_tb.u_hb1_filter.dat_in\[34:0\]" \
           "hb_filter_tb.u_hb1_filter.clk_vld_out"
srcSignalViewSelect "hb_filter_tb.u_hb1_filter.clk" \
           "hb_filter_tb.u_hb1_filter.rstn" \
           "hb_filter_tb.u_hb1_filter.clk_vld_in" \
           "hb_filter_tb.u_hb1_filter.dat_in\[34:0\]" \
           "hb_filter_tb.u_hb1_filter.clk_vld_out" \
           "hb_filter_tb.u_hb1_filter.dat_out\[34:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvSetRadix -win $_nWave2 -1Com
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 )} 
wvSetRadix -win $_nWave2 -format UDec
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 28699382.173398 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 12261541.371866 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 31455924.181058 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 31695623.486072 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 31529677.813370 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 31142471.243733 -snap {("G1" 3)}
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 6 )} 
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
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
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
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {25 37 1 1 1 1} -backward
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
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
wvSaveSignal -win $_nWave2 \
           "/home/qidc/Nutstore/Project/gysc/adc/hb_filter/QA_DIR/signal.rc"
debExit
