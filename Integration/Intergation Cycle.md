# Integration Cycle
This document describes the integration cycle for Eclipse. It outlines the steps and processes involved in integrating hardware, softwere and electronics into th eproduct.

## Integration Steps


1. **part** Test eatch induvidual part is tested and verified to meet ProdSpec + SaftyMargin
2. **system** Integrate parts and test
3. **Product** Integrate system and test

The loop whil then be.

do tests acording to "intergration tests section"
if pass go up one level and start again.
afer all levls have bean tested and all tests have full report then we can know the system will work.


## intergration tests

tests are listed in order. not all tests will be used for all levels, but the tests should be used as a guide for what to test at each level.


ESD.md
ShakeAndBake.md
SpinTest.md
DropTest.md
TimeTest.md

## Report

A valid report must have the the folowing.
- name of tester and validator
- how it was tested
- data from test
- conclution
- signature

report template can be found at TODO(Test Raport.md)

# Changelog
|Name|Date|Change|
|-|-|-| 
|Gabriel Røer | 25-03-26 | Started doc|
