# Max/MSP Abstraction: br.utility.stereomix.abs-1.0  
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
Repository for br.utility.stereomix.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.utility.stereomix.1.0](https://github.com/guaguanco127/br.utility.stereomix.1.0)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max/MSP version 8.5.6. and RNBO 1.2.3

## Table of Contents 

[About](#About)   
[What is an abstraction?](#Abstraction)  
[How To Install](#Install)  
[How To Use](#Use) 
 
 

## <a name="About"></a>About

This is a basic abstraction built in Max/MSP for adjusting stereo settings. This is different from br.utility.stereo.1.0 as it allows for inverting of the channels, along with panning and gain.
  
**Invert_mode** Allows for inverting the signal of both, or either channel

**Left_Decibels** Adjust the gain of the left channel between -72.0 and +35 decibels. -72.0 instantly converts to negative infinity. 

**Right_Decibels** Adjust the gain of the right channel between -72.0 and +35 decibels. -72.0 instantly converts to negative infinity. 

**Left_Panning** Allows for the left channel coming in to be panned to either channel. Default is -100. (Left). Range is -100.0 to +100.0, with 0.0 being the middle.  

**Right_Panning** Allows for the right channel coming in to be panned to either channel. Default is 100. (Right) Range is -100.0 to +100.0, with 0.0 being the middle.  

## <a name="Abstraction"></a>What is an Abstraction?

An abstraction is a subpatcher that is saved as an external file, and can be used just like a standard Max object. As long as your abstraction can be found in the Max file path, you can type its name into a new object box and it will be loaded directly into your patch.  

By saving your logic in an abstraction, you can create modules that can be used in future work with little or no additional programming. This allows you to parlay your Max knowledge into more efficient work in the future, and will help you create programming systems that are modular and easier to maintain.

## <a name="Install"></a>How To Install

1. Make sure you have Max/MSP 8 installed in your computer. And, make sure you are using a Max patch that is inside of a folder.  

2. For the normal version of this abstraction, copy and paste br.utility.stereomix.abs.1.0.maxpat inside of the same folder as the Max patch you are using.     

3. In the Max patch you are using, create an object called br.utility.stereomix.abs.1.0 

## <a name="Use"></a>How To Use

The first two inlets are for the left and the right stereo signals. 

The 3rd inlet switches between the different invert modes. 0 = off, 1 = invert stereo signal, 2 = invert just the left signal, 3 = invert just the right signal. 

The 4th inlet adjusts the gain of the left channel between -72.0 and +35 decibels. -72.0 instantly converts to negative infinity.  

The 5th inlet adjusts the gain of the right channel between -72.0 and +35 decibels. -72.0 instantly converts to negative infinity.  

The 6th inlet adjusts the left channel coming in to be panned to either channel. Default is -100. (Left). Range is -100.0 to +100.0, with 0.0 being the middle.  

The 7th inlet adjusts the right channel coming in to be panned to either channel. Default is 100. (Right) Range is -100.0 to +100.0, with 0.0 being the middle.  

Double click on the object and you can see inside of the object. This way you can study how it was built. 
    



 





