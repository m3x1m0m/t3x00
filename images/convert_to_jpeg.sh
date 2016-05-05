#/bin/bash

SUFFIX=jpg

for IMG_FILE in *.png
do
	#strip .png from file name
	IMG_FILE_NAME=${IMG_FILE%.*g}
	avconv -i ${IMG_FILE} ${IMG_FILE_NAME}.${SUFFIX}
	rm *.png
done
