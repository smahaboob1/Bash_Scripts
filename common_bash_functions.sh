#!/bin/bash
NEWLINE(){
echo ""
}

USAGE(){
echo "This script is a common library for many bash tools."
}

TS(){
date +"%m-%d-%Y %T"
}


ERROR(){
if [ $# -gt 0 ]
then

  echo "Printing Error: "
  for arg in $*
  do
    echo "$*"
    break
  done

  else  
    echo "No argument provided to the script."
  
fi
}

###################################
# Main Script Logic Starts Here   #
###################################
case "$1" in
TS)
    TS
    ;;
-h)
    USAGE
    ;;
NEWLINE)
    NEWLINE
    ;;
ERROR)
    ERROR ${@:2}
    ;;
esac

