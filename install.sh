#!/bin/sh

INSTALL_DIR=/opt/mac-ssh-askpass
export INSTALL_DIR

set -Cefu
cd -P "$(dirname "$0")" || exit

cat <<EOF
install.sh: ------------------------------------------------------
install.sh: Copying mac-ssh-askpass to: $INSTALL_DIR
install.sh:
install.sh: Press <Return> to confirm and <Ctrl>-<c> to cancel.
install.sh: I will likely have to ask you for your login password.
install.sh: ------------------------------------------------------
EOF

# shellcheck disable=2034,2162
read DUMMY

sudo -E sh -c 'set -Ceux
               mkdir -p            "$INSTALL_DIR"
               cp    -r *          "$INSTALL_DIR"
               chown -R root:wheel "$INSTALL_DIR"' || INSTALL_STATUS="$?"

if [ "${INSTALL_STATUS-0}" -ne 0 ]; then
    printf 'install.sh: Installation failed. You may want to delete %s.\n' \
           "$INSTALL_DIR" >&2
    exit 69
fi

[ -e ~/.bash_profile ]                             || exit 0
grep -q "PATH=.*:$INSTALL_DIR/bin" ~/.bash_profile && exit 0
set -x
# shellcheck disable=2016
printf '\nexport PATH="$PATH:%s/bin"\n' "$INSTALL_DIR" >> ~/.bash_profile
