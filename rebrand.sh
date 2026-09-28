#!/bin/bash
# Mass rebrand: re:extera → Ne:Extera, re_extera → ne_extera

# String replacements in all files
find . -type f \( -name "*.java" -o -name "*.py" -o -name "*.md" -o -name "*.gradle" -o -name "*.yml" -o -name "*.xml" -o -name "*.pro" \) \
  -not -path "./.git/*" \
  -exec sed -i 's/re:extera/Ne:Extera/g' {} + \
  -exec sed -i 's/re_extera/ne_extera/g' {} + \
  -exec sed -i 's/reextera/neextera/g' {} + \
  -exec sed -i 's/ReExtera/NeExtera/g' {} +

# Rename package directories
if [ -d "src/main/java/ni/shikatu/re_extera" ]; then
  mv src/main/java/ni/shikatu/re_extera src/main/java/ni/shikatu/ne_extera
fi

if [ -d "src/androidTest/java/ni/shikatu/re_extera" ]; then
  mv src/androidTest/java/ni/shikatu/re_extera src/androidTest/java/ni/shikatu/ne_extera
fi

if [ -d "src/test/java/ni/shikatu/re_extera" ]; then
  mv src/test/java/ni/shikatu/re_extera src/test/java/ni/shikatu/ne_extera
fi

echo "Rebrand complete!"
