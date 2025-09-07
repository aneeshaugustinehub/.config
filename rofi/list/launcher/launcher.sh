#!/usr/bin/env bash

dir="$HOME/.config/rofi/list/launcher/"
theme='style'

## Run
rofi \
    -show drun \
    -theme ${dir}/${theme}.rasi
