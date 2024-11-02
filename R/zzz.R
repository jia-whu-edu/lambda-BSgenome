###
###

.pkgname <- "BSgenome.Hsapiens.tapslambda"

.seqnames <- NULL

.circ_seqs <- "chrM"

.mseqnames <- NULL

.onLoad <- function(libname, pkgname)
{
    if (pkgname != .pkgname)
        stop("package name (", pkgname, ") is not ",
             "the expected name (", .pkgname, ")")
    extdata_dirpath <- system.file("extdata", package=pkgname,
                                   lib.loc=libname, mustWork=TRUE)

    ## Make and export BSgenome object.
    bsgenome <- BSgenome(
        organism="Homo sapiens",
        common_name="custom",
        genome="hg38",
        provider="Ensembl",
        release_date="2024-06-05",
        source_url="NA",
        seqnames=.seqnames,
        circ_seqs=.circ_seqs,
        mseqnames=.mseqnames,
        seqs_pkgname=pkgname,
        seqs_dirpath=extdata_dirpath
    )

    ns <- asNamespace(pkgname)

    objname <- pkgname
    assign(objname, bsgenome, envir=ns)
    namespaceExport(ns, objname)

    old_objname <- "Lambda"
    assign(old_objname, bsgenome, envir=ns)
    namespaceExport(ns, old_objname)
}

