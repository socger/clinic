#!/bin/sh 

# path to lazbuild
export lazbuild=/home/sash0k/develop/lazarus/lazbuild
export lcl=gtk2

# Set up widgetset: gtk or gtk2 or qt
if [ $2 ]
  then export lcl=$2
fi
if [ $lcl ] && [ $CPU_TARGET ]
  then export LCL_ARCH=$(echo "--widgetset=$lcl")" "$(echo "--cpu=$CPU_TARGET")
elif [ $lcl ]
  then export LCL_ARCH=$(echo "--widgetset=$lcl")
elif [ $CPU_TARGET ]
  then export LCL_ARCH=$(echo "--cpu=$CPU_TARGET")
fi

build()
{
  $lazbuild clinic.lpi $LCL_ARCH
  strip build/clinic
}


clean()
{
  rm -rf out/*
  rm build/clinic
  # Clean up all temporary files
  find . -iname '*.compiled' -delete
  find . -iname '*.ppu' -delete
  find . -iname '*.o' -delete
  echo "make clean finished."
}


case $1 in
  clean)  clean;;
      *)  build;;
esac
