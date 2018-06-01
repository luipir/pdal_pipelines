# pdal_pipelines

## How to run

this is only an example of CLI call

pdal pipeline -i ./classify_ground_and_hag.json --verbose 8 --readers.las.filename=source.las --writers.las.filename=destination.las

# obtain feedback

CLI pdal application [1] can generate more or less feedback depending on imput parameters

--debug (deprecated but still working)

or

--verbose [0-8]


[1] https://pdal.io/apps/index.html
