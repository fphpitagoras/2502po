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

# Associative array for class content
declare -A contents
contents["aula_01-04-08-2025"]="Seção 1.1 - Introdução à pesquisa operacional"
contents["aula_02-11-08-2025"]="Seção 1.2 - Modelagem em pesquisa operacional"
contents["aula_03-18-08-2025"]="Seção 1.3 - Construção de modelos em pesquisa operacional"
contents["aula_04-25-08-2025"]="Seção 2.1 - Introdução à programação linear"
contents["aula_05-01-09-2025"]="Seção 2.2 - Método simplex"
contents["aula_06-08-09-2025"]="Seção 2.3 - Dualidade e análise de sensibilidade"
contents["aula_07-15-09-2025"]="Revisão para a Avaliação Oficial 1"
contents["aula_08-22-09-2025_oficial-1"]="AVALIAÇÃO OFICIAL 1 – Unidades 1 e 2"
contents["aula_09-29-09-2025"]="Seção 3.1 - Uso do Solver na resolução de problemas"
contents["aula_10-06-10-2025"]="Seção 3.2 - Aplicação da PO em problema de transporte"
contents["aula_11-13-10-2025"]="Seção 3.3 - Redes em PO"
contents["aula_12-20-10-2025"]="Seção 4.1 - Programação inteira"
contents["aula_13-27-10-2025"]="Seção 4.2 - Cadeia de Markov - simulação em PO"
contents["aula_14-03-11-2025"]="Seção 4.3 - Teoria das filas - simulação em PO"
contents["aula_15-10-11-2025"]="Revisão para a Avaliação Oficial 2"
contents["aula_16-17-11-2025_oficial-2"]="AVALIAÇÃO OFICIAL 2 – Unidades 1, 2, 3 e 4"
contents["aula_17-24-11-2025"]="Entrega das Avaliações"
contents["aula_18-01-12-2025_segunda-chamada"]="Avaliação de 2ª Chamada"
contents["aula_19-09-12-2025_exame-final"]="Exame Final"


total=${#dirs[@]}

for i in "${!dirs[@]}"; do
    dir=${dirs[$i]}
    content=${contents[$dir]}

    # e.g., aula_01-04-08-2025 -> Aula 01: 04-08-2025
    class_title=$(echo "$dir" | sed -E 's/aula_([0-9]{2})-([0-9]{2})-([0-9]{2})-([0-9]{4}).*/Aula \1: \2-\3-\4/')
    # Handle extra text like "oficial-1"
    extra_text=$(echo "$dir" | sed -n 's/.*_\(.*\)/\1/p' | sed 's/-/ /g')
     if [ -n "$extra_text" ]; then
        class_title="$class_title ($extra_text)"
    fi

    # Navigation
    prev_link_html=""
    if [ $i -gt 0 ]; then
        prev_dir=${dirs[$((i-1))]}
        prev_link_html="<a href=\"../$prev_dir/index.html\" class=\"text-blue-600 hover:underline font-medium\"> &larr; Aula Anterior</a>"
    fi

    next_link_html=""
    if [ $i -lt $((total-1)) ]; then
        next_dir=${dirs[$((i+1))]}
        next_link_html="<a href=\"../$next_dir/index.html\" class=\"text-blue-600 hover:underline font-medium\">Próxima Aula &rarr;</a>"
    fi

    # Create the HTML content
    cat <<EOF > "$dir/index.html"
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pesquisa Operacional - $class_title</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Inter', sans-serif;
        }
    </style>
</head>
<body class="bg-gray-50 text-gray-800">

    <!-- Header -->
    <header class="bg-white shadow-md">
        <div class="container mx-auto px-6 py-4">
            <div class="text-center">
                <h1 class="text-4xl font-bold text-gray-900">Pesquisa Operacional</h1>
                <p class="text-lg text-gray-600 mt-2">Prof. Felipe Heitmann</p>
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <main class="container mx-auto px-6 py-8">

        <!-- Class-specific Section -->
        <section class="bg-white p-6 rounded-lg shadow-lg mb-8">
            <h2 class="text-2xl font-bold mb-4 text-orange-600">$class_title</h2>
            <div class="p-4 bg-gray-100 rounded-lg">
                <h3 class="font-semibold text-lg mb-2">Conteúdo da Aula:</h3>
                <p class="text-gray-700 leading-relaxed">
                    $content
                </p>
            </div>

            <!-- Activities Section -->
            <div class="mt-6">
                <h3 class="text-xl font-bold mb-4 text-gray-800">Atividades</h3>
                <div class="bg-white p-4 rounded-lg shadow-inner border">
                    <p class="text-gray-500">Nenhuma atividade para esta aula ainda.</p>
                </div>
            </div>

             <div class="mt-6 p-4 bg-orange-100 border-l-4 border-orange-500 text-orange-700 rounded-md">
                <h3 class="font-bold">Contato do Professor</h3>
                <p><strong>E-mail:</strong> fphpitagoras@gmail.com</p>
                <p><strong>Telefone:</strong> (31) 97124-4499</p>
            </div>

            <!-- Navigation -->
            <div class="mt-8 flex justify-between items-center">
                <span>$prev_link_html</span>
                <a href="../index.html" class="text-gray-600 hover:underline font-medium">Página Principal</a>
                <span>$next_link_html</span>
            </div>
        </section>

    </main>

    <!-- Footer -->
    <footer class="bg-white mt-12 py-6 border-t">
        <div class="container mx-auto px-6 text-center text-gray-500">
            <p>&copy; 2025 - Prof. Felipe Heitmann. Todos os direitos reservados.</p>
        </div>
    </footer>

</body>
</html>
EOF
done

echo "HTML files refactored successfully."
