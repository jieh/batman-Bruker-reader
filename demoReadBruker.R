
source('~/readBrukerZipped.R')
source('~/readBruker.R')
# Read in multiple raw binary Bruker NMR spectra (1D) from a specified directory, 
# all the 1r files in that directory will be read in, the title files will also be read in, 
# and assigned as the column name to the corresponding specctrum column.
# The returned matrix has columns as the following format:
#         [ppm, spectrum1, spectrum2, ...]. 
# Interpolation may be performed if spectra have different ppm scales.
sa<-readBruker(BrukerDataDir)  
# or if zipped Bruker files, example files from: http://www.ebi.ac.uk/metabolights/MTBLS1
sa<-readBrukerZipped(BrukerDataZipDir)

