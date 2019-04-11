## syntaxr
An R package for generating bulk SPSS syntax from the R environment.

[![Travis build status](https://travis-ci.org/greenmeen/syntaxr.svg?branch=master)](https://travis-ci.org/greenmeen/syntaxr)
[![Coverage status](https://codecov.io/gh/greenmeen/syntaxr/branch/master/graph/badge.svg)](https://codecov.io/github/greenmeen/syntaxr?branch=master)
[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

#### Description
`syntaxr` provides overall enhanced flexibility for variable manipulation, and facilitates the streamlining of SPSS dataset transformation.  
This package was designed for systematic transformation of variables, and is especially suited for large datasets that don't lend themselves to easy bulk manipulation. It can also be used to selectively apply SPSS functions to variables, according to simple or complex criteria.

#### Installation
Recommended installation is through CRAN : `install.packages('syntaxr')`.  
Alternatively, the latest development version can be installed with devtools : `devtools::install_github("greenmeen/syntaxr")`.

### Usage
#### Importing SPSS data
Here's some sample code that asks the user to select an SPSS datafile, loads the data with the `haven` package, and extracts variable names and types. You can also use the `foreign` package.
```r
# Load haven and select a file
library('haven')
dataset <- haven::read_spss(choose.files())

# Extract the vector containing all the variable names
vars <- names(dataset)
# Obtain the class of the first element of each variable
types <- lapply(dataset, function(x) class(x[[1]][[1]]))

# Summarize the information in a table
summary_table <- cbind(vars, types, make.row.names = FALSE)
colnames(summary_table) <- c("Variable Name", "Variable Type")
```

### Currently includes
**syntaxr (v. 0.8.0)** currently provides functions for the following SPSS commands :
- COMPUTE (CONCAT()). (with STRING creation)
- COMPUTE (MAX()).
- RENAME VARIABLES().
- STRING().
- RTRIM().
