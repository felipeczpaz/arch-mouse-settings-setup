#!/bin/bash

# Disable mouse acceleration for all mice
for device in $(xinput --list | grep -i "mouse" | awk -F'id=' '{print $2}' | awk '{print $1}'); do
    # Set acceleration speed to 0 (no acceleration)
    xinput set-prop "$device" "libinput Accel Speed" 0
    # Set the acceleration profile to "none" (if applicable)
    if xinput list-props "$device" | grep -q "libinput Accel Profile Enabled"; then
        xinput set-prop "$device" "libinput Accel Profile Enabled" 0, 1, 0  # Set to "none"
    fi
done

# Enable tapping on touchpad
for device in $(xinput --list | grep -i "touchpad" | awk -F'id=' '{print $2}' | awk '{print $1}'); do
    # Enable tapping
    xinput set-prop "$device" "libinput Tapping Enabled" 1
done

# Invert scroll direction for all devices
for device in $(xinput --list | grep -i "pointer" | awk -F'id=' '{print $2}' | awk '{print $1}'); do
    # Invert natural scrolling
    if xinput list-props "$device" | grep -q "libinput Natural Scrolling Enabled"; then
        xinput set-prop "$device" "libinput Natural Scrolling Enabled" 1
    fi
done
