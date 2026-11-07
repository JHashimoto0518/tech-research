# tech-research

**日本語** | [English](README.en.md)

Claude Code を使って、AWS をはじめとする技術の調査と動作検証を行うためのリポジトリです。

技術スタックの選択: 調査対象に合わせて必要なツールだけを入れた開発コンテナを選んで起動できます。

## ディレクトリ構成

```
tech-research/
├── .devcontainer/
│   ├── shared/
│   │   └── post-create.sh        # 全スタック共通の初期化処理
│   ├── base/devcontainer.json    # 最小構成（Claude Code）
│   └── <stack>/devcontainer.json # 任意の技術スタック
├── research/
│   └── YYYY-MM-DD_<topic>/       # 調査テーマごとのディレクトリ
│       ├── intent.md             # 調査の目的と使用する開発コンテナ
│       ├── <topic>_report.md     # 調査レポート
│       └── src/                  # 検証用コード
├── CLAUDE.md
└── README.md
```

命名規則: 要素の区切りには `_`、要素の中の単語の区切りには `-` を使います（例: `2026-11-07_cdk-pipelines/cdk-pipelines_report.md`）。テーマ名には英小文字・数字・ハイフンのみを使います。

## 開発コンテナ

| 構成名 | 用途 | 主なツール |
|---|---|---|
| `base` | Claude Code を使った検証 | Claude Code |
| `cdk` | AWS CDK を使った検証 | Claude Code, Node.js (LTS), AWS CLI, AWS CDK CLI |

## 前提条件

- Docker
- Visual Studio Code と [Dev Containers 拡張機能](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

## 使い方

1. リポジトリをクローンし、VS Code で開きます。

   ```bash
   git clone https://github.com/JHashimoto0518/tech-research.git
   code tech-research
   ```

2. コマンドパレット（`F1`）から **Dev Containers: Reopen in Container** を実行します。
3. 一覧から調査に使う構成（例: `tech-research: base`）を選びます。
4. コンテナが起動したら、ターミナルで `claude` を実行して調査を始めます。

別の構成に切り替えるときは、**Dev Containers: Switch Container** または **Dev Containers: Reopen in Container** を使います。