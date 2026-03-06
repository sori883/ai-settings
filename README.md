# ai-settings

AIコーディングアシスタントの設定ファイルを一元管理するリポジトリ。

プロジェクトに必要な設定をコピーして利用する。

## ディレクトリ構成

```
ai-settings/
├── claude-code/          # Claude Code 用設定
│   ├── .claude/
│   │   ├── agents/       # サブエージェント定義（*.md）
│   │   ├── commands/     # カスタムコマンド（*.md）
│   │   ├── rules/        # コーディングスタイル・セキュリティ等のルール
│   │   └── skills/       # スキル定義（TDD, タスク管理, セキュリティレビュー等）
│   └── .mcp.json         # MCP サーバー設定（Serena, Context7）
│
└── copilot/              # GitHub Copilot 用設定
    └── .github/
        ├── copilot-instructions.md  # Copilot 向け指示
        ├── agents/       # エージェント定義（*.agent.md）
        ├── prompts/      # プロンプト定義（*.prompt.md）
        └── skills/       # スキル定義
```

## Claude Code

### エージェント

| エージェント | 役割 |
|---|---|
| architect | アーキテクチャ設計 |
| orchestrator | 複数エージェントの統合・調整 |
| planner | タスクの計画・分解 |
| code-reviewer | コードレビュー |
| security-reviewer | セキュリティレビュー |
| build-error-resolver | ビルドエラーの解決 |
| refactor-cleaner | リファクタリング |
| doc-updater | ドキュメント更新 |
| tech-docs-searcher | 技術ドキュメント検索 |

### カスタムコマンド

| コマンド | 用途 |
|---|---|
| `/plan` | タスク計画の作成 |
| `/tdd` | テスト駆動開発ワークフロー |
| `/code-review` | コードレビュー |
| `/build-fix` | ビルドエラーの修正 |
| `/refactor-clean` | リファクタリング |
| `/orchestrate` | マルチエージェントオーケストレーション |
| `/verify` | 検証ループ |
| `/e2e` | E2Eテスト |
| `/eval` | 評価フレームワーク |
| `/test-coverage` | テストカバレッジ確認 |
| `/update-docs` | ドキュメント更新 |
| `/checkpoint` | チェックポイント作成 |
| `/learn` | 学習・パターン記録 |
| `/evolve` | 進化的改善 |
| `/sessions` | セッション管理 |
| `/setup-pm` | プロジェクト管理セットアップ |
| `/skill-create` | スキル作成 |
| `/update-codemaps` | コードマップ更新 |
| `/instinct-*` | インスティンクト管理（import/export/status） |

### ルール

- **coding-style** - イミュータビリティ、ファイル構成、エラーハンドリング等のコーディング規約
- **security** - セキュリティチェックリスト、シークレット管理
- **patterns** - APIレスポンス形式、リポジトリパターン等の共通パターン
- **proactive-subagents-skills** - Skill/Subagentの積極活用ガイドライン

### MCP サーバー

- **Serena** - IDE連携用MCPサーバー
- **Context7** - ドキュメント検索用MCPサーバー

## GitHub Copilot

Claude Code と同等のエージェント・プロンプト・スキルを `.github/` ディレクトリ構成で提供。

### エージェント（`*.agent.md`）

| エージェント | 役割 |
|---|---|
| architect | アーキテクチャ設計 |
| orchestrator | 複数エージェントの統合・調整 |
| planner | タスクの計画・分解 |
| code-reviewer | コードレビュー |
| security-reviewer | セキュリティレビュー |
| build-error-resolver | ビルドエラーの解決 |
| refactor-cleaner | リファクタリング |
| doc-updater | ドキュメント更新 |
| tech-docs-searcher | 技術ドキュメント検索 |

### プロンプト（`*.prompt.md`）

| プロンプト | 用途 |
|---|---|
| plan | タスク計画の作成 |
| tdd | テスト駆動開発ワークフロー |
| code-review | コードレビュー |
| build-fix | ビルドエラーの修正 |
| refactor-clean | リファクタリング |
| orchestrate | マルチエージェントオーケストレーション |
| verify | 検証ループ |
| e2e | E2Eテスト |
| eval | 評価フレームワーク |
| test-coverage | テストカバレッジ確認 |
| update-docs | ドキュメント更新 |
| checkpoint | チェックポイント作成 |
| learn | 学習・パターン記録 |
| evolve | 進化的改善 |
| sessions | セッション管理 |
| setup-pm | プロジェクト管理セットアップ |
| skill-create | スキル作成 |
| update-codemaps | コードマップ更新 |
| instinct-import | インスティンクトインポート |
| instinct-export | インスティンクトエクスポート |
| instinct-status | インスティンクトステータス確認 |

## 使い方

1. 対象プロジェクトに必要な設定ファイルをコピーする
2. プロジェクトに合わせてルールやスキルをカスタマイズする
