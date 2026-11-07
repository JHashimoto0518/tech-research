#!/bin/bash

set -euo pipefail

# ~/.claude は devcontainer.json の mounts で named volume としてマウントしている。
# ベースイメージにこのディレクトリが存在しないため、マウント時に Docker デーモンが
# root 所有で作成する（新規ボリュームのルートも root:root になる）。
# このままでは vscode ユーザーで Claude Code の設定を書き込めないので、所有者を変更する。
#
# mkdir に sudo を付けているのは、root 所有の既存ディレクトリに対して mkdir -p が Permission denied で失敗するため。
sudo mkdir -p ~/.claude
sudo chown vscode:vscode ~/.claude
curl -fsSL https://claude.ai/install.sh | bash
