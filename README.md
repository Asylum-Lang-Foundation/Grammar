# Grammar
ANTLR4 grammar and build tools for the Asylum Language. Asylum Programming Language discord server: https://discord.gg/cn5wmz6SqA

## Background
Compilers use tokenizers, lexers, and parsers in order to read code from an input stream, and output an AST or Abstract Syntax Tree. A tokenizer takes the input code and divides symbols into "tokens". For example, "for", "if", "fn", "+", and a variable name can all be said to be tokens. A lexer reads these tokens into valid "sentences" such as "x += 5;". From there, a parser takes these "sentences" and converts them into an AST, which the compiler (StraitJacket) could then use to compile the code into working LLVM IR or machine code.

## Purpose Of Grammar File
As you could imagine, creating a tokenizer, parser, and lexer for Asylum from scratch would take a lot of time, and doing this in a successful, easy to read, and optimal way can be difficult. Luckily there exists libraries that do all of this for us, such as ANTLR4. Of course, ANTLR4 is not going to understand the rules of the language or how to create an AST from an input by itself. That's why it needs what is called a grammar file (Asylum.g4) to describe all the rules of the language to ANTLR4. If you wish to know how to read and write one, see [here](https://gota7.github.io/GotaGuide/ProgrammingLanguage/Grammar.html). From this grammar file, ANTLR4 can then generate code in any of its supported target languages that can be used to read the code in our language and convert it to an AST.

## Setting Up ANTLR4/Java
Currently supported platforms for testing/compiling the grammar are Windows and Linux. In Linux, you must have java installed and have ANTLR4 3.9.2 located as `/usr/local/lib/antlr-4.9.2-complete.jar`. For Windows, it is at `C:\Javalib\antlr-4.9-complete.jar` but the batch scripts are hardcoded to use the java tools in `C:\Program Files\Java\jdk-11.0.1\bin`, which you will probably have to edit for your system. This should be fixed in the future.

## Use
If you wish to work on the grammar, I highly recommend using Visual Studio Code with the ANTL4 extension. There are two scripts that are utilized: run and compile. Run will produce output in a `bin` folder, and compile will produce output in `compile`. You use the run script to run ANTLR4's tree visualization on an input file, relative to the `bin` folder (so running it in the repo's root directory will look like `run.sh ../Test.asy`). Compiling will produce files in `build` that are directly copied and pasted to the StraitJacket compiler's Grammar folder. A copy of `Asylum.g4` is also copied too as it takes longer to implement compiler features compared to grammar features, so the grammar in the compiler may be lagging behind.

## Asylum Clean Instructions
Use is pretty similar to the regular language, with a few differences. The first thing is that all the scripts have `clean` in the name. The second, is that `antlr-denter-1.2-SNAPSHOT.jar` must be part of your Java CLASSPATH in order to work with this new grammar. When compiling, files are built to `buildClean`.
