simSetSimulator "-vcssv" -exec \
           "/home/qidc/Nutstore/Project/gysc/adc/adc_top/QA_DIR/simv" -args
debImport "-dbdir" \
          "/home/qidc/Nutstore/Project/gysc/adc/adc_top/QA_DIR/simv.daidir"
debLoadSimResult /home/qidc/Nutstore/Project/gysc/adc/adc_top/QA_DIR/rtl.fsdb
wvCreateWindow
wvRestoreSignal -win $_nWave2 "signal.rc" -overWriteAutoAlias on -appendSignals \
           on
srcSignalView -on
srcHBSelect "adc_top_tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "adc_top_tb" -delim "."
srcHBSelect "adc_top_tb" -win $_nTrace1
srcHBSelect "adc_top_tb.u_adc_top" -win $_nTrace1
srcSetScope -win $_nTrace1 "adc_top_tb.u_adc_top" -delim "."
srcHBSelect "adc_top_tb.u_adc_top" -win $_nTrace1
srcSignalViewSelect "adc_top_tb.u_adc_top.clk"
srcSignalViewSelect "adc_top_tb.u_adc_top.clk" "adc_top_tb.u_adc_top.rstn"
srcSignalViewSelect "adc_top_tb.u_adc_top.clk" "adc_top_tb.u_adc_top.rstn" \
           "adc_top_tb.u_adc_top.dat_in\[4:0\]"
srcSignalViewSelect "adc_top_tb.u_adc_top.clk" "adc_top_tb.u_adc_top.rstn" \
           "adc_top_tb.u_adc_top.dat_in\[4:0\]" \
           "adc_top_tb.u_adc_top.clk_vld_out"
srcSignalViewSelect "adc_top_tb.u_adc_top.clk" "adc_top_tb.u_adc_top.rstn" \
           "adc_top_tb.u_adc_top.dat_in\[4:0\]" \
           "adc_top_tb.u_adc_top.clk_vld_out" \
           "adc_top_tb.u_adc_top.dat_out\[34:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
srcHBSelect "adc_top_tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "adc_top_tb" -delim "."
srcHBSelect "adc_top_tb" -win $_nTrace1
srcSignalViewSelect "adc_top_tb.dat_in\[4:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat_in" -line 34 -pos 1 -win $_nTrace1
srcAction -pos 33 11 4 -win $_nTrace1 -name "dat_in" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat_in" -line 34 -pos 1 -win $_nTrace1
srcAction -pos 33 11 1 -win $_nTrace1 -name "dat_in" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat_in" -line 34 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcAction -pos 32 1 20 -win $_nTrace1 -name "// cic滤波器输入输出" \
          -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat_in" -line 34 -pos 1 -win $_nTrace1
srcAction -pos 33 11 2 -win $_nTrace1 -name "dat_in" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat_in" -line 34 -pos 1 -win $_nTrace1
verdiSetFont -monoFont "Courier" -monoFontSize "14"
simSetSvtbMode off
verdiSetFont -font "Bitstream Vera Sans" -size "16"
debReload
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
srcHBSelect "adc_top_tb.u_adc_top" -win $_nTrace1
srcHBSelect "adc_top_tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "adc_top_tb" -delim "."
srcHBSelect "adc_top_tb" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "adc_top_tb.u_adc_top" -win $_nTrace1
srcSetScope -win $_nTrace1 "adc_top_tb.u_adc_top" -delim "."
srcHBSelect "adc_top_tb.u_adc_top" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat_out" -line 44 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 5)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat_in" -line 43 -pos 2 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat_in" -line 43 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 5)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat_out" -line 44 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat_in" -line 43 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
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
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -inst "u_cic_filter" -line 40 -pos 1 -win $_nTrace1
srcAction -pos 39 3 8 -win $_nTrace1 -name "u_cic_filter" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat_in" -line 30 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat_out" -line 31 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat_in" -line 30 -pos 1 -win $_nTrace1
srcAction -pos 29 11 4 -win $_nTrace1 -name "dat_in" -ctrlKey off
srcHBSelect "adc_top_tb.u_adc_top.u_cic_filter" -win $_nTrace1
srcSetScope -win $_nTrace1 "adc_top_tb.u_adc_top.u_cic_filter" -delim "."
srcHBSelect "adc_top_tb.u_adc_top.u_cic_filter" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat_out" -line 31 -pos 1 -win $_nTrace1
srcAction -pos 30 13 4 -win $_nTrace1 -name "dat_out" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "section_out10" -line 123 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "section_out10" -line 123 -pos 1 -win $_nTrace1
srcAction -pos 122 5 5 -win $_nTrace1 -name "section_out10" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "section_out6" -line 89 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "section_out1" -line 69 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "section_out1" -line 69 -pos 2 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat_in" -line 69 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
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
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "rstn" -line 57 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
debReload
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSelectGroup -win $_nWave2 {G2}
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvScrollUp -win $_nWave2 1
wvSelectAll -win $_nWave2
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 0)}
srcHBSelect "adc_top_tb.u_adc_top" -win $_nTrace1
srcSetScope -win $_nTrace1 "adc_top_tb.u_adc_top" -delim "."
srcHBSelect "adc_top_tb.u_adc_top" -win $_nTrace1
srcSignalViewSelect "adc_top_tb.u_adc_top.clk"
srcSignalViewSelect "adc_top_tb.u_adc_top.clk" "adc_top_tb.u_adc_top.rstn" \
           "adc_top_tb.u_adc_top.dat_in\[4:0\]" \
           "adc_top_tb.u_adc_top.clk_vld_out" \
           "adc_top_tb.u_adc_top.dat_out\[34:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 5 )} 
wvSetRadix -win $_nWave2 -1Com
wvSelectSignal -win $_nWave2 {( "G1" 3 5 )} 
wvSetRadix -win $_nWave2 -format UDec
wvDigitalToAnalog -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk_vld_out" -line 31 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rstn" -line 29 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat_out" -line 32 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat_out" -line 44 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "cic_dat_out" -line 44 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "comp_clk_vld_out" -line 58 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "hb1_clk_vld_out" -line 72 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk_vld_out" -line 82 -pos 2 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 3
wvScrollDown -win $_nWave2 3
wvSelectSignal -win $_nWave2 {( "G1" 10 11 )} 
wvSelectSignal -win $_nWave2 {( "G1" 9 10 11 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSelectGroup -win $_nWave2 {G2}
wvSelectGroup -win $_nWave2 {G2}
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSetPosition -win $_nWave2 {("G2" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSelectGroup -win $_nWave2 {G3}
wvSelectGroup -win $_nWave2 {G2}
wvSelectGroup -win $_nWave2 {G2} {G3}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvMoveSelected -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat_in" -line 30 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "cic_dat_out" -line 44 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "comp_dat_out" -line 59 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "hb1_dat_out" -line 73 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat_out" -line 83 -pos 2 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
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
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
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
wvSelectSignal -win $_nWave2 {( "G2" 3 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 2 3 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 1 2 3 4 )} 
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 4)}
wvSetPosition -win $_nWave2 {("G3" 4)}
wvScrollUp -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvScrollDown -win $_nWave2 3
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectGroup -win $_nWave2 {G2}
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 7)}
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvSelectSignal -win $_nWave2 {( "G3" 1 2 3 4 )} 
wvSetRadix -win $_nWave2 -1Com
wvSelectSignal -win $_nWave2 {( "G3" 1 2 3 4 )} 
wvSetRadix -win $_nWave2 -format UDec
wvDigitalToAnalog -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G3" 4 )} 
wvDigitalToAnalog -win $_nWave2
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
wvDigitalToAnalog -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
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
wvSelectSignal -win $_nWave2 {( "G3" 4 )} 
wvDigitalToAnalog -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 3 )} 
wvDigitalToAnalog -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 4 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "comp_clk_vld_out" -line 49 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat_out" -line 83 -pos 2 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvDigitalToAnalog -win $_nWave2
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G1" 9)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk_vld_out" -line 82 -pos 2 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dat_out" -line 83 -pos 2 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 3)}
wvSetPosition -win $_nWave2 {("G3" 4)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 5)}
wvDigitalToAnalog -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 5)}
wvSetPosition -win $_nWave2 {("G3" 4)}
wvSetPosition -win $_nWave2 {("G3" 3)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetCursor -win $_nWave2 109885785.307235 -snap {("G4" 0)}
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "cic_clk_vld_out" -line 45 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -line 41 -pos 2 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "cic_dat_out" -line 44 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G1" 11)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "cic_clk_vld_out" -line 45 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "comp_clk_vld_out" -line 58 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "hb1_clk_vld_out" -line 72 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk_vld_out" -line 82 -pos 2 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
verdiDockWidgetHide -dock windowDock_nWave_2
srcDeselectAll -win $_nTrace1
verdiWindowBeWindow -win $_OneSearch
viaCloseLogViewer -window "$_OneSearch"
nsMsgSwitchTab -tab cmpl
nsMsgSwitchTab -tab trace
nsMsgSwitchTab -tab search
nsMsgSwitchTab -tab intercon
nsMsgSwitchTab -tab general
verdiDockWidgetSetCurTab -dock widgetDock_<Decl._Tree>
verdiDockWidgetSetCurTab -dock widgetDock_<Inst._Tree>
verdiDockWidgetUndock -dock widgetDock_<Message>
verdiDockWidgetDock -dock widgetDock_<Message>
srcSignalView -off
verdiDockWidgetMaximize -dock widgetDock_<Message>
srcSignalView -on
verdiDockWidgetDisplay -dock widgetDock_<Signal_List>
srcSignalView -off
srcSignalView -on
verdiDockWidgetDisplay -dock widgetDock_<Signal_List>
verdiDockWidgetRestore -dock widgetDock_<Message>
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
verdiDockWidgetSetCurTab -dock widgetDock_<Decl._Tree>
verdiDockWidgetSetCurTab -dock widgetDock_<Inst._Tree>
verdiDockWidgetSetCurTab -dock widgetDock_<Decl._Tree>
verdiDockWidgetSetCurTab -dock widgetDock_<Inst._Tree>
nsMsgSwitchTab -tab cmpl
nsMsgSwitchTab -tab trace
nsMsgSwitchTab -tab search
nsMsgSwitchTab -tab intercon
nsMsgSwitchTab -tab search
nsMsgSwitchTab -tab trace
nsMsgSwitchTab -tab cmpl
nsMsgSwitchTab -tab general
verdiDockWidgetHide -dock widgetDock_<Message>
verdiDockWidgetDisplay -dock widgetDock_WelcomePage
verdiDockWidgetDisplay -dock widgetDock_WelcomePage
verdiDockWidgetHide -dock widgetDock_WelcomePage
verdiHideBanners -win $_Verdi_1 -on
verdiHideBanners -win $_Verdi_1 -off
verdiHideBanners -win $_Verdi_1 -on
verdiHideBanners -win $_Verdi_1 -off
verdiHideBanners -win $_Verdi_1 -on
verdiHideBanners -win $_Verdi_1 -off
verdiHideMenus -win $_Verdi_1 -on
verdiHideMenus -win $_Verdi_1 -off
verdiHideMenus -win $_Verdi_1 -on
verdiHideMenus -win $_Verdi_1 -off
verdiShowWindow -win $_Verdi_1 -switchFS
verdiWindowResize -win $_Verdi_1 "86" "34" "2227" "1251"
verdiShowWindow -win $_Verdi_1 -switchFS
verdiShowWindow -win $_Verdi_1 -switchFS
verdiWindowResize -win $_Verdi_1 "86" "34" "2227" "1250"
verdiShowWindow -win $_Verdi_1 -switchFS
verdiHideMenus -win $_Verdi_1 -off
verdiHideBanners -win $_Verdi_1 -off
verdiWindowWorkMode -win $_Verdi_1 -hardwareDebug
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvSaveSignal -win $_nWave2 \
           "/home/qidc/Nutstore/Project/gysc/adc/adc_top/QA_DIR/signal.rc"
debExit
