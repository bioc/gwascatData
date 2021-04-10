#The data for the gwascat package is a  snapshot of the GWAS catalog that can be
#found on the National Human Genome Research Institute website. The code below
#is the exact code used to get the snapshot done on March 30 2021. The first
#line must be done in terminal.

#  wget http://www.ebi.ac.uk/gwas/api/search/downloads/alternative

# To get the snap shot of the GWAS data into R. Open R in the directory that the
# file alternative was put in and run the following command. The YYYY_MM_DD is
# the date the alternative file was downloaded.

library(data.table)
gwascat_tmp = data.table::fread("alternative")
gwascat_YYYY_MM_DD = as.data.table(gwascat_tmp)

save(gwascat_YYYY_MM_DD, file="gwascat_YYYY_MM_DD.Rda", compress=xz)


