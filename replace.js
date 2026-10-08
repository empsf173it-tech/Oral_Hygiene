const fs = require('fs');
const path = require('path');

const directory = 'f:/Smartfusion/October/Oral_Hygiene';

const rtlPattern = /<button class="btn btn-outline-custom d-flex align-items-center justify-content-center px-2"[\s\n]*onclick="let dirTarget[^"]+"[\s\n]*title="Toggle RTL">RTL<\/button>/g;
const home2Pattern = /<li class="nav-item"><a class="nav-link(?:[^>]*)?" href="home-2\.html">Home2<\/a><\/li>\n?/g;
const brandNamePattern1 = /Dental Clinic/g;
const brandNamePattern2 = />\s*Dental Clinic\s*</g;

function processDirectory(dir) {
    const files = fs.readdirSync(dir);
    
    for (const file of files) {
        const fullPath = path.join(dir, file);
        if (fullPath.endsWith('.html')) {
            let content = fs.readFileSync(fullPath, 'utf8');
            let initialContent = content;
            
            content = content.replace(rtlPattern, '');
            content = content.replace(home2Pattern, '');
            content = content.replace(brandNamePattern1, 'Premium Oral Care');
            
            if (initialContent !== content) {
                fs.writeFileSync(fullPath, content, 'utf8');
                console.log(`Updated ${file}`);
            }
        }
    }
}

processDirectory(directory);

const home2Path = path.join(directory, 'home-2.html');
if (fs.existsSync(home2Path)) {
    fs.unlinkSync(home2Path);
    console.log('Deleted home-2.html');
}
