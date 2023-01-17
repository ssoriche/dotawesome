SHELL=/bin/bash
AWESOME_CONFIG_DIR := $(HOME)/.config/awesome
AWESOME_CONFIG := $(AWESOME_CONFIG_DIR)/rc.lua

install: $(AWESOME_CONFIG) $(AWESOME_CONFIG_DIR)/config $(AWESOME_CONFIG_DIR)/theme $(AWESOME_CONFIG_DIR)/ui $(AWESOME_CONFIG_DIR)/helpers.lua $(AWESOME_CONFIG_DIR)/lain

$(AWESOME_CONFIG): backup $(AWESOME_CONFIG_DIR) 
	ln -sf $(PWD)/rc.lua $@

$(AWESOME_CONFIG_DIR):
	mkdir -p $@

backup:
	if [ -f $(AWESOME_CONFIG) ] && [ ! -h $(AWESOME_CONFIG) ]; then \
		mv $(AWESOME_CONFIG) $(AWESOME_CONFIG).bak; \
	fi

$(AWESOME_CONFIG_DIR)/config: $(AWESOME_CONFIG_DIR)
	ln -sf $(PWD)/config $@

# TODO: this needs to clone lain into the directory
$(AWESOME_CONFIG_DIR)/lain: $(AWESOME_CONFIG_DIR)
	ln -sf $(PWD)/lain $@

$(AWESOME_CONFIG_DIR)/theme: $(AWESOME_CONFIG_DIR)
	ln -sf $(PWD)/theme $@

$(AWESOME_CONFIG_DIR)/ui: $(AWESOME_CONFIG_DIR)
	ln -sf $(PWD)/ui $@

$(AWESOME_CONFIG_DIR)/helpers.lua: $(AWESOME_CONFIG_DIR)
	ln -sf $(PWD)/helpers.lua $@
