# GenUnit2
This repository includes a prototype of Architectural design for the new generation of ePHASORsim Modelica library.

The goal of this initiative is to identify efforts required to migrate from current manual Genunit creation to an automated procedure. This is done by implementing a small prototype by which we could clarify the big picture and all required steps.

## Problem statement
The current FMU solution for ePHASOSRism's supported modelica library is based on GenUnit concept in which many components, i.e. current injectors alongside controllers, are connected manually together in a Modelica environment. This manually created GenUnit is then loaded manually in FMUCreator tool by which the FMU of the genunit is generated. Making genunits manually in Modelica has the following drawbacks:
1. It is very time consuming specifically when it comes to a large network with many GenUnits
1. It is error prone. For example user might forget to connect proper signals together of pass proper parameters to the components

## Advantages of having an automated genunit creation
1. Improving user experience by saving time, eliminating an error prone and unnecessarily complicated procedure
1. Benefits for our own testing:
   1. GenUnit.mo can be eliminated for CI tests. This file includes many GenUnits which are not even used in the CI tests or examples. However they are created each time when EPFMU is updated. By automating GenUnit creation, only FMUs required for a test is created. This saves time, memory on the CI.
   1. A step forward for automating unit tests. One requirement by current utestgenerator.py script is that the FMU should exist before running the script. By having automatic fmu creation, we can eliminate this.
Eliminating 

## Methodology
The core of this automation is based on some features of Modelica language as follow:
1. Architectural model design: By this method, we can make a generic GenUnit template in which the connection between base classes for Generator, exciter, turbine governor, PSS, … is made. The base classes can be constrained by its type and later be updated by different model of the same type.
Some examples using this approach can be found here: http://book.xogeny.com/components/architectures/sensor_comparison_ad/
1. Conditional block declaration: A block and its connections to other subsystems can exist conditionally. For example if a condition is not true for an exciter, the block and its connection will be removed at instantiation step in Modelica. This is useful to eliminate compoenents from the generic template when it is not required.
Reference: Modelica specification 3.4. chapter 4.4.5 Conditional component declaration, p.p. 41
To define a generic template, a necessary step is to standardize naming of input/outputs for each type of component.
