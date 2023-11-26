#!/bin/bash
# while true; do
#     inotifywait  -r --format '*.ipynb' -e modify .
#     echo "A Notebool file was saved!"
#     poetry run nbdev_export
#     echo "Python regenerated"
# done

inotifywait -r -e modify --format '%w%f' -m $(pwd)| while read FILE
do
    if [[ "$FILE" == *.ipynb ]]; then
        echo "Jupyter notebook $FILE was changed."
        poetry run nbdev_export
        echo "source_scripts was regenerated"
    fi
done
