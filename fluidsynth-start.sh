#!/usr/bin/env bash

#possible soundfonts
defaultSF=/usr/share/sounds/sf2/FluidR3_GM.sf2
#~/soundfonts/Electric_Grand_Piano.sf2
#~/soundfonts/Piano1.sf2
#~/soundfonts/Nice-Keys-Suite-V1.0.sf2
#~/soundfonts/SGM-v2.01-NicePianosGuitarsBass-V1.2.sf2
#~/soundfonts/Nice-4-Bass-V1.5.sf2
#~/soundfonts/Nice-Upright-Piano-Compact-JNv1.3.sf2
#~/soundfonts/Rhodes EPs Plus-JN1.5.sf2

# jack
if [[ -n "$1" ]]; then
    echo "using $1"
    fluidsynth -s -a jack -j $1
else
    echo "defaulting to $defaultSF"
    fluidsynth -s -a jack -j $defaultSF
fi

# fluidsynth basic settings
#fluidsynth -a alsa --gain 5 /usr/share/sounds/sf2/FluidR3_GM.sf2

# fluidsynth alsa external
#fluidsynth -a alsa -o audio.alsa.device=hw:2 --gain 1 /usr/share/sounds/sf2/FluidR3_GM.sf2

# fluidsynth without jack
#fluidsynth \
#  -o audio.alsa.device=hw:0 \
#  -r 22050 \
#  -a alsa \
#  -c 8 \
#  -z 64 \
#  /usr/share/sounds/sf2/FluidR3_GM.sf2
