simSetSimulator "-vcssv" -exec \
           "/home/qidc/Nutstore/Project/gysc/pi/pi_ctrl_top/QA_DIR/simv" -args
debImport "-dbdir" \
          "/home/qidc/Nutstore/Project/gysc/pi/pi_ctrl_top/QA_DIR/simv.daidir"
debLoadSimResult /home/qidc/Nutstore/Project/gysc/pi/pi_ctrl_top/QA_DIR/rtl.fsdb
wvCreateWindow
wvRestoreSignal -win $_nWave2 "signal.rc" -overWriteAutoAlias on -appendSignals \
           on
srcDeselectAll -win $_nTrace1
srcSelect -signal "ref_i" -line 23 -pos 2 -win $_nTrace1
srcSelect -win $_nTrace1 -range {23 27 5 6 4 1}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "ref_i" -line 23 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "ref_i" -line 23 -pos 2 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "ref_i" -line 23 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("u_pi_ctrl_top" 0)}
wvSetPosition -win $_nWave2 {("u_pi_ctrl_top" 1)}
wvSetPosition -win $_nWave2 {("u_pi_ctrl_top" 2)}
wvSetPosition -win $_nWave2 {("u_pi_ctrl_top" 1)}
wvSetPosition -win $_nWave2 {("u_pi_ctrl_top" 0)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "ref_i" -line 23 -pos 2 -win $_nTrace1
wvSetPosition -win $_nWave2 {("u_pi_ctrl_top" 3)}
wvSetPosition -win $_nWave2 {("u_pi_ctrl_top" 2)}
wvSetPosition -win $_nWave2 {("u_pi_ctrl_top" 1)}
wvSetPosition -win $_nWave2 {("u_pi_ctrl_top" 2)}
wvSetPosition -win $_nWave2 {("u_pi_ctrl_top" 3)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvAddSignal -win $_nWave2 "/pi_ctrl_top_tb/ref_i\[31:0\]"
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G2" 0)}
verdiDockWidgetMaximize -dock windowDock_nWave_2
wvZoom -win $_nWave2 430178.974930 495579.710306
wvZoom -win $_nWave2 458088.146684 467634.103602
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
wvZoomOut -win $_nWave2
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
wvZoomOut -win $_nWave2
verdiWindowResize -win $_Verdi_1 "70" "27" "2227" "1045"
verdiDockWidgetHide -dock windowDock_nWave_2
viaOneSearchChangeDomain -domainName {ALL} -window "$_OneSearch"
verdiDockToContainer -win $_OneSearch -newContainer
verdiWindowResize -win $_dockContainer_1 "60" "20" "2490" "214"
verdiWindowResize -win $_dockContainer_1 "60" "20" "2490" "243"
verdiWindowResize -win $_dockContainer_1 "60" "20" "2490" "200"
verdiDockWidgetHide -dock windowDock_OneSearch
debExit
