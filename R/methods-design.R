#' Design Formula Accessor
#'
#' @rdname design
#' @name design
#' @author Michael Steinbaugh
#'
#' @importFrom DESeq2 design design<-
#'
#' @inherit DESeq2::design
#'
#' @param object Object.
#'
#' @seealso
#' - [BiocGenerics::design].
#' - [DESeq2::design].
#'
#' @examples
#' bcb <- examples[["bcb"]]
#' design(bcb)
#'
#' # Assignment support
#' design(bcb) <- formula(~group)
#' design(bcb)
NULL



# Methods ====
#' @rdname design
#' @export
setMethod(
    "design",
    signature("bcbioRNASeq"),
    function(object) {
        dds <- bcbio(object, "DESeqDataSet")
        design(dds)
    })



#' @rdname design
#' @importFrom DESeq2 DESeq
#' @export
setMethod(
    "design<-",
    signature(object = "bcbioRNASeq",
              value = "formula"),
    function(object, value) {
        dds <- bcbio(object, "DESeqDataSet")
        design(dds) <- value
        dds <- DESeq(dds)
        bcbio(object, "DESeqDataSet") <- dds
        validObject(object)
        object
    })