# CDPATH
export CDPATH=~:/Volumes/Doraminia

hello
# locales
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# pyenv
export PYENV_ROOT=/usr/local/var/pyenv

# Google Cloud SDK
export PATH=$PATH:/opt/homebrew-cask/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin

# Golang
export GOPATH=~/workspace
export PATH=$PATH:$GOPATH/bin

# Android
export ANDROID_SDK_ROOT=/usr/local/share/android-sdk
export ANDROID_NDK_HOME=/usr/local/opt/android-ndk

# Private env vars
. ~/.zshenv-private

# Google cloud sdk
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
