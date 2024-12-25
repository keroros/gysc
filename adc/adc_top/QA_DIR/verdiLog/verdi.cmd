simSetSimulator "-vcssv" -exec \
           "/home/qidc/Nutstore/Project/gysc/adc/adc_top/QA_DIR/simv" -args
debImport "-dbdir" \
          "/home/qidc/Nutstore/Project/gysc/adc/adc_top/QA_DIR/simv.daidir"
debLoadSimResult /home/qidc/Nutstore/Project/gysc/adc/adc_top/QA_DIR/rtl.fsdb
wvCreateWindow
wvRestoreSignal -win $_nWave2 "signal.rc" -overWriteAutoAlias on -appendSignals \
           on
srcHBSelect "adc_top_tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "adc_top_tb" -delim "."
srcHBSelect "adc_top_tb" -win $_nTrace1
srcHBSelect "adc_top_tb.u_adc_top" -win $_nTrace1
srcSetScope -win $_nTrace1 "adc_top_tb.u_adc_top" -delim "."
srcHBSelect "adc_top_tb.u_adc_top" -win $_nTrace1
srcHBSelect "adc_top_tb.u_adc_top.u_hb1_filter" -win $_nTrace1
srcSetScope -win $_nTrace1 "adc_top_tb.u_adc_top.u_hb1_filter" -delim "."
srcHBSelect "adc_top_tb.u_adc_top.u_hb1_filter" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat2\[2\]" -line 93 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "csd_o" -line 98 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat2\[1\]" -line 92 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvSelectSignal -win $_nWave2 {( "G1" 17 18 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
wvSelectSignal -win $_nWave2 {( "G1" 16 )} 
wvSelectSignal -win $_nWave2 {( "G1" 16 17 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 0)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat2\[0\]" -line 91 -pos 1 -win $_nTrace1
srcSelect -signal "dat2\[1\]" -line 92 -pos 1 -win $_nTrace1
srcSelect -signal "dat2\[2\]" -line 93 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "csd_o\[0\]" -line 102 -pos 1 -win $_nTrace1
srcSelect -signal "csd_o\[1\]" -line 103 -pos 1 -win $_nTrace1
srcSelect -signal "csd_o\[2\]" -line 104 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 6)}
wvSetPosition -win $_nWave2 {("G3" 3)}
wvSelectSignal -win $_nWave2 {( "G3" 3 )} 
wvSelectSignal -win $_nWave2 {( "G3" 1 3 )} 
wvSelectSignal -win $_nWave2 {( "G3" 1 2 3 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 3)}
wvSetPosition -win $_nWave2 {("G3" 0)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "x\[2\]" -line 100 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat2\[0\]" -line 91 -pos 1 -win $_nTrace1
srcSelect -signal "csd_o\[0\]" -line 102 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat2\[1\]" -line 92 -pos 1 -win $_nTrace1
srcSelect -signal "csd_o\[1\]" -line 103 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat2\[2\]" -line 93 -pos 1 -win $_nTrace1
srcSelect -signal "csd_o\[2\]" -line 104 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvSelectSignal -win $_nWave2 {( "G3" 1 2 3 4 5 6 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G3" 0)}
debExit
