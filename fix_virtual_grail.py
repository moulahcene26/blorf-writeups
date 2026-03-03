import re

file_path = '/home/blorf26/Desktop/Cyber_Stuff/Comps_CTFs/blorf-writeups/src/content/blog/Virtual Grail/index.mdx'
with open(file_path, 'r') as f:
    content = f.read()

# Fix the broken closing tags from previous attempt
content = content.replace('</figure/>', '</figure>')
content = content.replace('</div/>', '</div>')

# Fix img tags to be self-closing
# Matches <img ... > where ... does not end with /
content = re.sub(r'(<img\s+[^>]+?)(?<!/)>', r'\1 />', content)

with open(file_path, 'w') as f:
    f.write(content)

print("Fixed Virtual Grail index.mdx")
