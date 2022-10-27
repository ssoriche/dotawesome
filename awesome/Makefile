SHELL=/bin/bash
AWESOME_CONFIG_DIR := $(HOME)/.config/awesome
AWESOME_CONFIG := $(AWESOME_CONFIG_DIR)/rc.lua
# AWESOME_THEME := $(AWESOME_CONFIG_DIR)/theme.lua
# AWESOME_WIDGETS := $(AWESOME_CONFIG_DIR)/widgets
# AWESOME_MODULES := $(AWESOME_CONFIG_DIR)/modules

install: $(AWESOME_CONFIG) $(AWESOME_CONFIG_DIR)/configuration $(AWESOME_CONFIG_DIR)/layout $(AWESOME_CONFIG_DIR)/library $(AWESOME_CONFIG_DIR)/module $(AWESOME_CONFIG_DIR)/theme $(AWESOME_CONFIG_DIR)/utilities $(AWESOME_CONFIG_DIR)/widget

$(AWESOME_CONFIG): backup $(AWESOME_CONFIG_DIR) 
	ln -s $(PWD)/rc.lua $@

# $(AWESOME_THEME): $(AWESOME_CONFIG_DIR)
# 	ln -s $(PWD)/theme.lua $@
#
# $(AWESOME_WIDGETS): $(AWESOME_CONFIG_DIR)
# 	ln -s $(PWD)/widgets $@
#
# $(AWESOME_MODULES): $(AWESOME_CONFIG_DIR)
# 	ln -s $(PWD)/modules $@

$(AWESOME_CONFIG_DIR):
	mkdir -p $@

backup:
	if [ -f $(AWESOME_CONFIG) ] && [ ! -h $(AWESOME_CONFIG) ]; then \
		mv $(AWESOME_CONFIG) $(AWESOME_CONFIG).bak; \
	fi

# TODO: put configuration into a separate director
# $(AWESOME_CONFIG_DIR)/configuration: $(AWESOME_CONFIG_DIR)
# 	ln -s $(PWD)/configuration $@

$(AWESOME_CONFIG_DIR)/freedesktop: $(AWESOME_CONFIG_DIR)
	ln -s $(PWD)/freedesktop $@

# TODO: this needs to clone lain into the directory
$(AWESOME_CONFIG_DIR)/lain: $(AWESOME_CONFIG_DIR)
	ln -s $(PWD)/lain $@

# TODO: create a modules directory and add the screen locker
# $(AWESOME_CONFIG_DIR)/module: $(AWESOME_CONFIG_DIR)
# 	ln -s $(PWD)/module $@

$(AWESOME_CONFIG_DIR)/themes: $(AWESOME_CONFIG_DIR)
	ln -s $(PWD)/themes $@

$(AWESOME_CONFIG_DIR)/backgrounds: $(AWESOME_CONFIG_DIR)
	ln -s $(PWD)/backgrounds $@
