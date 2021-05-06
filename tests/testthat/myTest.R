library(AnnotationHub)
library(testthat)
context('check nrow')
test_that("nrow value as expected", {
ah = AnnotationHub()
ent = query(ah, "gwascatData")
cand = names(ent)[1]
tab = ah[[cand]]
expect_true(nrow(tab) == [251401])
})




