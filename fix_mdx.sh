#!/bin/bash
DIR="/home/blorf26/Desktop/Cyber_Stuff/Comps_CTFs/blorf-writeups/src/content/blog"

add_frontmatter() {
  local file=$1
  local title=$2
  local desc=$3
  local date=$4

  if [ "$(head -n 1 "$file")" != "---" ]; then
    echo "Adding to $file"
    sed -i "1s/^/---\ntitle: $title\ndescription: $desc\ndate: $date\n---\n\n/" "$file"
  else
    echo "Already has frontmatter: $file"
  fi
}

add_frontmatter "$DIR/Browsed/index.mdx" "HTB Browsed [MEDIUM]" "Browsed HTB Machine" "2026-02-19"
add_frontmatter "$DIR/Cap/index.mdx" "HTB Cap [EASY]" "Cap HTB Machine" "2026-02-15"
add_frontmatter "$DIR/Conversor/index.mdx" "HTB Conversor [EASY]" "Conversor HTB Machine" "2026-02-20"
add_frontmatter "$DIR/Facts/index.mdx" "HTB Facts" "Facts HTB Machine" "2026-02-19"
add_frontmatter "$DIR/Gavel/index.mdx" "HTB Gavel [MEDIUM]" "Gavel HTB Machine" "2026-02-23"
add_frontmatter "$DIR/Interpreter/index.mdx" "HTB Interpreter [MEDIUM]" "Interpreter HTB Machine" "2026-02-22"
add_frontmatter "$DIR/Twomillion/index.mdx" "HTB Twomillion [EASY]" "Twomillion HTB Machine" "2026-03-02"
add_frontmatter "$DIR/WingData/index.mdx" "HTB WingData" "WingData HTB Machine" "2026-02-16"

