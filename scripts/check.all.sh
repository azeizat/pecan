for f in common utils db modules/meta.analysis modules/uncertainty modules/rtm models/ed
do
  echo "---- Checking PEcAn package: $f"
  R CMD check $f
  wait
  echo -n "Move on to next package? [ENTER]"
  read
  clear
done