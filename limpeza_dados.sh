# Avaliação de qualidade das leituras com FastQC
fastqc SRRXXXXXXX.fastq

# O FastQC é uma ferramenta de controle de qualidade que fornece uma análise abrangente dos dados de sequenciamento,
# incluindo verificações para pontuações de qualidade das leituras, conteúdo de GC, níveis de duplicação de sequências e contaminação 
por adaptadores.

# Para fazer a limpeza e cortar a sequências de baixa qualidade com Trim Galore
trim_galore --fastqc -q 25 --trim-n --max_n 0 -j 1 --length 18 --dont_gzip SRRXXXXXXX.fastq

# - ⁠ --fastqc ⁠: Executa o FastQC no arquivo de entrada e no arquivo após o corte para avaliar a qualidade.
# - ⁠ -q 25 ⁠: Descarta bases com uma pontuação de qualidade abaixo de 25.
# - ⁠ --trim-n ⁠: Remove qualquer base "N" da leitura.
# - ⁠ --max_n 0 ⁠: Remove leituras que contenham mais de 0 bases "N".
# - ⁠ -j 1 ⁠: Usa 1 núcleo de CPU para o processo de corte (sem processamento paralelo).
# - ⁠ --length 18 ⁠: Descarta leituras com menos de 18 bases após o corte.
# - ⁠ --dont_gzip ⁠: Não compacta os arquivos de saída com gzip.
