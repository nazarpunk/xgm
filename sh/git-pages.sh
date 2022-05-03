#!/bin/sh
flutter build web --base-href /xgm/
cd ./../
rm -r docs/
cp -r -v build/web/ docs/