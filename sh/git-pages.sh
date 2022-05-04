#!/bin/sh
cd ./../
flutter build web --base-href /xgm/
rm -r docs/
cp -r -v build/web/ docs/