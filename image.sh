# First parameter: original image
# (Second parameter: image for watermark)
# (Third parameter: name of the edited image (without file extension))

#!/bin/bash
convert $1 -solarize 0% tmp.jpg
convert tmp.jpg -swirl 90 tmp.jpg

if test $# -ge 2
	then composite -gravity SouthEast -watermark 20% $2 tmp.jpg tmp.jpg
fi

if test $# -eq 3
	then mv tmp.jpg $3.jpg
	else mv tmp.jpg harderbetterfasterstronger$(basename $1)
fi
