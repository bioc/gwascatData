
#its the tags that are causing there to be two lines need to make the tags be in one column.
metadata <- data.frame(
  Title = "gwascatData",
  Description = "text file in cloud with Nov 1 2020 snapshot of EBI/EMBL GWAS catalog",
  BiocVersion = "3.13",
  Genome = "GRCh38",
  SourceType = "TSV",
  SourceUrl = "http://www.ebi.ac.uk/gwas/api/search/downloads/alternative",
  SourceVersion = "11.1.2020",
  Species = "Homo sapiens",
  TaxonomyId = 9606 ,
  Coordinate_1_based = TRUE,
  DataProvider ="EBI/EMBL",
  Maintainer = "Sara Stankiewicz <reshs@channing.harvard.edu>",
  RDataClass = "character",
  DispatchClass = "data.frame",
  Location_Prefix = "http://s3.amazonaws.com/",
  RDataPath = "biocfound-gwascat/gwascat_38_2020_11_01.tsv.gz",
  #Tags = c("GWAS", "GWAS catalog")
  Tags = "GWAS:GWAS catalog"
)

write.table(metadata, file = "metadata.csv", row.names=FALSE, sep=",")
