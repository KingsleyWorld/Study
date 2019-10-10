#!/bin/bash

if [ ! $# -eq 1 ]; then
  echo "please select a source dir such as './configure.sh tmp.git'"
  echo "exit."
  exit
fi

if [ ! -d $1 ]; then
  echo "$1 is not exist !"
  echo "exit."
  exit
fi

if [ ! -f $1/configure ]; then
  if [ -f $1/autogen.sh ]; then
    cd $1
    echo "run $1/autogen.sh"
    ./autogen.sh
    cd ..
  else
    echo "$1/configure is missing ."
    echo "exit."
    exit
  fi
fi

echo "start configure ..."

if [ ! -d "Build" ]; then
  mkdir Build
else
  rm -rf Build/*
fi

cd Build
../$1/configure --prefix=/home/kingsley/.local
