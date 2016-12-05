#!/bin/sh
#
# This file was automatically generated.
#
# It can be overwritten by nios2-flash-programmer-generate or nios2-flash-programmer-gui.
#

#
# Converting Binary File: /home/ecegrid/a/695r07/ece695r/project/jpeg_decoder_release2/input_small.zip to: "../flash/input_small_generic_tristate_controller_0.flash"
#
bin2flash --input="/home/ecegrid/a/695r07/ece695r/project/jpeg_decoder_release2/input_small.zip" --output="../flash/input_small_generic_tristate_controller_0.flash" --location=0x0 --verbose 

#
# Programming File: "../flash/input_small_generic_tristate_controller_0.flash" To Device: generic_tristate_controller_0
#
nios2-flash-programmer "../flash/input_small_generic_tristate_controller_0.flash" --base=0x10000000 --accept-bad-sysid --device=1 --instance=0 '--cable=USB-Blaster on localhost [1-2]' --program --verbose --erase-all 

