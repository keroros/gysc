SUBDIRS := \
	/home/qidc/Nutstore/Project/gysc/pi/feedback/QA_DIR \
	/home/qidc/Nutstore/Project/gysc/pi/pi_ctrl/QA_DIR \
	/home/qidc/Nutstore/Project/gysc/pi/pi_ctrl_top/QA_DIR \
	/home/qidc/Nutstore/Project/gysc/adc/cic_filter/QA_DIR \
	/home/qidc/Nutstore/Project/gysc/adc/cic_comp_filter/QA_DIR \
	/home/qidc/Nutstore/Project/gysc/adc/hb_filter/QA_DIR \
	/home/qidc/Nutstore/Project/gysc/adc/adc_top/QA_DIR \
	/home/qidc/Nutstore/Project/gysc/fpu/fix2float/QA_DIR \

.PHONY: clean
clean:
	@for dir in $(SUBDIRS); do \
		echo "Cleaning $$dir"; \
		$(MAKE) -C $$dir clean; \
	done



