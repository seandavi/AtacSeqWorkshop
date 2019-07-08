subsetATACByInsertSize = function(atacReads) {
  atacReads_Open <- atacReads[insertSizes < 100, ]
  atacReads_MonoNuc <- atacReads[insertSizes > 180 & insertSizes < 240, ]
  atacReads_diNuc <- atacReads[insertSizes > 315 & insertSizes < 437, ]
  return(list(Open = atacReads_Open,
              MonoNuc = atacReads_MonoNuc,
              DiNuc = atacReads_diNuc))
}
