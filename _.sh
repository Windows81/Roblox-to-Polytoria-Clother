#!/bin/sh
magick "$1" -size 1024x1024 xc:none -background none \
  \( -clone 0 -crop 064x128+165+074 -scale 156.25% -splice 089x184+0+0 +repage `# Torso R` \) \
  \( -clone 0 -crop 128x128+231+074 -scale 156.25% -splice 199x184+0+0 +repage `# Torso F` \) \
  \( -clone 0 -crop 064x128+361+074 -scale 156.25% -splice 409x184+0+0 +repage `# Torso L` \) \
  \( -clone 0 -crop 128x128+427+074 -scale 156.25% -splice 519x184+0+0 +repage `# Torso B` \) \
  \( -clone 0 -crop 128x064+231+008 -scale 156.25% -splice 199x074+0+0 +repage `# Torso U` \) \
  \( -clone 0 -crop 128x064+231+204 -scale 156.25% -splice 199x394+0+0 +repage `# Torso D` \) \
  \( -clone 0 -crop 064x128+019+355 -scale 156.25% -splice 052x667+0+0 +repage `# R Arm L` \) \
  \( -clone 0 -crop 064x128+085+355 -scale 156.25% -splice 162x667+0+0 +repage `# R Arm B` \) \
  \( -clone 0 -crop 064x128+151+355 -scale 156.25% -splice 272x667+0+0 +repage `# R Arm R` \) \
  \( -clone 0 -crop 064x128+217+355 -scale 156.25% -splice 382x667+0+0 +repage `# R Arm F` \) \
  \( -clone 0 -crop 064x064+217+289 -scale 156.25% -splice 382x557+0+0 +repage `# R Arm U` \) \
  \( -clone 0 -crop 064x064+217+485 -scale 156.25% -splice 382x877+0+0 +repage `# R Arm D` \) \
  \( -clone 0 -crop 064x128+308+355 -scale 156.25% -splice 538x667+0+0 +repage `# L Arm F` \) \
  \( -clone 0 -crop 064x064+308+289 -scale 156.25% -splice 538x557+0+0 +repage `# L Arm U` \) \
  \( -clone 0 -crop 064x064+308+485 -scale 156.25% -splice 538x877+0+0 +repage `# L Arm D` \) \
  \( -clone 0 -crop 064x128+374+355 -scale 156.25% -splice 649x667+0+0 +repage `# L Arm L` \) \
  \( -clone 0 -crop 064x128+440+355 -scale 156.25% -splice 759x667+0+0 +repage `# L Arm B` \) \
  \( -clone 0 -crop 064x128+506+355 -scale 156.25% -splice 870x667+0+0 +repage `# L Arm R` \) \
  -delete 0 -gravity NorthWest -flatten "$2"
