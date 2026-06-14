Haskell Run-Length Compression Utility

Overview

This project implements a Run-Length Encoding (RLE) compression and decompression system in Haskell. The application processes strings by identifying consecutive runs of repeated characters, converting them into a compact encoded representation, and reconstructing the original string when required.

The project was developed to explore core functional programming concepts, including recursion, pattern matching, list processing, and data transformation.

Features

* Detects consecutive runs of repeated characters
* Encodes strings using Run-Length Encoding (RLE)
* Decodes compressed representations back into the original text
* Supports complete compression and decompression workflows
* Uses recursive and functional programming techniques
* Processes character sequences efficiently through list operations

Technologies Used

* Haskell
* Functional Programming
* Recursive Algorithms
* List Processing

Implemented Functions

chomp
munch
runs
encode
flatten
compress
decode
expand
decompress

Learning Outcomes

Through this project, I gained practical experience in:

* Functional programming principles
* Recursive problem solving
* Pattern matching
* Higher-level data abstraction
* List manipulation and transformation
* Designing composable functions
* Building complete data processing pipelines

Example

Original String:

aaabbbccccdd

Compressed Representation:

a3b3c4d2

Decompressed Output:

aaabbbccccdd

About

This project demonstrates how functional programming techniques can be used to build a complete text compression and decompression system while maintaining clean, concise, and expressive code.
