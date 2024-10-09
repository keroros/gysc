simSetSimulator "-vcssv" -exec \
           "/home/qidc/Nutstore/Project/gysc/pi/pi_ctrl_top/QA_DIR/simv" -args
debImport "-dbdir" \
          "/home/qidc/Nutstore/Project/gysc/pi/pi_ctrl_top/QA_DIR/simv.daidir"
debLoadSimResult /home/qidc/Nutstore/Project/gysc/pi/pi_ctrl_top/QA_DIR/rtl.fsdb
wvCreateWindow
wvRestoreSignal -win $_nWave2 "signal.rc" -overWriteAutoAlias on -appendSignals \
           on
debExit
