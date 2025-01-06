simSetSimulator "-vcssv" -exec \
           "/home/qidc/Nutstore/Project/gysc/adc/adc_top/QA_DIR/simv" -args
debImport "-dbdir" \
          "/home/qidc/Nutstore/Project/gysc/adc/adc_top/QA_DIR/simv.daidir"
debLoadSimResult /home/qidc/Nutstore/Project/gysc/adc/adc_top/QA_DIR/rtl.fsdb
wvCreateWindow
wvRestoreSignal -win $_nWave2 "signal.rc" -overWriteAutoAlias on -appendSignals \
           on
wvSelectSignal -win $_nWave2 {( "G3" 5 )} 
wvSelectSignal -win $_nWave2 {( "G3" 4 )} 
wvSelectSignal -win $_nWave2 {( "G3" 4 5 )} 
wvSelectSignal -win $_nWave2 {( "G3" 5 )} 
wvSelectSignal -win $_nWave2 {( "G3" 4 5 )} 
wvVerilogExpression -win $_nWave2 "logical_expression_2\[34:0\]" \
           "\"/adc_top_tb/u_adc_top/hb2_dat_out\[34:0\]\"&" \
           "\"/adc_top_tb/u_adc_top/dat_out\[31:0\]\""
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 11)}
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
wvSelectSignal -win $_nWave2 {( "G3" 5 )} 
wvSelectSignal -win $_nWave2 {( "G3" 4 5 )} 
wvSelectSignal -win $_nWave2 {( "G3" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSelectSignal -win $_nWave2 {( "G3" 5 )} 
debExit
