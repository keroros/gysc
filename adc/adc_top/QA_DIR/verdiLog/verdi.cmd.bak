simSetSimulator "-vcssv" -exec \
           "/home/qidc/Nutstore/Project/gysc/adc/adc_top/QA_DIR/simv" -args
debImport "-dbdir" \
          "/home/qidc/Nutstore/Project/gysc/adc/adc_top/QA_DIR/simv.daidir"
debLoadSimResult /home/qidc/Nutstore/Project/gysc/adc/adc_top/QA_DIR/rtl.fsdb
wvCreateWindow
wvRestoreSignal -win $_nWave2 "signal.rc" -overWriteAutoAlias on -appendSignals \
           on
wvSetCursor -win $_nWave2 203512385.951735 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 251834961.611508 -snap {("G1" 8)}
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 5 )} 
wvSelectSignal -win $_nWave2 {( "G3" 4 )} 
wvSetOptions -win $_nWave2 -hierName on
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetOptions -win $_nWave2 -hierName off
srcHBSelect "adc_top_tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "adc_top_tb" -delim "."
srcHBSelect "adc_top_tb" -win $_nTrace1
srcHBSelect "adc_top_tb.u_adc_top" -win $_nTrace1
srcSetScope -win $_nTrace1 "adc_top_tb.u_adc_top" -delim "."
srcHBSelect "adc_top_tb.u_adc_top" -win $_nTrace1
srcHBSelect "adc_top_tb.u_adc_top.u_hb1_filter" -win $_nTrace1
srcSetScope -win $_nTrace1 "adc_top_tb.u_adc_top.u_hb1_filter" -delim "."
srcHBSelect "adc_top_tb.u_adc_top.u_hb1_filter" -win $_nTrace1
srcSelect -signal "x\[0\]" -line 98 -pos 1 -win $_nTrace1
wvScrollDown -win $_nWave2 11
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSelectGroup -win $_nWave2 {G3}
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSelectGroup -win $_nWave2 {G3}
wvSelectGroup -win $_nWave2 {G4}
wvSelectGroup -win $_nWave2 {G4}
wvSelectGroup -win $_nWave2 {G4}
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 3)}
wvSetPosition -win $_nWave2 {("G3" 4)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 1)}
wvSetPosition -win $_nWave2 {("G4" 1)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G3" 4)}
wvSetPosition -win $_nWave2 {("G3" 3)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "x\[0\]" -line 98 -pos 1 -win $_nTrace1
srcSelect -signal "csd_o\[0\]" -line 102 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 3)}
wvSetPosition -win $_nWave2 {("G3" 4)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 2)}
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "x\[1\]" -line 99 -pos 1 -win $_nTrace1
srcSelect -signal "csd_o\[1\]" -line 103 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "x\[2\]" -line 100 -pos 1 -win $_nTrace1
srcSelect -signal "csd_o\[2\]" -line 104 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G4" 1 )} 
wvSelectSignal -win $_nWave2 {( "G4" 1 2 3 4 5 6 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 0)}
srcDeselectAll -win $_nTrace1
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
srcDeselectAll -win $_nTrace1
debReload
srcHBSelect "adc_top_tb.u_adc_top.u_hb2_filter" -win $_nTrace1
srcSetScope -win $_nTrace1 "adc_top_tb.u_adc_top.u_hb2_filter" -delim "."
srcHBSelect "adc_top_tb.u_adc_top.u_hb2_filter" -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
debReload
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G4" 1 )} 
wvSelectSignal -win $_nWave2 {( "G4" 1 2 )} 
wvSelectSignal -win $_nWave2 {( "G4" 1 2 3 )} 
wvScrollDown -win $_nWave2 0
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G5" 0)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat2\[0\]" -line 94 -pos 1 -win $_nTrace1
srcSelect -signal "o\[0\]" -line 139 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat2\[1\]" -line 95 -pos 1 -win $_nTrace1
srcSelect -signal "o\[1\]" -line 140 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat2\[2\]" -line 96 -pos 1 -win $_nTrace1
srcSelect -signal "o\[1\]" -line 140 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "o\[2\]" -line 141 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat2\[9\]" -line 103 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat2\[10\]" -line 104 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "o\[10\]" -line 149 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat2\[10\]" -line 104 -pos 1 -win $_nTrace1
srcSelect -signal "o\[10\]" -line 149 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat2\[15\]" -line 109 -pos 1 -win $_nTrace1
srcSelect -signal "o\[15\]" -line 154 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat2\[18\]" -line 112 -pos 1 -win $_nTrace1
srcSelect -signal "o\[18\]" -line 157 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat2\[2\]" -line 96 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetPosition -win $_nWave2 {("G5" 11)}
wvSetPosition -win $_nWave2 {("G5" 10)}
wvSetPosition -win $_nWave2 {("G5" 9)}
wvSetPosition -win $_nWave2 {("G5" 10)}
wvSetPosition -win $_nWave2 {("G5" 11)}
wvSetPosition -win $_nWave2 {("G5" 12)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G5" 12)}
wvSetPosition -win $_nWave2 {("G5" 11)}
wvSetPosition -win $_nWave2 {("G5" 10)}
wvSetPosition -win $_nWave2 {("G5" 9)}
wvSetPosition -win $_nWave2 {("G5" 8)}
wvSetPosition -win $_nWave2 {("G5" 7)}
wvSetPosition -win $_nWave2 {("G5" 6)}
wvSetPosition -win $_nWave2 {("G5" 5)}
wvSetPosition -win $_nWave2 {("G5" 4)}
wvSetPosition -win $_nWave2 {("G5" 3)}
wvSetPosition -win $_nWave2 {("G5" 4)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G5" 4)}
wvSetPosition -win $_nWave2 {("G5" 5)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "x\[1\]" -line 119 -pos 1 -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G5" 3 )} 
wvSelectSignal -win $_nWave2 {( "G5" 4 )} 
wvSelectSignal -win $_nWave2 {( "G5" 4 )} 
wvSelectSignal -win $_nWave2 {( "G5" 6 )} 
wvSelectSignal -win $_nWave2 {( "G5" 3 )} 
wvSelectSignal -win $_nWave2 {( "G5" 5 )} 
wvSelectSignal -win $_nWave2 {( "G5" 5 6 7 8 9 10 11 12 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSetPosition -win $_nWave2 {("G5" 4)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "x\[1\]" -line 119 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "o\[1\]" -line 140 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 142962278.770769 -snap {("G1" 9)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcSelect -signal "h1" -line 141 -pos 1 -win $_nTrace1
srcSelect -win $_nTrace1 -range {141 144 10 10 2 2}
srcDeselectAll -win $_nTrace1
srcSelect -signal "h1" -line 141 -pos 1 -win $_nTrace1
srcSelect -signal "h2" -line 142 -pos 1 -win $_nTrace1
srcSelect -signal "h3" -line 143 -pos 1 -win $_nTrace1
srcSelect -signal "h4" -line 144 -pos 1 -win $_nTrace1
srcSelect -signal "h5" -line 145 -pos 1 -win $_nTrace1
srcSelect -signal "test" -line 146 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G5" 1 )} 
wvSelectSignal -win $_nWave2 {( "G5" 1 2 3 4 5 6 7 8 9 10 11 12 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G5" 0)}
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat2\[0\]" -line 94 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
debReload
debReload
wvSetCursor -win $_nWave2 143674151.862596 -snap {("G1" 9)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "x\[0\]" -line 118 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat2\[0\]" -line 94 -pos 1 -win $_nTrace1
srcSelect -signal "o\[0\]" -line 152 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat2\[1\]" -line 95 -pos 1 -win $_nTrace1
srcSelect -signal "o\[1\]" -line 153 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat2\[2\]" -line 96 -pos 1 -win $_nTrace1
srcSelect -signal "o\[2\]" -line 154 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat2\[5\]" -line 99 -pos 1 -win $_nTrace1
srcSelect -signal "o\[5\]" -line 157 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat2\[10\]" -line 104 -pos 1 -win $_nTrace1
srcSelect -signal "o\[10\]" -line 162 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat2\[16\]" -line 110 -pos 1 -win $_nTrace1
srcSelect -signal "o\[15\]" -line 167 -pos 1 -win $_nTrace1
srcSelect -signal "o\[16\]" -line 168 -pos 1 -win $_nTrace1
srcSelect -toggle -signal "o\[15\]" -line 167 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "x\[17\]" -line 135 -pos 1 -win $_nTrace1
srcSelect -signal "o\[17\]" -line 169 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "x\[18\]" -line 136 -pos 1 -win $_nTrace1
srcSelect -signal "o\[18\]" -line 170 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "x\[19\]" -line 137 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat2\[18\]" -line 112 -pos 1 -win $_nTrace1
srcSelect -signal "o\[18\]" -line 170 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G5" 13 )} 
wvSelectSignal -win $_nWave2 {( "G5" 13 14 15 16 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G5" 14)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat2\[16\]" -line 110 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat2\[17\]" -line 111 -pos 1 -win $_nTrace1
srcSelect -signal "o\[17\]" -line 169 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat2\[19\]" -line 113 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcSelect -signal "o\[19\]" -line 158 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvScrollUp -win $_nWave2 10
wvScrollUp -win $_nWave2 3
wvSelectSignal -win $_nWave2 {( "G5" 1 )} 
wvScrollDown -win $_nWave2 14
wvSelectSignal -win $_nWave2 {( "G5" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G5" 0)}
srcFindScope -open -win $_nTrace1
srcFindScope -selectscope 1
wvSetCursor -win $_nWave2 143515423.402932 -snap {("G5" 0)}
wvSaveSignal -win $_nWave2 \
           "/home/qidc/Nutstore/Project/gysc/adc/adc_top/QA_DIR/signal.rc"
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
debReload
debReload
debReload
debReload
srcHBSelect "adc_top_tb.u_adc_top.u_hb1_filter" -win $_nTrace1
srcSetScope -win $_nTrace1 "adc_top_tb.u_adc_top.u_hb1_filter" -delim "."
srcHBSelect "adc_top_tb.u_adc_top.u_hb1_filter" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat2\[0\]" -line 91 -pos 1 -win $_nTrace1
srcSelect -signal "o\[0\]" -line 103 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat2\[0\]" -line 91 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat2\[1\]" -line 92 -pos 1 -win $_nTrace1
srcSelect -signal "o\[1\]" -line 104 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat2\[2\]" -line 93 -pos 1 -win $_nTrace1
srcSelect -signal "o\[2\]" -line 105 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 6
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
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 325217490.418037 -snap {("G1" 8)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 0
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 358174520.995773 -snap {("G6" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 315579735.271143 -snap {("G5" 0)}
wvSetCursor -win $_nWave2 315647074.617667 -snap {("G5" 1)}
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 316091514.304727 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 315564824.415841 -snap {("G5" 1)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcSelect -signal "x\[1\]" -line 104 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcAction -pos 91 20 8 -win $_nTrace1 -name "31'd316817548" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcAction -pos 91 20 6 -win $_nTrace1 -name "31'd316817548" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat2\[0\]" -line 91 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "x\[0\]" -line 98 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat0_r\[0\]" -line 91 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat0_r\[1\]" -line 92 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat0_r\[2\]" -line 92 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G5" 7 )} 
wvCreateWindow
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
verdiDockWidgetSetCurTab -dock windowDock_nWave_3
wvCloseWindow -win $_nWave3
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat0_r\[1\]" -line 92 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat0_r\[2\]" -line 92 -pos 1 -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G5" 9 )} 
wvSelectSignal -win $_nWave2 {( "G5" 9 10 )} 
wvVerilogExpression -win $_nWave2 "dat0_plus_dat1\[34:0\]" \
           "\"/adc_top_tb/u_adc_top/u_hb1_filter/dat0_r\[1\]\[34:0\]\"+" \
           "\"/adc_top_tb/u_adc_top/u_hb1_filter/dat0_r\[2\]\[34:0\]\""
wvSetPosition -win $_nWave2 {("G5" 10)}
wvSetPosition -win $_nWave2 {("G5" 10)}
wvSetPosition -win $_nWave2 {("G5" 11)}
wvSelectSignal -win $_nWave2 {( "G5" 8 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSetPosition -win $_nWave2 {("G5" 10)}
wvSelectSignal -win $_nWave2 {( "G5" 1 )} 
wvSelectSignal -win $_nWave2 {( "G5" 2 )} 
wvSelectSignal -win $_nWave2 {( "G5" 3 )} 
wvSelectSignal -win $_nWave2 {( "G5" 4 )} 
wvSelectSignal -win $_nWave2 {( "G5" 5 )} 
wvSelectSignal -win $_nWave2 {( "G5" 6 )} 
wvSelectSignal -win $_nWave2 {( "G5" 5 )} 
wvSelectSignal -win $_nWave2 {( "G5" 6 )} 
wvSelectSignal -win $_nWave2 {( "G5" 7 )} 
wvSelectSignal -win $_nWave2 {( "G5" 7 8 )} 
wvSelectSignal -win $_nWave2 {( "G5" 7 8 9 )} 
wvSelectSignal -win $_nWave2 {( "G5" 7 8 9 10 )} 
wvSetPosition -win $_nWave2 {("G5" 7)}
wvSetPosition -win $_nWave2 {("G5" 8)}
wvSetPosition -win $_nWave2 {("G5" 9)}
wvSetPosition -win $_nWave2 {("G5" 10)}
wvSetPosition -win $_nWave2 {("G6" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G6" 4)}
wvSetPosition -win $_nWave2 {("G6" 4)}
wvSelectGroup -win $_nWave2 {G7}
wvSelectSignal -win $_nWave2 {( "G6" 4 )} 
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {91 91 21 22 1 1}
srcDeselectAll -win $_nTrace1
srcAction -pos 90 20 5 -win $_nTrace1 -name "31'd54357298" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {91 91 21 22 1 1} -backward
wvVerilogExpression -win $_nWave2 "logical_expression_2\[34:0\]" \
           "\"/dat0_plus_dat1\[34:0\]\"*31'd54357298"
wvSetPosition -win $_nWave2 {("G6" 4)}
wvSetPosition -win $_nWave2 {("G6" 4)}
wvSetPosition -win $_nWave2 {("G6" 5)}
wvSelectSignal -win $_nWave2 {( "G5" 3 )} 
wvSelectSignal -win $_nWave2 {( "G5" 3 4 )} 
wvAddSignal -win $_nWave2 "/adc_top_tb/u_adc_top/u_hb1_filter/dat2\[1\]\[64:0\]" \
           "/adc_top_tb/u_adc_top/u_hb1_filter/o\[1\]\[64:0\]"
wvSetPosition -win $_nWave2 {("G6" 5)}
wvSetPosition -win $_nWave2 {("G6" 7)}
wvSelectSignal -win $_nWave2 {( "G6" 5 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G7" 0)}
wvSetPosition -win $_nWave2 {("G6" 6)}
srcDeselectAll -win $_nTrace1
debReload
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
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "x\[1\]" -line 99 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetPosition -win $_nWave2 {("G7" 0)}
wvSetPosition -win $_nWave2 {("G6" 5)}
wvSetPosition -win $_nWave2 {("G6" 4)}
wvSetPosition -win $_nWave2 {("G6" 3)}
wvSetPosition -win $_nWave2 {("G6" 2)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G6" 2)}
wvSetPosition -win $_nWave2 {("G6" 3)}
wvSelectSignal -win $_nWave2 {( "G5" 1 )} 
wvSelectSignal -win $_nWave2 {( "G5" 2 )} 
wvSelectSignal -win $_nWave2 {( "G5" 1 )} 
wvSelectSignal -win $_nWave2 {( "G5" 3 )} 
wvSelectSignal -win $_nWave2 {( "G5" 4 )} 
wvSelectSignal -win $_nWave2 {( "G5" 3 )} 
wvSelectSignal -win $_nWave2 {( "G6" 3 )} 
wvSetPosition -win $_nWave2 {("G6" 4)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G6" 4)}
wvSelectSignal -win $_nWave2 {( "G5" 4 )} 
wvSelectSignal -win $_nWave2 {( "G5" 3 )} 
wvSelectSignal -win $_nWave2 {( "G5" 3 )} {( "G6" 3 )} 
wvSelectSignal -win $_nWave2 {( "G6" 1 )} 
wvSelectSignal -win $_nWave2 {( "G6" 1 2 )} 
wvSelectSignal -win $_nWave2 {( "G5" 3 )} 
wvSelectSignal -win $_nWave2 {( "G5" 3 )} {( "G6" 3 )} 
debReload
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 319879211.821865 -snap {("G5" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 6
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G5" 1 )} 
wvSelectSignal -win $_nWave2 {( "G5" 1 2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G6" 6)}
wvSetPosition -win $_nWave2 {("G6" 4)}
wvSelectSignal -win $_nWave2 {( "G5" 1 )} 
wvSelectSignal -win $_nWave2 {( "G5" 1 2 3 4 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G8" 0)}
wvSetPosition -win $_nWave2 {("G6" 4)}
wvSelectSignal -win $_nWave2 {( "G6" 5 )} 
wvSelectSignal -win $_nWave2 {( "G6" 5 6 )} 
wvSetPosition -win $_nWave2 {("G6" 5)}
wvSetPosition -win $_nWave2 {("G6" 4)}
wvSetPosition -win $_nWave2 {("G6" 3)}
wvSetPosition -win $_nWave2 {("G6" 2)}
wvSetPosition -win $_nWave2 {("G6" 1)}
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSetPosition -win $_nWave2 {("G5" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G5" 2)}
wvSelectSignal -win $_nWave2 {( "G5" 2 )} 
wvSelectGroup -win $_nWave2 {G7}
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
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {105 106 2 1 1 1} -backward
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G6" 4 )} 
wvSelectSignal -win $_nWave2 {( "G6" 3 4 )} 
wvSelectSignal -win $_nWave2 {( "G6" 2 3 4 )} 
wvSelectSignal -win $_nWave2 {( "G6" 1 2 3 4 )} 
wvSetRadix -win $_nWave2 -1Com
wvSetRadix -win $_nWave2 -Unsigned
wvSetRadix -win $_nWave2 -1Com
wvSelectSignal -win $_nWave2 {( "G5" 1 )} 
wvSelectSignal -win $_nWave2 {( "G5" 1 2 )} 
wvSetRadix -win $_nWave2 -1Com
wvSelectGroup -win $_nWave2 {G8}
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
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {111 112 2 1 1 1}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 318490578.297469 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 315585366.490283 -snap {("G1" 10)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 318798415.310151 -snap {("G1" 10)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G6" 1 )} 
wvSelectSignal -win $_nWave2 {( "G6" 1 2 3 4 )} 
wvSetRadix -win $_nWave2 -Unsigned
wvSelectSignal -win $_nWave2 {( "G5" 1 )} 
wvSelectSignal -win $_nWave2 {( "G5" 1 2 )} 
wvSetRadix -win $_nWave2 -Unsigned
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
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
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
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G5" 2 )} 
wvSelectSignal -win $_nWave2 {( "G5" 1 )} 
wvSelectSignal -win $_nWave2 {( "G5" 1 2 )} {( "G6" 1 2 3 4 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G7" 0)}
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSelectGroup -win $_nWave2 {G8}
wvSelectGroup -win $_nWave2 {G7} {G8}
wvSelectGroup -win $_nWave2 {G6} {G7} {G8}
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSelectGroup -win $_nWave2 {G4}
wvSelectGroup -win $_nWave2 {G5}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvMoveSelected -win $_nWave2
wvSelectGroup -win $_nWave2 {G5}
debReload
debReload
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 439634351.291686 -snap {("G1" 8)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "x\[1\]\[34\]" -line 112 -pos 9 -win $_nTrace1
srcHBSelect "adc_top_tb.u_adc_top.u_hb2_filter" -win $_nTrace1
srcSetScope -win $_nTrace1 "adc_top_tb.u_adc_top.u_hb2_filter" -delim "."
srcHBSelect "adc_top_tb.u_adc_top.u_hb2_filter" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 339519598.027243 -snap {("G1" 8)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 159188675.998121 -snap {("G5" 0)}
wvSaveSignal -win $_nWave2 \
           "/home/qidc/Nutstore/Project/gysc/adc/adc_top/QA_DIR/signal.rc"
debExit
