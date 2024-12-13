# Este comando constrói o índice de alinhamento a partir do arquivo de referência (reference.fasta) 
# usando o Bowtie. O índice gerado será salvo como 'reference_index', 
# que será usado posteriormente para alinhar as sequências com mais eficiência.
bowtie-build reference.fasta reference_index

# Este comando realiza o alinhamento das sequências do arquivo 'sample.fasta' contra o índice de referência 'reference_index' usando 
o Bowtie.
# - ⁠ -f ⁠: Especifica que o arquivo de entrada está no formato FASTA.
# - ⁠ -S ⁠: Gera a saída no formato SAM (Sequence Alignment/Map).
# - ⁠ -a ⁠: Permite que múltiplos alinhamentos sejam reportados para uma única sequência, se necessário.
# - ⁠ -v 0 ⁠: Permite até 0 discrepâncias (erros de alinhamento).
# - ⁠ -p 3 ⁠: Usa 3 núcleos de CPU para acelerar o processo de alinhamento.
# - ⁠ -t ⁠: Exibe estatísticas de tempo de execução detalhadas durante o alinhamento.
# A saída do alinhamento é direcionada para 'sample.sam' e os logs do processo são registrados em 'sample_bowtie.log'.
bowtie -f -S -a -v 0 -p 3 -t reference_index sample.fasta > sample.sam 2> sample_bowtie.log
