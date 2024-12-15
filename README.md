# lambda-BSgenome
 a BSgenome object of lambda sequence, 48K length

```
install.packages("devtools")
devtools::install_github("jia-whu-edu/lambda-BSgenome")
library(BSgenome.Hsapiens.tapslambda)

lambda <- BSgenome.Hsapiens.tapslambda
```

## 计算lambda的GC含量
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

