# CIFAR

CIFAR (Color Invariant Feynman Amplitude Reducer, pronounced "cipher") is a Mathematica package for computing the color factors associated with Feynman diagrams.

## Installation

To load, Mathematica needs to be told about the directory where CIFAR
was installed. For this, we need to define the variable `$CIFARPath` in the
current Mathematica session before loading the package:
```
$CIFARPath = SetDirectory["path/to/CIFAR"];
<<CIFAR`;
```

Alternatively, if one does not want to execute this command in every fresh kernel
session, it is possible to modify the configuration file Mathematica preloads when
starting a new kernel.
Under MacOS the file can be found in (if the file does not exist, just create it)
```
~/Library/Mathematica/Autoload/init.m
```
On Unix/Linux systems the file should be at
```
~/.Mathematica/Autoload/init.m
```

Add the following lines to the appropriate init.m file:
```
$CIFARPath = SetDirectory["path/to/CIFAR"];
If[Not[MemberQ[$Path, $CIFARPath]],$Path = Append[$Path,$CIFARPath]];
```
Now it is possible to load CIFAR by executing `<<CIFAR` in a new kernel.
