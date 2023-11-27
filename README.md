# README
* Author: Michael De Santis
* CUID: 101213450
* Date: 2023/11/26

## Table of Contents
* [Description](#description)
* [Video](#video)
* [Database Operations](#operations)
* [Build](#build)
* [Usage](#usage)
* [Contents](#contents)
* [Notes](#notes)

<a id="description"></a>
## Description
A Health and Fitness Club Management System, which provides a graphical client to manage a PostgreSQL database. Written in Java, and using the JDBC driver.

<a id="video"></a>
## Video
Please find a very brief demonstrative video of the application [here](TODO).

<a id="operations"></a>
## Database Operations
A brief description of the database operations available to the client.

<a id="build"></a>
## Build

### Build with an IDE
1. Direct your preferred IDE to this directory, and add the source files from the enclosed `src/` directory as build targets, and also add the external libraries in `lib/`.
2. From within your IDE, you may execute the main method in the `Main` class to execute the program.
3. Alternatively, you may compose an executable JAR file, specifying the `Main` class as containing the main method for your manifest. This JAR may be executed in your configured Java Virtual Machine from within your file system, or through your IDE.
__Note__: I have tested my code in the IntelliJ IDE for functionality.

### Build with `make`
Procedures to build this project with `make` and run the resultant JAR on a Linux machine. __Note__: This build procedure may not be totally portable! I include it here because I prefer to develop in a terminal-emulator rather than an IDE, so it allows me to build and test quicker. Probably safer to build in your well-configured IDE!

#### Dependencies
* `make`
* `openjdk`

#### Build
To build this project with `make`, issue the following command from this directory. 
```bash
$ make
```
This process will result in an executable JAR file, `main.jar`, which may be found in the created `makeout/` directory. This JAR also contains the Java source code and compiled bytecode for the executable.

### Run
To execute the result JAR file under Java, issue the following command from this directory.
```bash
$ java -jar makeout/main.jar
```

<a id="usage"></a>
## Usage
TODO

<a id="contents"></a>
## Contents

### `doc/`
Project documentation, including the project report.

### `Makefile`
`make` rules for manual compilation of Java source code and creation of JAR without the need for IntelliJ.

### `MAKE-MANIFEST.MF`
Manifest required by `make` rules for JAR creation.

### `makeout/`
Output generated from `make` rules defined in this directory's `Makefile`. Useful for compilation and JAR creation outside of IntelliJ idea. Will only appear if the `make` rules are invoked.

### `lib/`
JAR libraries.

### `sql/`
PostgreSQL Data Definition Language and Data Manipulation Language files for creating and ;populating a sample instance of the relational database used in this project.

### `src/`
Java source files.

<a id="notes"></a>
## Notes
* This code has only been tested on a Linux machine.
* This project contains code adapted from demonstration code taken from Professor A. Orogat's GitHub repository, [COMP3005_DBMS](https://github.com/aorogat/COMP3005_DBMS/), which was provided as a reference in lecture. (Thanks for this, professor!)
* This project also contains code adapted from previous personal projects and my submission for this course's Assignment 4.

Thanks!!

