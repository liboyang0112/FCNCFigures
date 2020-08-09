#!/bin/bash
for files in `find . | grep eps`
do
	filename=${files/.eps}
	epstopdf $files $filename.pdf
	rm $files
done