#!/usr/bin/env bash


#set -e




##
## ## Link
##
## * https://github.com/samwhelp/note-about-elementary-os/blob/gh-pages/_demo/scripts/pantheon-keybind/pantheon-keybind.sh
## * https://raw.githubusercontent.com/samwhelp/note-about-elementary-os/refs/heads/gh-pages/_demo/scripts/pantheon-keybind/pantheon-keybind.sh
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

	gsettings set io.elementary.desktop.wm.keybindings pip "['<Super>v']"


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




##
## ## Pantheon / Config
##

mod_pantheon_config () {


	mod_pantheon_config_for_empty_switch_windows




	mod_pantheon_config_for_mouse_button_modifier

	mod_pantheon_config_for_keybind_main

	mod_pantheon_config_for_keybind_custom

	mod_pantheon_config_for_workspace




	return 0
}

mod_config_portal () {


	echo
	echo "##"
	echo "## ## Pantheon Config / Adjustment / Start"
	echo "##"
	echo




	mod_pantheon_config




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
