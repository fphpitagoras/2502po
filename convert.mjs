import fs from 'fs';
import path from 'path';

// Since local npm install is behaving unexpectedly, we'll fetch the libraries from a CDN.
const { marked } = await import('https://cdn.jsdelivr.net/npm/marked@12.0.2/+esm');
const { markedKatex } = await import('https://cdn.jsdelivr.net/npm/marked-katex-extension@1.1.2/+esm');


const markdownFilePath = process.argv[2];
if (!markdownFilePath) {
    console.error("Usage: node convert.mjs <markdown-file>");
    process.exit(1);
}

const markdown = fs.readFileSync(markdownFilePath, 'utf8');
const baseName = path.basename(markdownFilePath, '.md');
const dirName = path.dirname(markdownFilePath);
const htmlFilePath = path.join(dirName, `${baseName}.html`);

const aulaName = dirName.split('/')[0];
const aulaTitle = aulaName.replace(/_/g, ' ').replace(/-/g, '/');

marked.use(markedKatex({
    throwOnError: false
}));

const body = marked.parse(markdown);

const html = `
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pesquisa Operacional - ${aulaTitle} - ${baseName}</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.16.9/dist/katex.min.css" integrity="sha384-n8MVd4RsNIU0KOVEMcAgsccfgSLGbMHWquCILm8HIhdNQhpGtWP9DY/TO3SUrGuL" crossorigin="anonymous">
    <script defer src="https://cdn.jsdelivr.net/npm/katex@0.16.9/dist/katex.min.js" integrity="sha384-XjKyOOlGwcjNTAIQHIpgOno0Hl1YQqzUOEleOLALmuqehneUG+vnGctmUb0ZY0l8" crossorigin="anonymous"></script>
    <script defer src="https://cdn.jsdelivr.net/npm/katex@0.16.9/dist/contrib/auto-render.min.js" integrity="sha384-+VBxd3r6XgURycqtZ117nYw44OOcIax56Z4dCRWbxyPt0Koah1uHoK0o4+/RRE05" crossorigin="anonymous"
        onload="renderMathInElement(document.body);"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Inter', sans-serif;
        }
        .katex-display {
            display: block;
            margin: 1em 0;
            text-align: center;
        }
    </style>
</head>
<body class="bg-gray-50 text-gray-800">

    <header class="bg-white shadow-md">
        <div class="container mx-auto px-6 py-4">
            <div class="text-center">
                <h1 class="text-4xl font-bold text-gray-900">Pesquisa Operacional</h1>
                <p class="text-lg text-gray-600 mt-2">Prof. Felipe Heitmann</p>
            </div>
        </div>
    </header>

    <main class="container mx-auto px-6 py-8">
        <section class="bg-white p-6 rounded-lg shadow-lg mb-8">
            ${body}
        </section>
    </main>

    <footer class="bg-white mt-12 py-6 border-t">
        <div class="container mx-auto px-6 text-center text-gray-500">
            <p>&copy; 2025 - Prof. Felipe Heitmann. Todos os direitos reservados.</p>
        </div>
    </footer>

</body>
</html>
`;

fs.writeFileSync(htmlFilePath, html);
console.log(`Successfully converted ${markdownFilePath} to ${htmlFilePath}`);
