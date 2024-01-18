#!/usr/bin/bash
# This scripts toggles secondary display in X11

MainDisplay=DisplayPort-0
SecondDisplay=DisplayPort-1

str=$(xrandr | grep $SecondDisplay)
echo $str
if [[ $str == *"1920x1080"* ]]; then
 xrandr --output $MainDisplay --auto --output $SecondDisplay --off
 monitor2=false
else 
 xrandr --output $MainDisplay --auto --output $SecondDisplay --auto --left-of $MainDisplay
 monitor2=true
fi

## Notify user & system 
#if [[ $monitor2 == false ]]
# then
#  /usr/bin/zenity --notification --text "Left monitor Disabled"
#  if [[ $monitor2 == true ]]
# then
#  /usr/bin/zenity --notification --text "Left monitor Enabled"
#fi
