\name{BSgenome.Hsapiens.tapslambda}
\docType{package}

\alias{BSgenome.Hsapiens.tapslambda-package}
\alias{BSgenome.Hsapiens.tapslambda}
\alias{Lambda}

\title{Full genomic sequences for lambda}

\description{
  lambda
}

\details{
  
}

\note{
  This BSgenome data package was made from the following source data files:
  \preformatted{
NA
  }

  See \code{?\link[BSgenome]{BSgenomeForge}} and the BSgenomeForge
  vignette (\code{vignette("BSgenomeForge")}) in the \pkg{BSgenome}
  software package for how to create a BSgenome data package.
}

\author{The Bioconductor Dev Team}

\seealso{
  \itemize{
    \item \link[BSgenome]{BSgenome} objects in the \pkg{BSgenome}
          software package.

    \item The \code{\link[GenomeInfoDb]{seqinfo}} getter and
          \link[GenomeInfoDb]{Seqinfo} objects in the \pkg{GenomeInfoDb}
          package.

    \item The \code{\link[GenomeInfoDb]{seqlevelsStyle}} getter and
          setter in the \pkg{GenomeInfoDb} package.

    \item \link[Biostrings]{DNAString} objects in the \pkg{Biostrings}
          package.

    \item The \code{\link[BSgenome]{available.genomes}} function
          in the \pkg{BSgenome} software package.

    \item The BSgenomeForge vignette (\code{vignette("BSgenomeForge")})
          in the \pkg{BSgenome} software package for how to create a BSgenome
          data package.
  }
}

\examples{
BSgenome.Hsapiens.tapslambda
bsg <- BSgenome.Hsapiens.tapslambda
head(seqlengths(bsg))
seqinfo(bsg)

bst["lambda"]

## ---------------------------------------------------------------------
## Genome-wide motif searching
## ---------------------------------------------------------------------

## See the GenomeSearching vignette in the BSgenome software
## package for some examples of genome-wide motif searching using
## Biostrings and the BSgenome data packages:
if (interactive())
    vignette("GenomeSearching", package="BSgenome")
}

\keyword{package}
\keyword{data}
