#!/bin/bash
set -e

rm -Rf ./out
mkdir out

ogrmerge.py -single -o ./out/11kv_ohl.shp ./11kv_ohl/*.shp
ogrmerge.py -single -o ./out/33kv_ohl.shp ./33kv_ohl/*.shp
ogrmerge.py -single -o ./out/66kv_ohl.shp ./66kv_ohl/*.shp
ogrmerge.py -single -o ./out/132kv_ohl.shp ./132kv_ohl/*.shp

ogrmerge.py -single -o ./out/11kv_gm.shp ./11kv_gm/*.shp
ogrmerge.py -single -o ./out/33kv_gm.shp ./33kv_gm/*.shp
ogrmerge.py -single -o ./out/66kv_gm.shp ./66kv_gm/*.shp
ogrmerge.py -single -o ./out/132kv_gm.shp ./132kv_gm/*.shp

ogrmerge.py -single -o ./out/11kv_pm.shp ./11kv_pm/*.shp
ogrmerge.py -single -o ./out/33kv_pm.shp ./33kv_pm/*.shp
ogrmerge.py -single -o ./out/132kv_pm.shp ./132kv_pm/*.shp

ogrmerge.py -single -o ./out/11kv_underground.shp ./11kv_underground/*.shp
ogrmerge.py -single -o ./out/33kv_underground.shp ./33kv_underground/*.shp
ogrmerge.py -single -o ./out/66kv_underground.shp ./66kv_underground/*.shp
ogrmerge.py -single -o ./out/132kv_underground.shp ./132kv_underground/*.shp
