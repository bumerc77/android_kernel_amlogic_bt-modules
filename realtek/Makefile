KERNEL_SRC ?= /lib/modules/$(shell uname -r)/build
M ?= $(shell pwd)

ifeq ($(O),)
out_dir := .
else
out_dir := $(O)
endif

DRIVER_DIR := rtk_btusb
DRIVER_KOS := rtk_btusb.ko
DRIVER_ARGS :=

modules modules_install clean:
	$(MAKE) -C $(KERNEL_SRC) M=$(M)/$(DRIVER_DIR) KERNEL_SRC=$(KERNEL_SRC) \
		$(DRIVER_ARGS) $(@)
	if [ -e $(out_dir)/$(M)/$(DRIVER_DIR)/Module.symvers ]; then \
		ln -sf $(out_dir)/$(M)/$(DRIVER_DIR)/Module.symvers $(out_dir)/$(M)/Module.symvers; \
	fi
	for ko in $(DRIVER_KOS); do \
		if [ -e $(out_dir)/$(M)/$(DRIVER_DIR)/$$ko ]; then \
			ln -sf $(out_dir)/$(M)/$(DRIVER_DIR)/$$ko $(out_dir)/$(M)/$$ko; \
		fi; \
	done
