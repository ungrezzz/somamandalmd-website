# How to Set Up Session Memory in a New Cowork Project

Follow these steps whenever you start a new project and want Claude to maintain continuity across sessions and models.

---

## Step 1 — Select your project folder in Cowork

In the Claude desktop app, click the folder icon to select the folder where your project files live. This becomes your "workspace."

## Step 2 — Copy the two template files into your new project folder

From this `_cowork_templates/` folder, copy:
- `CLAUDE.md` → paste into your new project's root folder
- `SESSION_MEMORY.md` → paste into your new project's root folder

Then open both files and fill in the `[PLACEHOLDERS]` with your project-specific details.

## Step 3 — Update the Project Description in the Cowork UI

In the Claude desktop app:
1. Go to the Projects panel
2. Click the project → Edit description
3. Paste the following (customise the first line):

---
**START EVERY SESSION** by reading `SESSION_MEMORY.md` in the workspace folder before doing anything else. End every session by updating it.

[Add 2-3 sentences describing what this project is about and any critical rules Claude must follow.]
---

## Step 4 — That's it

From now on, every Cowork session in that project will:
1. Auto-read `CLAUDE.md` (because Claude Code reads it automatically from the workspace folder)
2. Which instructs Claude to read `SESSION_MEMORY.md`
3. Which gives Claude the full project history, no matter which model or session is used

---

## How the three pieces work together

| Mechanism | What it does | Who controls it |
|-----------|-------------|-----------------|
| `CLAUDE.md` | Auto-loaded by Claude at session start; tells Claude to read SESSION_MEMORY.md | You (edit the file) |
| `SESSION_MEMORY.md` | Running log of project context, documents, work done, next steps | Claude updates it; you can edit too |
| Project Description (Cowork UI) | Backup instruction injected into every session's system context | You (edit in the UI) |

All three are redundant on purpose — if one is missed, the others catch it.

---

## Tips

- **End every session** by asking Claude: *"Update the session memory file."* Claude will write a summary of what was done.
- **Switching models?** No problem — both Sonnet and Opus will read the same `SESSION_MEMORY.md` and pick up context.
- **The `KEY FACTS` section** in SESSION_MEMORY.md is especially useful — keep it as a crisp running list of the most important numbers, names, and decisions. This is the first thing to scan at the start of a new session.
- **Don't let it get too long.** If SESSION_MEMORY.md grows past ~200 lines, ask Claude to summarise and trim the WORK COMPLETED section, keeping only the key outcomes (not every action).
