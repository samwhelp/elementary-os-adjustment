#!/usr/bin/env bash

set -e


################################################################################
### Head: thunar
##

thunar_asset_install () {

	echo
	echo "##"
	echo "## Asset: thunar"
	echo "##"
	echo

	echo "## Do Nothing"


	echo

}



##
### Tail: thunar
################################################################################


################################################################################
### Head: asset_install
##

main_asset_install () {

	thunar_asset_install

}

##
### Tail: asset_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_asset_install

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
