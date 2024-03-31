#!/bin/sh

# brew
which -s brew
if [[ $? != 0 ]] ; then
    echo "installing homebrew."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "homebrew already installed."
fi

# bazel
if ! brew ls --versions bazel &>/dev/null; then
    echo "installing bazel."
    brew install bazel
else
    echo "updating bazel."
    brew upgrade bazel
fi