simSetSimulator "-vcssv" -exec \
           "/home/qidc/Nutstore/Project/gysc/pi/pi_ctrl_top/QA_DIR/simv" -args
debImport "-dbdir" \
          "/home/qidc/Nutstore/Project/gysc/pi/pi_ctrl_top/QA_DIR/simv.daidir"
debLoadSimResult /home/qidc/Nutstore/Project/gysc/pi/pi_ctrl_top/QA_DIR/rtl.fsdb
wvCreateWindow
wvRestoreSignal -win $_nWave2 "signal.rc" -overWriteAutoAlias on -appendSignals \
           on
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {18 26 5 1 1 1}
srcDeselectAll -win $_nTrace1
debExit
