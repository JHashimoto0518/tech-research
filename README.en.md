# tech-research

[日本語](README.md) | **English**

A repository for researching and verifying AWS and other technologies with Claude Code.

Selectable tech stacks: Choose a dev container that contains only the tools you need for the research topic.

## Directory structure

```
tech-research/
├── .devcontainer/
│   ├── shared/
│   │   └── post-create.sh        # Setup shared by all stacks
│   ├── base/devcontainer.json    # Minimal (Claude Code)
│   └── <stack>/devcontainer.json # Any tech stack
├── research/
│   └── YYYY-MM-DD_<topic>/       # One directory per research topic
│       ├── intent.md             # Purpose and dev container used
│       ├── <topic>_report.md     # Research report
│       └── src/                  # Verification code
├── CLAUDE.md
└── README.md
```

Naming convention: Use `_` to separate elements and `-` to separate words within an element (for example, `2026-11-07_cdk-pipelines/cdk-pipelines_report.md`). Topic names use only lowercase letters, digits, and hyphens.

## Dev containers

| Configuration | Use case | Main tools |
|---|---|---|
| `base` | Verification with Claude Code | Claude Code |
| `cdk` | Verification with AWS CDK | Claude Code, Node.js (LTS), AWS CLI, AWS CDK CLI |

## Prerequisites

- Docker
- Visual Studio Code with the [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

## Usage

1. Clone the repository and open it in VS Code.

   ```bash
   git clone https://github.com/JHashimoto0518/tech-research.git
   code tech-research
   ```

2. Run **Dev Containers: Reopen in Container** from the Command Palette (`F1`).
3. Select the configuration for your research (for example, `tech-research: base`).
4. Once the container starts, run `claude` in the terminal to begin.

To switch to another configuration, use **Dev Containers: Switch Container** or **Dev Containers: Reopen in Container**.