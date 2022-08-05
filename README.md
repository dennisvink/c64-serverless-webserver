# Commodore 64 Web Server running on AWS Lambda

## Introduction

The Commodore 64 was introduced in August 1982, and it had a huge impact on my future. My father had bought a Commodore 64 and a year or two later I spied a programming-savvy family member writing BASIC code. A week later I wrote my very first computer program (printing my name over and over again). The rest is history.

This project is an homage to the C64 and elevates technology of the early 80s to relevance in the modern day and age of cloud technology. I present to you the Commodore 64 Web Server, running on AWS Lambda.

## Demo

A demo of the C64 Web Server is available at https://c64.drvink.com/
It is a Python wrapper Lambda Function, invoking the cbmbasic runtime and returning the output, backed by API Gateway.

## Credit

Michael Steil and James Abbatiello extracted the C64 source code and created the cbmbasic project, which allows us to run C64 BASIC code natively.
This project utilizes their C64 runtime to run the BASIC code.

You can find their repository here: https://github.com/mist64/cbmbasic
