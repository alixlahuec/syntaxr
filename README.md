# syntaxr
An R package for generating bulk SPSS syntax from the R environment.

## Description
This package was designed for bulk transformation of variables, and is especially suited for large databases.
**syntaxr** provides enhanced flexibility for manipulating variables outside of SPSS.

## Currently includes
**syntaxr (v. 0.5.0)** currently provides functions for the following SPSS commands :
- COMPUTE (CONCAT()). (with STRING creation)
- COMPUTE (MAX()).
- RENAME VARIABLES().
- STRING().
- RTRIM(). (formatting only - no saved output)

## Travis CI
[![Travis build status](https://travis-ci.org/greenmeen/syntaxr.svg?branch=master)](https://travis-ci.org/greenmeen/syntaxr)
