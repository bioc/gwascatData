
metadata <- data.frame(
  Title = "gwascatData",
  Description = "text file in cloud with March 30 2021 snapshot of EBI/EMBL GWAS catalog",
  BiocVersion = "3.13",
  Genome = "GRCh38",
  SourceType = "TSV",
  SourceUrl = "http://www.ebi.ac.uk/gwas/api/search/downloads/alternative",
  SourceVersion = "03_30_2021",
  Species = "Homo sapiens",
  TaxonomyId = 9606 ,
  Coordinate_1_based = TRUE,
  DataProvider ="EBI/EMBL",
  Maintainer = "Sara Stankiewicz <Sara.Stankiewicz@channing.harvard.edu>",
  RDataClass = "character",
  DispatchClass = "data.frame",
  RDataPath = "gwascatData/gwascat-2021_03_30.Rda",
  Tags = "GWAS:GWAS catalog"
)

write.table(metadata, file = "metadata.csv", row.names=FALSE, sep=",")
