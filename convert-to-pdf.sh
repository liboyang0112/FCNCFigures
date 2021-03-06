#!/bin/bash
for files in `find . | grep eps`
do
	filename=${files/.eps}
	epstopdf $files -o $filename.pdf
	rm $files
done