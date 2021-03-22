# this is a proposed script to make the data resource that we want,
# which is a data.frame derived from a snapshot of EBI GWAS catalog,
# that we are currently hosting on AWS S3 funded by Bioconductor Foundation

# script was prescribed by 
# https://bioconductor.org/packages/release/bioc/vignettes/AnnotationHubData/inst/doc/CreateAnAnnotationPackage.html
# but it is not clear how the script could use metadata fields to identify
# what it will do

#here i need the code that was used to create/ download the data.

#table.url = paste([Location_prefix], [Rdatapath])
library(readr)
table.url = "http://s3.amazonaws.com/biocfound-gwascat/gwascat_38_2020_11_01.tsv.gz"
tf = tempfile()

 tst = try(download.file(table.url, destfile=tf))
 if (inherits(tst, "try-error")) stop("could not complete download")

 ct = readr::cols(
  .default = col_character(),
  `DATE ADDED TO CATALOG` = col_date(format = ""),
  PUBMEDID = col_double(),
  DATE = col_date(format = ""),
  CHR_ID = col_character(),
  CHR_POS = col_double(),
  UPSTREAM_GENE_DISTANCE = col_double(),
  DOWNSTREAM_GENE_DISTANCE = col_double(),
  MERGED = col_double(),
  SNP_ID_CURRENT = col_double(),
  INTERGENIC = col_double(),
  `P-VALUE` = col_double(),
  PVALUE_MLOG = col_double(),
  `OR or BETA` = col_double()
)

 tab = readr::read_tsv(tf, col_types=ct) #, sep="\t", header=TRUE, check.names=FALSE, stringsAsFactors=FALSE)
 message(paste0("formatting gwaswloc instance..."))
 tab = as.data.frame(tab)

