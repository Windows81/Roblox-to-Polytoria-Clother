#!/bin/sh
(magick "$1" -size 1024x1024 xc:none -background none \
  \( -clone 0 -crop 064x128+165+074 -scale 088x290! -splice 351x103+0+0 +repage `# Torso R` \) \
  \( -clone 0 -crop 128x128+231+074 -scale 088x290! -splice 439x103+0+0 +repage `# Torso F` \) \
  \( -clone 0 -crop 064x128+361+074 -scale 088x290! -splice 585x103+0+0 +repage `# Torso L` \) \
  \( -clone 0 -crop 128x064+231+008 -scale 088x096! -splice 439x007+0+0 +repage `# Torso U` \) \
  \( -clone 0 -crop 128x064+231+204 -scale 088x096! -splice 439x393+0+0 +repage `# Torso D` \) \
  \( -clone 0 -crop 128x128+427+074 -scale 088x290! -splice 419x513+0+0 +repage `# Torso B` \) \
  \
  \( -clone 0 -crop 064x128+019+355 -scale 066x290! -splice 006x071+0+0 +repage `# R Arm L` \) \
  \( -clone 0 -crop 064x128+085+355 -scale 066x290! -splice 072x071+0+0 +repage `# R Arm B` \) \
  \( -clone 0 -crop 064x128+151+355 -scale 066x290! -splice 138x071+0+0 +repage `# R Arm R` \) \
  \
  \( -clone 0 -crop 064x128+217+355 -scale 066x290! -splice 204x071+0+0 +repage `# R Arm F` \) \
  \( -clone 0 -crop 064x064+217+289 -scale 066x064! -splice 204x007+0+0 +repage `# R Arm U` \) \
  \( -clone 0 -crop 064x064+217+485 -scale 066x064! -splice 204x361+0+0 +repage `# R Arm D` \) \
  \
  \( -clone 0 -crop 064x128+308+355 -scale 066x290! -splice 754x071+0+0 +repage `# L Arm F` \) \
  \( -clone 0 -crop 064x064+308+289 -scale 066x064! -splice 754x007+0+0 +repage `# L Arm U` \) \
  \( -clone 0 -crop 064x064+308+485 -scale 066x064! -splice 754x361+0+0 +repage `# L Arm D` \) \
  \
  \( -clone 0 -crop 064x128+374+355 -scale 066x290! -splice 820x071+0+0 +repage `# L Arm L` \) \
  \( -clone 0 -crop 064x128+440+355 -scale 066x290! -splice 886x071+0+0 +repage `# L Arm B` \) \
  \( -clone 0 -crop 064x128+506+355 -scale 066x290! -splice 952x071+0+0 +repage `# L Arm R` \) \
  -delete 0 -gravity NorthWest -flatten "$2")