# lambda-BSgenome
 a BSgenome object of lambda sequence, 48K length

```
install.packages("devtools")
devtools::install_github("jia-whu-edu/lambda-BSgenome")
library(BSgenome.Hsapiens.tapslambda)

lambda <- BSgenome.Hsapiens.tapslambda

#> lambda
#| BSgenome object for custom
#| - organism: Homo sapiens
#| - provider: Ensembl
#| - genome: hg38
#| - release date: 2024-06-05
#| - 1 sequence(s):
#|     lambda
#|
#| Tips: call 'seqnames()' on the object to get all the sequence names, call 'seqinfo()' to get the full sequence info,
#| use the '$' or '[[' operator to access a given sequence, see '?BSgenome' for more information.

### 构建
```
samtools faidx lambda.fa
```
### 生成：
```
lambda  48502   8       60      61
```
### 构建
```
bedtools makewindows -g lambda.fa.fai -w 300 > lambda.300.bin.bed
```
### 计算R
```
bin <- "PATH/TO/lambda.300.bin.bed"
gr <- import(bin)

gr$gc <- biovizBase::GCcontent(lambda, gr)
```

