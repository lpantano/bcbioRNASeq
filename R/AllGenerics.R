#' S4 Generics
#'
#' @rdname AllGenerics
#' @name AllGenerics
#' @keywords internal
#'
#' @param object Object.
#' @param x Object.
#' @param i An integer or numeric scalar.
#' @param value Value to assign.
#' @param withDimnames A `logical`, indicating whether dimnames should be
#'   applied to extracted assay elements.
#' @param ... *Additional arguments (for the S4 generic definition).*
#'
#' @return No value.
NULL



#' @rdname prepareRNASeqTemplate
#' @export
setGeneric("prepareRNASeqTemplate", function(object, ...) {
    standardGeneric("prepareRNASeqTemplate")
})




#' @rdname tmm
#' @export
setGeneric("tmm", function(object) {
    standardGeneric("tmm")
})



#' @rdname tpm
#' @export
setGeneric("tpm", function(object) {
    standardGeneric("tpm")
})
