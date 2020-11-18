$PROCESSING --sketch=$SKETCH/ --export && echo "Distribuables built for targeted platforms."

mkdir -p ./artifacts

for platform in $PLATFORMS
do
zip -r "artifacts/$SKETCH-$platform.zip" "space_invaders/application.$platform"
done
