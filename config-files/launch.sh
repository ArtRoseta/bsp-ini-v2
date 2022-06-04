#!/bin/bash

killall -q polybar

polybar monitor 2>&1 &
