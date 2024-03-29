#!/usr/bin/env bash
# shellcheck disable=SC1090,SC1091
#
# Actions for managing vscode settings.

set -e

source "$DOTFILES_DIRECTORY/lib/utils"

# target="$DOTFILES_DIRECTORY/vscode/merged.log"
target_dir="${HOME}/Library/Application Support/Code/User"
target="${target_dir}/settings.json"
base="${DOTFILES_DIRECTORY}/vscode/settings.json"
ext="${DOTFILES_EXT_DIRECTORY}/vscode_settings.json"


#######################################
# Given the base dotfiles settings json, and 
# any potential extension settings, creates
# a merged settings json file.
# Globals:
#   base
#   ext
# Arguments:
#   None
# Outputs:
#   Extended settings json to stdout.
#######################################
function create_extended_settings() {
  if [ -f "$ext" ]; then
    merge_json <(strip_comments "$base") <(strip_comments "$ext")
  else
    jq . <(strip_comments "$base")
  fi
}

#######################################
# Diffs the merged base and extensions settings
# with the current settings used by vscode.
# Globals:
#   target
# Arguments:
#   None
# Outputs:
#   Diff with settings currently used by vscode to stdout.
#######################################
function show_diff_with_current() {
  local source
  source=$(create_extended_settings)
  pretty_diff <(echo "$source") "$target"
}

#######################################
# Given the base dotfiles settings json, and 
# any potential extension settings, will create
# the final settings file and install it.
# Globals:
#   target
# Arguments:
#   None
# Outputs:
#   0 if installation was successful, non-zero on error.
#######################################
function install_vscode_settings() {
  e_header "Starting vscode settings installation"
  if ! type_exists 'code'; then
    e_error "VSCode appears to not be installed - exiting without installing vscode settings."
    return 1
  fi

  local source settings_diff
  source=$(create_extended_settings)

  # Check if resolved 'source' has diff with 'target'
  if ! settings_diff="$(pretty_diff <(echo "$source") "$target")"; then
    seek_confirmation "A diff has been detected with the dotfiles settings.json and current vscode settings.json. Do you want to view it?"
    if is_confirmed; then
      echo "$settings_diff"
    fi
  fi

  e_header "Preparing to copy settings.json to destination..."
  seek_confirmation "Warning: This will overwrite the existing vscode settings.json."

  if is_confirmed; then
    # Install final settings.json -> exit if success
    mkdir -p "$target_dir"
    cp <(echo "$source") "$target"
    if [[ $? ]]; then
      e_success "Installed vscode settings successfully."
      return 0
    else
      e_error "Encountered error copying settings to destination." 
      return 1
    fi
  fi

  e_warning "Finished without installing vscode settings."
  return 0
}

# Run action based on provided argument
case $1 in
  create) create_extended_settings ;;
  diff) show_diff_with_current ;;
  install) install_vscode_settings ;;
  *)
    e_error "Error: invalid argument $1"
    exit 1
    ;;
esac
