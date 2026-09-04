#!/usr/bin/env bash
# Design Workflow scaffolder.
# Stamps the design stack (PRODUCT.md, DESIGN.md, CLAUDE.md protocol, and the
# Impeccable skill) into a target project so its DESIGN.md/PRODUCT.md and the
# /impeccable commands + detector are active there.
#
# Usage:
#   ./scaffold-design.sh /path/to/project        # stamp the stack (skips files that exist)
#   ./scaffold-design.sh /path/to/project --force # overwrite existing DESIGN.md/PRODUCT.md/CLAUDE.md
#
# The canonical source defaults to this repo; override with DESIGN_WORKFLOW_SRC.

set -euo pipefail

SRC="${DESIGN_WORKFLOW_SRC:-/Users/dan.gregoras/developer/Design Workflow}"
DST="${1:-}"
FORCE="${2:-}"

if [ -z "$DST" ]; then
  echo "Usage: $0 /path/to/project [--force]" >&2
  exit 1
fi
if [ ! -f "$SRC/DESIGN.md" ]; then
  echo "Error: canonical source not found at '$SRC'. Set DESIGN_WORKFLOW_SRC." >&2
  exit 1
fi

mkdir -p "$DST/.claude/skills" "$DST/.claude/agents"

copy_doc () {
  local name="$1"
  if [ -f "$DST/$name" ] && [ "$FORCE" != "--force" ]; then
    echo "  skip  $name (exists; use --force to overwrite)"
  else
    cp "$SRC/$name" "$DST/$name"
    echo "  copy  $name"
  fi
}

echo "Stamping Design Workflow stack into: $DST"
copy_doc "PRODUCT.md"
copy_doc "DESIGN.md"
copy_doc "CLAUDE.md"

# Skill + agents are always refreshed (they are tooling, not editable content).
rm -rf "$DST/.claude/skills/impeccable"
cp -R "$SRC/.claude/skills/impeccable" "$DST/.claude/skills/"
echo "  sync  .claude/skills/impeccable"
if ls "$SRC/.claude/agents/"*.md >/dev/null 2>&1; then
  cp "$SRC/.claude/agents/"*.md "$DST/.claude/agents/" 2>/dev/null || true
  echo "  sync  .claude/agents"
fi
if [ -f "$SRC/.claude-plugin/plugin.json" ]; then
  mkdir -p "$DST/.claude-plugin"
  cp "$SRC/.claude-plugin/plugin.json" "$DST/.claude-plugin/"
fi

echo
echo "Validating design system..."
( cd "$DST" && npx -y @google/design.md lint DESIGN.md >/dev/null 2>&1 \
  && echo "  DESIGN.md lint: passed" \
  || echo "  DESIGN.md lint: review needed (run: npx @google/design.md lint DESIGN.md)" )

echo
echo "Done. The stack is active in $DST."
echo "Next: edit PRODUCT.md and DESIGN.md for this project, then reload your agent so it reads CLAUDE.md."
