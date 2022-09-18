#!/usr/bin/env bash

# See: https://github.com/greg0ire/git_template/blob/main/template/hooks/change_detector.sh

_ORIG_HEAD=$1
_HEAD=$2

function check_for_changed_files() {
  local hook_type="$1"
  local file="$2"
  local command="$3"
  local changed
  
  case $hook_type in
    post-checkout)
      # post-checkout (branch switch)
      changed="$(git diff "$_ORIG_HEAD" "$_HEAD" --stat -- "$file" | wc -l)"
      ;;
    post-merge)
      # post-merge (pull)
      changed="$(git diff 'HEAD@{1}' --stat -- "$file" | wc -l)"
      ;;
  esac

  if [ "$changed" -gt 0 ]; then
    eval "$command"
  fi
}

function package_json_has_changed() {
  printf "$(tput bold)$(tput setaf 55)Change to package.json detected! $(tput sgr0)Run $(tput bold) yarn install$(tput sgr0) to update\n"
}

# unset _HEAD
# unset _ORIG_HEAD
