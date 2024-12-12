simSetSimulator "-vcssv" -exec \
           "/home/qidc/Nutstore/Project/gysc/adc/cic_filter/QA_DIR/simv" -args
debImport "-dbdir" \
          "/home/qidc/Nutstore/Project/gysc/adc/cic_filter/QA_DIR/simv.daidir"
debLoadSimResult /home/qidc/Nutstore/Project/gysc/adc/cic_filter/QA_DIR/rtl.fsdb
wvCreateWindow
wvRestoreSignal -win $_nWave2 "signal.rc" -overWriteAutoAlias on -appendSignals \
           on
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clka" -line 25 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "ena" -line 26 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "addra" -line 28 -pos 1 -win $_nTrace1
srcHBSelect "cic_filter_tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "cic_filter_tb" -delim "."
srcHBSelect "cic_filter_tb" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -line 30 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat_in" -line 32 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat_out" -line 33 -pos 1 -win $_nTrace1
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
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 1)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk_vld_out" -line 41 -pos 2 -win $_nTrace1
srcSelect -win $_nTrace1 -range {41 72 7 1 6 1}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk_vld_out" -line 41 -pos 2 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvAddSignal -win $_nWave2 "/cic_filter_tb/clk_vld_out"
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetCursor -win $_nWave2 132399754.996775 -snap {("G3" 0)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 132505502.262727 -snap {("G1" 1)}
wvZoomOut -win $_nWave2
wvRemoveGrid -win $_nWave2
wvGridSetStartNum -win $_nWave2 1
wvDisplayGridCount -win $_nWave2
wvGridSetLockCount -win $_nWave2 -off
wvGridRisingEdge -win $_nWave2
wvRemoveGrid -win $_nWave2
wvGridSetStartNum -win $_nWave2 1
wvDisplayGridCount -win $_nWave2
wvGridSetLockCount -win $_nWave2 -off
wvGridRisingEdge -win $_nWave2
wvSetCursor -win $_nWave2 133052535.462757 -snap {("G1" 0)}
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSetCursor -win $_nWave2 132786870.669277 -snap {("G3" 0)}
wvRemoveGrid -win $_nWave2
wvGridSetStartNum -win $_nWave2 1
wvDisplayGridCount -win $_nWave2
wvGridSetLockCount -win $_nWave2 -off
wvGridRisingEdge -win $_nWave2
wvRemoveGrid -win $_nWave2
wvGridSetStartNum -win $_nWave2 1
wvDisplayGridCount -win $_nWave2
wvGridSetLockCount -win $_nWave2 -off
wvGridRisingEdge -win $_nWave2
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
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 133810972.127248 -snap {("G2" 0)}
debExit
