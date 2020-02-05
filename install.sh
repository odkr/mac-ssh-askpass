#!/bin/sh

INSTALL_DIR=/opt/mac-ssh-askpass
export INSTALL_DIR

set -Cefu

cd -P "$(dirname "$0")" || exit

cat <<EOF
install.sh: ================================================
install.sh: Copying mac-ssh-askpass to: $INSTALL_DIR
install.sh: I may have to ask you for your password.
install.sh: ------------------------------------------------
EOF

sudo -E sh -s <<EOF || exit
set -Ceux
mkdir -p "\$INSTALL_DIR"
cp -r * "\$INSTALL_DIR"
chown -R root:wheel "\$INSTALL_DIR"
EOF

[ -e ~/.bash_profile ] || exit 0
set -x
# shellcheck disable=2016
grep -q "PATH=.*:$INSTALL_DIR/bin" ~/.bash_profile || \
    printf '\nexport PATH="$PATH:%s/bin"\n' "$INSTALL_DIR" >> ~/.bash_profile