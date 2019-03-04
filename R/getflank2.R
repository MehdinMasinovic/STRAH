#' @title Extract a specified region of the (human) genome
#' @description This function extracts a specified region of the human genome with corresponding start and end position of the region under study.
#' @param species The human genome (version 19) is default but an alternative genome can be provided. For chimpanzees the parameter has to be BSgenome.Ptroglodytes.UCSC.panTro5 (given that the data is installed).
#' @param chrs A string reflecting the chromosome under study (starting with "chr" and adding either the integers from 1-22 or "X" respectively "Y"). This argument can also be a vector of strings to study several chromosomes.
#' @param start.position An integer value reflecting the start position of the region to be analyzed. If set to \code{NA} the analysis starts from the beginning of the chromosome.
#' @param end.position An integer value reflecting the end position of the region to be analyzed. If set to \code{NA} the analysis is performed until the end of the chromosome.
#' @return The DNA-sequence of the region under study (defined by the chromosome, start position and end position) is returned.
#' @author Philipp Hermann, \email{philipp.hermann@@jku.at}, Monika Heinzl, \email{monika.heinzl@@edumail.at}
#' Angelika Heissl, Irene Tiemann-Boege, Andreas Futschik
#' @seealso \code{\link{STR_analysis}}
#' @keywords datasets, array, list, methods, univar
#' @examples
#' getflank2(BSgenome.Hsapiens.UCSC.hg19::Hsapiens, "chr1", 1, 100000)
#' @references Heissl, A., et al. (2018) Length asymmetry and heterozygosity strongly influences the evolution of poly-A microsatellites at meiotic recombination hotspots. doi: https://doi.org/10.1101/431841
#' @export
getflank2 <- function(species, chrs, start.position, end.position) {
  rightflank <- Biostrings::getSeq(species, chrs, start.position, end.position)
  temp = paste(rightflank,sep="")
}