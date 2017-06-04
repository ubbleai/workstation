#!/bin/bash


secrets=(
  ".aws"
  ".config/gcloud/application_default_credentials.json"
  ".docker/config.json"
  ".gnupg"
  ".ssh"
  ".netrc"
  ".zshenv-private"
)


function save() {
  current_pwd=$(pwd)

  pushd $HOME

  tar cvjf "secrets.tar.bz2" ${secrets[@]}

  mv secrets.tar.bz2 $current_pwd

  popd
}

function load() {
  cd /tmp
  mkdir -p dotfiles
  cd dotfiles
  attach_id=$(lpass show Dotfiles | grep "att-" | sed -E 's/^(.*):.*/\1/')
  lpass show Dotfiles --attach $attach_id
  tar xvzf secrets.tar.bz2
  rm secrets.tar.bz2
  rsync -av . ~/
}

echo $#
echo $1
echo $0
if [ $# -eq 1 ]
then
  echo $1
  if [ $1 == "--save" ]
  then
    echo "Saving ..."
    save
    exit 0
  elif [ $1 == "--load" ]
  then
    echo "Loading ..."
    load
    exit 0
  fi
fi

echo "./secrets.tar.bz2 --save to create an archive"
echo "./secrets.tar.bz2 --load to load from lpass"
