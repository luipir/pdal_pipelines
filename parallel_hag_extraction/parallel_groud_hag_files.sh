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

#inspired by https://smathermather.com/2016/01/28/parallel-processing-in-pdal/



numproc=${1}
pipeline="${2}"
sourcepath="${3}"
destpath="${4}"

# parallel command
# -j for num of parallel tasks
# -q quote result of pipeline
ls "${sourcepath}"/*las | parallel -j${numproc} "$( dirname ${0} )"/groud_hag_files.sh "${pipeline}" {1} "${destpath}"