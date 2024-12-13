# Melhorando o codigo

# Loop sobre todos os arquivos FASTA no diretório atual e realiza o alinhamento para cada um
for sample in *.fasta; do
    # Extrai o nome do arquivo sem a extensão .fasta
    sample_name=$(basename "$sample" .fasta)
    
    # Executa o alinhamento com o Bowtie usando as opções avançadas
    bowtie -f -S -a -v 2 -p 4 --best --strata --minins 20 --maxins 500 --sam-noqname reference_index "$sample" > "${sample_name}.sam" 
2> "${sample_name}_bowtie.log"
    
    # Imprime uma mensagem indicando que o alinhamento para o arquivo foi concluído
    echo "Alinhamento concluído para $sample_name"
done
