import os
import re

directory = r"f:\Smartfusion\October\Oral_Hygiene"

rtl_button_pattern = re.compile(r'<button class="btn btn-outline-custom d-flex align-items-center justify-content-center px-2"[\s\n]*onclick="let dirTarget[^"]+"[\s\n]*title="Toggle RTL">RTL</button>', re.MULTILINE)
home2_link_pattern = re.compile(r'<li class="nav-item"><a class="nav-link(?:[^>]*)?" href="home-2\.html">Home2</a></li>\n?', re.MULTILINE)

for filename in os.listdir(directory):
    if filename.endswith(".html"):
        filepath = os.path.join(directory, filename)
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # Remove home2 link
        content = home2_link_pattern.sub('', content)
        
        # Remove RTL button
        content = rtl_button_pattern.sub('', content)
        
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(content)

# Delete home-2.html
home2_path = os.path.join(directory, 'home-2.html')
if os.path.exists(home2_path):
    os.remove(home2_path)

print("Done")
