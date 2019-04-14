#!/bin/sh
asciidoctor-pdf -r asciidoctor-diagram -D build -a imagesdir=../build src/index.adoc
ls -salh
mv build/index.pdf build/abapgit_2019_q2.pdf
rm build/*.png
rm -r build/.asciidoctor
