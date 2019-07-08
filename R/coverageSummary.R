viewProfile = function(v) {
  for(i in seq_along(v)) {
    stopifnot(length(unique(width(v[[1]])))==1)
  }

  rowSums(sapply(v, function(x) {as.vector(Reduce('+', x))}))
}



coverageSummary = function(gr, cvg, byStrand = TRUE,
                           seqlevs = intersect(seqlevels(gr), names(cvg))) {
  # all gr widths must be identical
  stopifnot(length(unique(width(gr)))==1)
  seqlev = seqlevs
  cvg = cvg[seqlev]
  seqlevels(gr, pruning.mode='coarse') = seqlev
  if(byStrand) {
    cvg_views_pos = Views(cvg, gr[strand(gr)=='+'])
    cvg_views_neg = Views(cvg, gr[strand(gr)=='-'])
    return(viewProfile(cvg_views_pos) + rev(viewProfile(cvg_views_neg)))
  } else {
    cvg_views = Views(cvg, gr)
    return(viewProfile(cvg_views))
  }
}
