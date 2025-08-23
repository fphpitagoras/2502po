#!/bin/bash

# Array of directory names
dirs=(
"aula_01-04-08-2025" "aula_02-11-08-2025" "aula_03-18-08-2025"
"aula_04-25-08-2025" "aula_05-01-09-2025" "aula_06-08-09-2025"
"aula_07-15-09-2025" "aula_08-22-09-2025_oficial-1" "aula_09-29-09-2025"
"aula_10-06-10-2025" "aula_11-13-10-2025" "aula_12-20-10-2025"
"aula_13-27-10-2025" "aula_14-03-11-2025" "aula_15-10-11-2025"
"aula_16-17-11-2025_oficial-2" "aula_17-24-11-2025"
"aula_18-01-12-2025_segunda-chamada" "aula_19-09-12-2025_exame-final"
)

# Total number of directories
total=${#dirs[@]}

# Loop through each directory
for i in "${!dirs[@]}"; do
  dir=${dirs[$i]}

  # Replace underscores with spaces for the title display
  title_display=$(echo "$dir" | sed 's/_/ /g' | sed 's/-/ /g')

  # Determine previous and next directories
  prev_link_html=""
  if [ $i -gt 0 ]; then
    prev_dir=${dirs[$((i-1))]}
    prev_link_html="<a href=\"../$prev_dir/index.html\">Aula Anterior</a>"
  else
    # Add a non-breaking space to maintain layout alignment
    prev_link_html="&nbsp;"
  fi

  next_link_html=""
  if [ $i -lt $((total-1)) ]; then
    next_dir=${dirs[$((i+1))]}
    next_link_html="<a href=\"../$next_dir/index.html\">Próxima Aula</a>"
  else
    # Add a non-breaking space to maintain layout alignment
    next_link_html="&nbsp;"
  fi

  # Create the HTML content
  cat <<EOF > "$dir/index.html"
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>$title_display</title>
    <style>
        body { font-family: sans-serif; margin: 2em; text-align: center; }
        h1 { text-transform: capitalize; }
        nav { margin-top: 2em; display: flex; justify-content: space-between; }
    </style>
</head>
<body>
    <h1>$title_display</h1>

    <p>Esta é a página da $title_display.</p>

    <nav>
        <span>$prev_link_html</span>
        <a href="../index.html">Voltar ao Início</a>
        <span>$next_link_html</span>
    </nav>
</body>
</html>
EOF
done

echo "HTML files created successfully."
