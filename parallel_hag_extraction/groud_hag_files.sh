#!/usr/bin/env bash
# ***************************************************************************
#  classify_ground_and_hag.json
#  --------------------------------------
#  Date                 : May 2018
#  Copyright            : (C) 2018 by Luigi Pirelli
#  Email                : luipir at gmail dot com
# ***************************************************************************
# *                                                                         *
# *   This program is free software; you can redistribute it and/or modify  *
# *   it under the terms of the GNU General Public License as published by  *
# *   the Free Software Foundation; either version 2 of the License, or     *
# *   (at your option) any later version.                                   *
# *                                                                         *
# ***************************************************************************

pipeline="${1}"
filename="${2}"
destpath="${3}"

outfile="hag_`basename "${filename}"`"
command="pdal pipeline  --verbose 8 -i "${pipeline}" --readers.las.filename="${filename}" --writers.las.filename="${destpath}"/${outfile}"
echo "+++++++++++++++++++++++++++++++++++"
echo "$> ${command}"
time pdal pipeline  --verbose 8 -i "${pipeline}" --readers.las.filename="${filename}" --writers.las.filename="${destpath}"/${outfile}

# pipeline="${1}"
# path="${2}"
# exit 0

# for filename in "$path"/*las; do
#     infile=${filename}
#     outfile="hag_`basename "${filename}"`"
#     command="pdal pipeline -i "${pipeline}" --verbose 8 --readers.las.filename="${infile}" --writers.las.filename="${path}/${outfile}""
#     echo "+++++++++++++++++++++++++++++++++++"
#     echo "$> ${command}"
#     pdal pipeline -i "${pipeline}" --verbose 8 --readers.las.filename="${infile}" --writers.las.filename="${path}/${outfile}"
# done

