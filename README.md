Liquid Haskell doesn't check my Main.hs file and I'm not sure why. I can't find
any information on:

 "liquid: <command line>: cannot satisfy -package-id testproject-0.1.0.0-66TvLBWRheDCRZYaVOFcgn
    (use -v for more information)"

except this possibly related issue: https://github.com/spinda/liquidhaskell-cabal/issues/5

________________________________________________________________________________
```
testproject$ stack build --flag testproject:liquidhaskell

Warning: /home/.../testproject/testproject.cabal was modified manually. Ignoring /home/.../testproject/package.yaml in favor of the
         cabal file. If you want to use the package.yaml file instead of the cabal file, then please delete the cabal file.
testproject-0.1.0.0: build (lib + exe)
Log files have been written to: /home/.../testproject/.stack-work/logs/

--  While building custom Setup.hs for package testproject-0.1.0.0 using:
      /home/.../testproject/.stack-work/dist/x86_64-linux/Cabal-2.0.1.0/setup/setup --builddir=.stack-work/dist/x86_64-linux/Cabal-2.0.1.0 build lib:testproject exe:testproject-exe --ghc-options " -ddump-hi -ddump-to-file -fdiagnostics-color=always"
    Process exited with code: ExitFailure 1
    Logs have been written to: /home/.../testproject/.stack-work/logs/testproject-0.1.0.0.log

    Preprocessing library testproject-0.1.0.0...
    [2 of 2] Compiling Lib              ( src/Lib.hs, .stack-work/dist/x86_64-linux/Cabal-2.0.1.0/build/Lib.o )
    Preprocessing executable 'testproject-exe' for testproject-0.1.0.0...
    [1 of 1] Compiling Main             ( app/Main.hs, .stack-work/dist/x86_64-linux/Cabal-2.0.1.0/build/testproject-exe/testproject-exe-tmp/Main.o )
    Linking .stack-work/dist/x86_64-linux/Cabal-2.0.1.0/build/testproject-exe/testproject-exe ...
    LiquidHaskell Version 0.8.2.4, Git revision aec247c306bf4568c6b13629ebd6fa85550dee74
    Copyright 2013-18 Regents of the University of California. All Rights Reserved.


    **** DONE:  A-Normalization ****************************************************


    **** DONE:  Extracted Core using GHC *******************************************


    **** DONE:  Transformed Core ***************************************************


    **** DONE:  annotate ***********************************************************


    **** RESULT: SAFE **************************************************************
    LiquidHaskell Version 0.8.2.4, Git revision aec247c306bf4568c6b13629ebd6fa85550dee74
    Copyright 2013-18 Regents of the University of California. All Rights Reserved.

    liquid: <command line>: cannot satisfy -package-id testproject-0.1.0.0-66TvLBWRheDCRZYaVOFcgn
        (use -v for more information)
```
I'm using https://github.com/awakesecurity/liquidhaskell-cabal/ to try and make this work with LTS-10.0
