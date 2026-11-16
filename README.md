# 🛡️ SprintOPS

> **AI-Powered Sprint Orchestration & Operations**  
> *Agentic Jira Automation & Sprint Management System*

Developed by **Coder Coder** | 🚀 Find more projects at [CodinzHub Projects](https://www.codinzhub.com/projects)

---

## 📋 Overview

**SprintOPS** is an intelligent sprint orchestration and operations framework built for engineering leads, scrum masters, and development teams. Powered by AI agent orchestration and Atlassian Jira MCP integration, SprintOPS automates sprint scoping, backlog queue triage, team workload balancing, sprint health diagnostics, and daily standup preparation—while ensuring all mutations remain strictly guarded behind human approval gates.

---

## ✨ Key Capabilities

- 🎯 **Sprint Scope Shaping**: Assemble well-balanced sprint backlogs considering velocity and capacity.
- 🚦 **Backlog Queue Triage**: Classify raw issues into ready, blocked, unassigned, or duplicate items.
- ⚖️ **Workload Balancing**: Detect overloaded engineers and propose safe reassignment recommendations.
- 🔍 **Sprint Health Inspection**: Identify stale tickets, test bottlenecks, and review delays in real-time.
- ⚠️ **Delivery Risk Surfacing**: Uncover delivery threats before they turn into critical sprint blockers.
- ⏱️ **Daily Standup Briefs**: Generate concise, team-ready standup summaries highlighting movement and blockers.
- 🔐 **Human Approval Gates**: Enforces mandatory `--approved-by` authority verification for all Jira assignee mutations.

---

## 📋 Prerequisites

1. **Python 3.8+** (required for validation utilities and team-map parsing).
2. **Atlassian Jira MCP Server** (installed and configured in your agentic environment).
3. **Codex CLI** / Agent Framework (for automated CLI execution).

---

## 🛠️ Step-by-Step Setup

### Step 1: Configure the Team Map

SprintOPS uses a structured team map to evaluate assignee skills, capacity, WIP limits, and approval authority.

1. Navigate to the `references/` directory.
2. Copy `team-map.example.yaml` to `team-map.local.yaml`:
   ```bash
   cp references/team-map.example.yaml references/team-map.local.yaml
   ```
3. Open `team-map.local.yaml` and configure:
   * **Jira Board ID** and **Project Key** (default sample uses `CodinzHub`).
   * **Assigning Authorities** (e.g., Lead Engineer with authorized email).
   * **Team Directory** (list engineers, skills, capacity story points, and max WIP limits).

---

### Step 2: Initialize Python Virtual Environment

Validation scripts and approval authority checks use a dedicated virtual environment in the parent directory:

```bash
# From workspace root
python -m venv .venv-jira-tools
source .venv-jira-tools/bin/activate  # On Windows: .venv-jira-tools\Scripts\activate
pip install pyyaml
```

---

### Step 3: Install the Skill

Link SprintOPS into your local Codex / Agent framework:

```bash
./automation/sprintops-install-skill.sh
```

This symlinks the project folder into your local `~/.codex/skills/sprintops` directory while maintaining backward-compatible references.

---

### Step 4: Validate Configuration

Run the validator script to ensure team-map YAML syntax and skill definitions are correct:

```bash
./automation/sprintops-validate-skill.sh
```

---

## 🚀 Usage & Automation Workflows

Execute sprint operations using the pre-configured wrappers in `automation/`:

### 📥 Triage Backlog Queue
```bash
./automation/sprintops-triage-queue.sh
```

### 👤 Recommend Assignees
```bash
./automation/sprintops-suggest-owner.sh --issue-keys "PROJ-101"
```

### 🎯 Shape Sprint Scope
```bash
./automation/sprintops-shape-sprint.sh --board-id 1234
```

### ⚖️ Balance Team Load
```bash
./automation/sprintops-balance-load.sh --board-id 1234
```

### 🩺 Inspect Sprint Health
```bash
./automation/sprintops-inspect-sprint.sh --board-id 1234 --sprint-id 5678
```

### ⚠️ Surface Delivery Risks
```bash
./automation/sprintops-surface-risk.sh --board-id 1234 --sprint-id 5678
```

### 📊 Progress Pulse
```bash
./automation/sprintops-progress-pulse.sh --board-id 1234 --sprint-id 5678
```

### ☕ Daily Standup Brief
```bash
./automation/sprintops-standup-brief.sh
```

### 🔄 Retrospective Notes
```bash
./automation/sprintops-retro-notes.sh --sprint-id 5678
```

> [!IMPORTANT]
> All commands run in **dry-run mode** by default. To apply Jira assignee changes, pass:
> ```bash
> --apply --approved-by "Authorizer Name"
> ```

---

## ⏰ Automated Scheduling

Sample cron patterns are provided in [`automation/cron.example`](automation/cron.example) for automated daily standups, weekly scope shaping, and risk reviews.

---

## 🔒 Security & Safe Operations

- **Non-Destructive Defaults**: All operations execute in read-only / dry-run mode unless explicitly flagged with `--apply`.
- **Approval Gate**: Jira assignee updates are rejected unless approved by an authority listed in `team-map.local.yaml`.
- **Secret Protection**: `team-map.local.yaml`, `.env`, and audit output files are git-ignored to prevent credential leaks.

---

*Created by **Coder Coder** | [CodinzHub Projects](https://www.codinzhub.com/projects)*
