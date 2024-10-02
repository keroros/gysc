simSetSimulator "-vcssv" -exec \
           "/home/qidc/Nutstore/Project/gysc/pi/pi_ctrl_top/QA_DIR/simv" -args
debImport "-dbdir" \
          "/home/qidc/Nutstore/Project/gysc/pi/pi_ctrl_top/QA_DIR/simv.daidir"
debLoadSimResult /home/qidc/Nutstore/Project/gysc/pi/pi_ctrl_top/QA_DIR/rtl.fsdb
wvCreateWindow
wvRestoreSignal -win $_nWave2 "signal.rc" -overWriteAutoAlias on -appendSignals \
           on
wvSelectSignal -win $_nWave2 {( "u_pi_ctrl_top" 3 )} 
wvSelectGroup -win $_nWave2 {G2}
srcHBDrag -win $_nTrace1
wvSetPosition -win $_nWave2 {("u_pi_ctrl_top" 1)}
wvSetPosition -win $_nWave2 {("u_pi_ctrl_top" 2)}
wvSetPosition -win $_nWave2 {("u_pi_ctrl_top" 3)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("u_pi_ctrl_top" 3)}
wvSetPosition -win $_nWave2 {("u_pi_ctrl_top" 1)}
wvSetPosition -win $_nWave2 {("u_pi_ctrl_top" 0)}
wvSetPosition -win $_nWave2 {("u_pi_ctrl_top" 1)}
wvSetPosition -win $_nWave2 {("u_pi_ctrl_top" 3)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvRenameGroup -win $_nWave2 {G2} {u_pi_ctrl}
wvAddSignal -win $_nWave2 "/pi_ctrl_top_tb/u_pi_ctrl_top/u_pi_ctrl/clk" \
           "/pi_ctrl_top_tb/u_pi_ctrl_top/u_pi_ctrl/rst_n" \
           "/pi_ctrl_top_tb/u_pi_ctrl_top/u_pi_ctrl/ref_i\[31:0\]" \
           "/pi_ctrl_top_tb/u_pi_ctrl_top/u_pi_ctrl/pi_ctrl_i\[31:0\]" \
           "/pi_ctrl_top_tb/u_pi_ctrl_top/u_pi_ctrl/pi_ctrl_o\[31:0\]"
wvSetPosition -win $_nWave2 {("u_pi_ctrl" 0)}
wvSetPosition -win $_nWave2 {("u_pi_ctrl" 5)}
wvSetPosition -win $_nWave2 {("u_pi_ctrl" 5)}
wvSelectSignal -win $_nWave2 {( "u_pi_ctrl" 4 )} 
wvSelectSignal -win $_nWave2 {( "u_pi_ctrl" 3 4 )} 
wvSelectSignal -win $_nWave2 {( "u_pi_ctrl" 3 4 5 )} 
wvDigitalToAnalog -win $_nWave2
debExit
