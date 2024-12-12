simSetSimulator "-vcssv" -exec \
           "/home/qidc/Nutstore/Project/gysc/adc/cic_comp_filter/QA_DIR/simv" \
           -args
debImport "-dbdir" \
          "/home/qidc/Nutstore/Project/gysc/adc/cic_comp_filter/QA_DIR/simv.daidir"
debLoadSimResult \
           /home/qidc/Nutstore/Project/gysc/adc/cic_comp_filter/QA_DIR/rtl.fsdb
wvCreateWindow
wvRestoreSignal -win $_nWave2 "signal.rc" -overWriteAutoAlias on -appendSignals \
           on
verdiSetFont -monoFont "Courier" -monoFontSize "18"
simSetSvtbMode off
verdiSetFont -monoFont "Courier" -monoFontSize "24"
verdiSetFont -monoFont "Fixed" -monoFontSize "20"
verdiSetFont -monoFont "Fixed" -monoFontSize "14"
verdiSetFont -monoFont "Clean" -monoFontSize "14"
verdiSetFont -monoFont "Clean" -monoFontSize "16"
verdiSetFont -monoFont "Courier" -monoFontSize "14"
verdiSetFont -monoFont "Courier" -monoFontSize "18"
verdiSetFont -monoFont "Courier" -monoFontSize "14"
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcFindScope -open -win $_nTrace1
srcFindScope -selectscope 1
wvSelectStuckSignals -win $_nWave2
wvSaveSignal -win $_nWave2 \
           "/home/qidc/Nutstore/Project/gysc/adc/cic_comp_filter/QA_DIR/signal.rc"
debExit
