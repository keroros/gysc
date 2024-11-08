simSetSimulator "-vcssv" -exec \
           "/home/qidc/Nutstore/Project/gysc/pi/pi_ctrl_top/QA_DIR/simv" -args
debImport "-dbdir" \
          "/home/qidc/Nutstore/Project/gysc/pi/pi_ctrl_top/QA_DIR/simv.daidir"
debLoadSimResult /home/qidc/Nutstore/Project/gysc/pi/pi_ctrl_top/QA_DIR/rtl.fsdb
wvCreateWindow
wvRestoreSignal -win $_nWave2 "signal.rc" -overWriteAutoAlias on -appendSignals \
           on
srcHBSelect "pi_ctrl_top_tb.u_pi_ctrl_top" -win $_nTrace1
srcSetScope -win $_nTrace1 "pi_ctrl_top_tb.u_pi_ctrl_top" -delim "."
srcHBSelect "pi_ctrl_top_tb.u_pi_ctrl_top" -win $_nTrace1
srcHBSelect "pi_ctrl_top_tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "pi_ctrl_top_tb" -delim "."
srcHBSelect "pi_ctrl_top_tb" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "pi_ctrl_top_tb.u_pi_ctrl_top" -win $_nTrace1
srcSetScope -win $_nTrace1 "pi_ctrl_top_tb.u_pi_ctrl_top" -delim "."
srcHBSelect "pi_ctrl_top_tb.u_pi_ctrl_top" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "pi_ctrl_top_tb.u_pi_ctrl_top.u_feedback" -win $_nTrace1
srcSetScope -win $_nTrace1 "pi_ctrl_top_tb.u_pi_ctrl_top.u_feedback" -delim "."
srcHBSelect "pi_ctrl_top_tb.u_pi_ctrl_top.u_feedback" -win $_nTrace1
srcHBSelect "pi_ctrl_top_tb.u_pi_ctrl_top.u_pi_ctrl" -win $_nTrace1
srcSetScope -win $_nTrace1 "pi_ctrl_top_tb.u_pi_ctrl_top.u_pi_ctrl" -delim "."
srcHBSelect "pi_ctrl_top_tb.u_pi_ctrl_top.u_pi_ctrl" -win $_nTrace1
verdiSetFont -monoFont "Fixed" -monoFontSize "20"
simSetSvtbMode off
verdiSetFont -monoFont "Courier" -monoFontSize "18"
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {6 7 1 1 12 12}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcInvokeExtEditor -win $_nTrace1
srcInvokeExtEditor -win $_nTrace1
srcSetPreference -setDefaultEditor OtherEditor
srcInvokeExtEditor -win $_nTrace1
srcInvokeExtEditor -win $_nTrace1
srcInvokeExtEditor -win $_nTrace1
srcSetPreference -setDefaultEditor Vi
srcInvokeExtEditor -win $_nTrace1
srcInvokeExtEditor -win $_nTrace1
srcCloseWindow -win $_nTrace4
debExit
