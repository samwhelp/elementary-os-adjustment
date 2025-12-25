#!/usr/bin/env bash


#set -e




##
## ## Link
##
## * https://github.com/samwhelp/note-about-elementary-os/blob/elementary-os-adjustment/pantheon-adjustment/pantheon-adjustment.sh
## * https://raw.githubusercontent.com/samwhelp/note-about-elementary-os/refs/heads/elementary-os-adjustment/pantheon-adjustment/pantheon-adjustment.sh
##




##
## ## Pantheon / Config / Mouse Button Modifier
##

mod_pantheon_config_for_mouse_button_modifier () {


	##
	## ## Disable Super_L Open Menu
	##

	gsettings set org.gnome.mutter overlay-key ''


	##
	## ## Mouse Button Modifier
	##

	gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier "'<Super>'"

	gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true


	return 0
}




##
## ## Pantheon / Config / Keybind
##

mod_pantheon_config_for_keybind_main () {


	##
	## ## Fix
	##


	##gsettings set io.elementary.desktop.wm.keybindings switch-input-source ['<Super>Space']
	##gsettings set io.elementary.desktop.wm.keybindings switch-input-source-backward ['<Super><Shift>Space']

	gsettings set io.elementary.desktop.wm.keybindings switch-input-source "[]"

	gsettings set io.elementary.desktop.wm.keybindings switch-input-source-backward "[]"


	##gsettings set org.gnome.mutter.keybindings cancel-input-capture "['<Super><Shift>Escape']"
	gsettings set org.gnome.mutter.keybindings cancel-input-capture "['<Control><Shift>Escape']"


	##
	## ## Application / Launcher
	##

	#gsettings set org.gnome.desktop.wm.keybindings panel-main-menu "['<Alt>F1']"

	#gsettings set org.gnome.desktop.wm.keybindings panel-run-dialog "['<Alt>F2']"


	gsettings set io.elementary.desktop.wm.keybindings panel-main-menu "['<Alt>F1']"


	##
	## ## Window
	##

	gsettings set org.gnome.desktop.wm.keybindings close "['<Super>q']"

	gsettings set org.gnome.desktop.wm.keybindings toggle-maximized "['<Super>w']"

	gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "['<Super>f']"

	gsettings set org.gnome.desktop.wm.keybindings show-desktop "['<Super>d']"

	gsettings set org.gnome.desktop.wm.keybindings begin-move "['<Super>e']"

	gsettings set org.gnome.desktop.wm.keybindings begin-resize "['<Super>r']"

	gsettings set org.gnome.desktop.wm.keybindings minimize "['<Super>x']"

	gsettings set org.gnome.desktop.wm.keybindings raise-or-lower "['<Super>z']"

	gsettings set org.gnome.desktop.wm.keybindings toggle-above "['<Super>t']"


	##
	## ## Window / Switch
	##

	gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "['<Super>a']"

	gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Super>s']"

	gsettings set org.gnome.desktop.wm.keybindings cycle-windows-backward "['<Alt>Escape', '<Super>Left']"

	gsettings set org.gnome.desktop.wm.keybindings cycle-windows "['<Super>Escape', '<Super>Right']"


	##
	## ## Workspace / Switch
	##

	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "[]"

	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "[]"

	## > Alt+Left, Alt+Right, Alt+Up, used by file manager

	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Alt>a', '<Alt>Left']"

	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Alt>s', '<Alt>Right']"

	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Alt>a', '<Alt><Control>Left']"

	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Alt>s', '<Alt><Control>Right']"

	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Alt>a']"

	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Alt>s']"

	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-last "['<Alt>z']"


	gsettings set io.elementary.desktop.wm.keybindings cycle-workspaces-previous "[]"

	gsettings set io.elementary.desktop.wm.keybindings cycle-workspaces-next "[]"



	##
	## ## Overview / Switch
	##

	#gsettings set org.gnome.shell.keybindings toggle-application-view "['<Super>grave', '<Super>Up']"

	#gsettings set org.gnome.shell.keybindings toggle-overview "['<Super>Tab', '<Super>Down']"


	gsettings set io.elementary.desktop.wm.keybindings toggle-multitasking-view "['<Super>grave', '<Super>Up']"

	gsettings set io.elementary.desktop.wm.keybindings expose-all-windows "['<Super>Tab', '<Super>Down']"


	##
	## ## Window / Tiling Move
	##

	gsettings set org.gnome.desktop.wm.keybindings move-to-center "['<Super>m']"

	#gsettings set org.gnome.desktop.wm.keybindings maximize "['<Control><Super>Up']"

	#gsettings set org.gnome.desktop.wm.keybindings unmaximize "['<Control><Super>Down']"

	#gsettings set org.gnome.mutter.keybindings toggle-tiled-left "['<Control><Super>Left']"

	#gsettings set org.gnome.mutter.keybindings toggle-tiled-right "['<Control><Super>Right']"


	##
	## ## Screenshot
	##

	gsettings set io.elementary.desktop.wm.keybindings screenshot  "['Print']"

	gsettings set io.elementary.desktop.wm.keybindings screenshot-clip  "['<Shift>Print']"



	##
	## ## Screenshot / Window
	##

	gsettings set io.elementary.desktop.wm.keybindings window-screenshot "['<Super>Print']"

	gsettings set io.elementary.desktop.wm.keybindings window-screenshot-clip "['<Alt><Super>Print']"


	##
	## ## Screenshot / Area
	##

	gsettings set io.elementary.desktop.wm.keybindings area-screenshot "['<Control>Print']"

	gsettings set io.elementary.desktop.wm.keybindings area-screenshot-clip "['<Alt><Control>Print']"




	return 0
}




mod_pantheon_config_for_keybind_custom () {


	##
	## ## Clear Old
	##

	dconf reset -f /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/




	##
	## ## Keybind Item
	##


	## ### Logout
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-logout/name "'System_Logout'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-logout/command "'gnome-session-quit --logout'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-logout/binding "'<Shift><Alt>x'"


	## ### Shutdown
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-shutdown/name "'System_Shutdown'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-shutdown/command "'gnome-session-quit --power-off'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-shutdown/binding "'<Shift><Alt>z'"


	## ### System Settings
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/control-center/name "'Control_Center'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/control-center/command "'io.elementary.settings'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/control-center/binding "'<Shift><Alt>s'"


	## ### Terminal
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/name "'Terminal'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/command "'io.elementary.terminal'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/binding "'<Alt>Return'"


	## ### Terminal-1
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-1/name "'Terminal-1'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-1/command "'io.elementary.terminal'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-1/binding "'<Shift><Alt>a'"


	## ### File Manager
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager/name "'File_Manager'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager/command "'io.elementary.files'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager/binding "'<Shift><Alt>f'"


	## ### File Manager 1
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager-1/name "'File_Manager-1'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager-1/command "'thunar'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager-1/binding "'<Shift><Alt>g'"


	## ### Text Editor
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/text-editor/name "'Text_Editor'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/text-editor/command "'io.elementary.code'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/text-editor/binding "'<Shift><Alt>e'"


	## ### Web Browser
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/web-browser/name "'Web_Browser'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/web-browser/command "'firefox --new-tab about:blank'"
	#dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/web-browser/command "'falkon --new-tab about:blank'"
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/web-browser/binding "'<Shift><Alt>b'"




	##
	## ## Custom Keybindings
	##

	gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-logout/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-shutdown/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/control-center/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-1/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/text-editor/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/web-browser/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager-1/']"


	return 0
}




##
## ## Pantheon / Config / Workspace
##

mod_pantheon_config_for_workspace () {


	mod_pantheon_config_for_workspace_dynamic

	#mod_pantheon_config_for_workspace_not_dynamic


	return 0
}

mod_pantheon_config_for_workspace_dynamic () {


	gsettings set org.gnome.mutter dynamic-workspaces true

	gsettings set org.gnome.desktop.wm.preferences num-workspaces 5

	gsettings set org.gnome.desktop.wm.preferences workspace-names "['File', 'Edit', 'Web', 'Term', 'Misc']"


	return 0
}

mod_pantheon_config_for_workspace_not_dynamic () {


	gsettings set org.gnome.mutter dynamic-workspaces false

	gsettings set org.gnome.desktop.wm.preferences num-workspaces 5

	gsettings set org.gnome.desktop.wm.preferences workspace-names "['File', 'Edit', 'Web', 'Term', 'Misc']"


	return 0
}

mod_pantheon_config_for_empty_switch_windows () {


	gsettings set org.gnome.desktop.wm.keybindings switch-applications "[]"

	gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward "[]"

	gsettings set org.gnome.desktop.wm.keybindings switch-group "[]"

	gsettings set org.gnome.desktop.wm.keybindings switch-group-backward "[]"

	gsettings set org.gnome.desktop.wm.keybindings switch-panels "[]"

	gsettings set org.gnome.desktop.wm.keybindings switch-panels-backward "[]"

	gsettings set org.gnome.desktop.wm.keybindings switch-windows "[]"

	gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "[]"




	gsettings set org.gnome.desktop.wm.keybindings cycle-group "[]"

	gsettings set org.gnome.desktop.wm.keybindings cycle-group-backward "[]"

	gsettings set org.gnome.desktop.wm.keybindings cycle-panels "[]"

	gsettings set org.gnome.desktop.wm.keybindings cycle-panels-backward "[]"

	gsettings set org.gnome.desktop.wm.keybindings cycle-windows "[]"

	gsettings set org.gnome.desktop.wm.keybindings cycle-windows-backward "[]"




	return 0
}

mod_pantheon_config_for_system_config_quick () {


	return 0
}





##
## ## Pantheon / Config / Dock
##

mod_pantheon_config_for_system_config_dock () {


	mod_pantheon_config_for_system_config_dock_for_preference

	mod_pantheon_config_for_system_config_dock_for_launcher


	return 0
}

mod_pantheon_config_for_system_config_dock_for_preference () {


	#gsettings set io.elementary.dock autohide-mode 'overlapping-focus-window'

	gsettings set io.elementary.dock autohide-mode 'never'


	return 0
}

mod_pantheon_config_for_system_config_dock_for_launcher () {


	gsettings set io.elementary.dock launchers "['io.elementary.files.desktop', 'io.elementary.code.desktop', 'org.gnome.Epiphany.desktop', 'io.elementary.terminal.desktop', 'io.elementary.settings.desktop', 'io.elementary.appcenter.desktop', 'gala-multitaskingview.desktop']"


	mod_pantheon_config_for_system_config_dock_to_restart


	return 0
}

mod_pantheon_config_for_system_config_dock_to_restart () {

	if killall io.elementary.dock; then
		return 0
	fi

	return 0
}

##
## ## Pantheon / Config / Hot Corner
##

mod_pantheon_config_for_system_config_hot_corner () {


	#gsettings set io.elementary.desktop.wm.behavior hotcorner-topleft 'none'

	#gsettings set io.elementary.desktop.wm.behavior hotcorner-topright 'none'

	#gsettings set io.elementary.desktop.wm.behavior hotcorner-bottomleft 'none'

	#gsettings set io.elementary.desktop.wm.behavior hotcorner-bottomright 'none'

	#gsettings set io.elementary.desktop.wm.behavior hotcorner-custom-command ''




	gsettings set io.elementary.desktop.wm.behavior hotcorner-topleft 'show-workspace-view'

	gsettings set io.elementary.desktop.wm.behavior hotcorner-topright 'open-launcher'

	gsettings set io.elementary.desktop.wm.behavior hotcorner-bottomleft 'window-overview-all'

	gsettings set io.elementary.desktop.wm.behavior hotcorner-bottomright 'custom-command'

	gsettings set io.elementary.desktop.wm.behavior hotcorner-custom-command 'hotcorner-topright:io.elementary.terminal'




	return 0
}




##
## ## Tool / io.elementary.terminal / Config
##

mod_tool_io_elementary_terminal_config () {

	mod_tool_io_elementary_terminal_config_for_preference

	mod_tool_io_elementary_terminal_config_for_keybind

	mod_tool_io_elementary_terminal_config_for_profile


	return 0
}

mod_tool_io_elementary_terminal_config_for_preference () {


	##
	## gsettings list-recursively | grep io.elementary.terminal.settings
	##


	gsettings set io.elementary.terminal.settings follow-last-tab true

	gsettings set io.elementary.terminal.settings remember-tabs false

	gsettings set io.elementary.terminal.settings save-exited-tabs false



	gsettings set io.elementary.terminal.settings font 'Monospace 12'




	#gsettings set io.elementary.terminal.settings theme "'high-contrast'"
	gsettings set io.elementary.terminal.settings theme "'dark'"
	#gsettings set io.elementary.terminal.settings theme "'solarized-light'"


	gsettings set io.elementary.terminal.settings theme "'custom'"


	#gsettings set io.elementary.terminal.settings background "'#002B36'"
	gsettings set io.elementary.terminal.settings background "'rgba(0, 0, 0, 0.85)'"

	gsettings set io.elementary.terminal.settings foreground "'#93A1A1'"

	gsettings set io.elementary.terminal.settings cursor-color "'#839496'"

	gsettings set io.elementary.terminal.settings palette "'#073642:#dc322f:#859900:#b58900:#268bd2:#d33682:#2aa198:#eee8d5:#002b36:#dc322f:#586e75:#657b83:#839496:#6c71c4:#93a1a1:#fdf6e3'"



	gsettings set io.elementary.terminal.settings prefer-dark-style true


	return 0
}

mod_tool_io_elementary_terminal_config_for_keybind () {


	gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "['']"




	return 0
}

mod_tool_io_elementary_terminal_config_for_profile () {


	return 0
}


##
## ## Tool / io.elementary.files / Config
##

mod_tool_io_elementary_files_config () {

	#gsettings set io.elementary.files.preferences default-viewmode 'icon'

	gsettings set io.elementary.files.preferences default-viewmode 'list'

	gsettings set io.elementary.files.preferences show-hiddenfiles true

	gsettings set io.elementary.files.preferences restore-tabs false

	gsettings set io.elementary.files.preferences singleclick-select true




	gsettings set org.gtk.gtk4.Settings.FileChooser show-hidden true




	return 0
}


##
## ## Tool / io.elementary.code / Config
##

mod_tool_io_elementary_code_config () {


	##
	## gsettings list-recursively | grep io.elementary.code.settings
	##


	gsettings set io.elementary.code.settings spaces-instead-of-tabs false

	gsettings set io.elementary.code.settings strip-trailing-on-save true

	gsettings set io.elementary.code.settings autosave false

	gsettings set io.elementary.code.settings indent-width 4

	gsettings set io.elementary.code.settings line-wrap true

	gsettings set io.elementary.code.settings show-mini-map true

	gsettings set io.elementary.code.settings show-right-margin true

	gsettings set io.elementary.code.settings right-margin-position 80




	gsettings set io.elementary.code.settings use-system-font false

	#gsettings set io.elementary.code.settings font 'Droid Sans Mono 12'

	gsettings set io.elementary.code.settings font 'Monospace 12'




	gsettings set io.elementary.code.settings prefer-dark-style true

	gsettings set io.elementary.code.settings follow-system-style false

	gsettings set io.elementary.code.settings style-scheme 'oblivion'




	return 0
}


##
## ## Pantheon / Config
##

mod_pantheon_config () {


	mod_pantheon_config_for_empty_switch_windows




	mod_pantheon_config_for_mouse_button_modifier

	mod_pantheon_config_for_keybind_main

	mod_pantheon_config_for_keybind_custom

	mod_pantheon_config_for_workspace




	mod_pantheon_config_for_system_config_quick

	mod_pantheon_config_for_system_config_dock

	mod_pantheon_config_for_system_config_hot_corner




	return 0
}

mod_tool_config () {


	mod_tool_io_elementary_files_config

	mod_tool_io_elementary_code_config

	mod_tool_io_elementary_terminal_config


	return 0
}

mod_config_portal () {


	echo
	echo "##"
	echo "## ## Pantheon Config / Adjustment / Start"
	echo "##"
	echo




	mod_pantheon_config

	mod_tool_config




	echo
	echo "##"
	echo "## ## Pantheon Config / Adjustment / Done"
	echo "##"
	echo


	return 0
}




##
## ## Main
##

__main__ () {

	mod_config_portal

	return 0
}

__main__ "${@}"
