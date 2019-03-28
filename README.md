# syntaxr
An R package for generating bulk SPSS syntax from the R environment.

## Description
This package was designed for bulk transformation of variables, and is especially suited for large databases.
**syntaxr** provides enhanced flexibility for manipulating variables outside of SPSS.

## Currently includes
**syntaxr (v. 0.8.0)** currently provides functions for the following SPSS commands :
- COMPUTE (CONCAT()). (with STRING creation)
- COMPUTE (MAX()).
- RENAME VARIABLES().
- STRING().
- RTRIM(). (formatting only - no saved output)

## Badges
[![Travis build status](https://travis-ci.org/greenmeen/syntaxr.svg?branch=master)](https://travis-ci.org/greenmeen/syntaxr)
[![Coverage status](https://codecov.io/gh/greenmeen/syntaxr/branch/master/graph/badge.svg)](https://codecov.io/github/greenmeen/syntaxr?branch=master)
[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
