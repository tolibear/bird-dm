#!/bin/bash
set -e

echo "🐦 Installing bird-dm..."

# Check bun is installed (required for Chrome cookie extraction)
if ! command -v bun &> /dev/null; then
    echo "❌ bun required for Chrome cookie extraction"
    echo "   Install with: curl -fsSL https://bun.sh/install | bash"
    exit 1
fi

# Check bird is installed
if ! command -v bird &> /dev/null; then
    echo "⚠️  bird CLI not found. Install with:"
    echo "   brew install steipete/tap/bird"
    echo "   or: npm install -g @steipete/bird"
fi

# Install bird-dm globally
echo "📦 Installing from npm..."
npm install -g bird-dm

echo "✅ Installed: bird-dm"
echo ""
echo "Usage:"
echo "  bird-dm inbox           # List conversations"
echo "  bird-dm read <id>       # Read messages"
