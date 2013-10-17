#!/bin/bash
filename="$(ls -tr1 *.image | head -1)"
echo ${filename%.*}

