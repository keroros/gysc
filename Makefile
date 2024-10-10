SUBDIRS := \
	pi/feedback/QA_DIR \
	pi/pi_ctrl/QA_DIR \
	pi/pi_ctrl_top/QA_DIR

.PHONY: clean
clean:
	@for dir in $(SUBDIRS); do \
		echo "Cleaning $$dir"; \
		$(MAKE) -C $$dir clean; \
	done



