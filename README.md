# Max/MSP Patches, Abstractions, Externals, RNBO, VSTs, and Ableton Max for Live 

## br.utility.stereomix.1.0



By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)   
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
 
Repository for br.utility.stereomix.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.utility.stereomix.1.0](https://github.com/guaguanco127/br.utility.stereomix.1.0)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max/MSP version 8.5.6. and RNBO 1.2.3

## Links

[About](#About) 
[Ableton Max for Live Device](https://github.com/guaguanco127/br.utility.stereomix.1.0/tree/main/Ableton%20Max%20for%20Live%20) To use inside of Ableton Suite   
[Max/MSP Abstraction](https://github.com/guaguanco127/br.utility.stereomix.1.0/tree/main/MaxMSP%20Abstractions) To use as an abstraction within Max/MSP   
[Max/MSP External](https://github.com/guaguanco127/br.utility.stereomix.1.0/tree/main/MaxMSP%20External) To use as an external object within Max/MSP     
[Max/MSP RNBO for External or VST](https://github.com/guaguanco127/br.utility.stereomix.1.0/tree/main/RNBO%20Patchers%20for%20External%20or%20VST) To build an audio plugin in VST or AU for both Mac and Windows.   

## <a name="About"></a>About

This is a basic patch/external/plugin/device built in Max/MSP for adjusting stereo settings. This is different from br.utility.stereo.1.0 as it allows for inverting of the channels, along with panning and gain.
  
**Invert_mode** Allows for inverting the signal of both, or either channel

**Left_Decibels** Adjust the gain of the left channel between -72.0 and +35 decibels. -72.0 instantly converts to negative infinity. 

**Right_Decibels** Adjust the gain of the right channel between -72.0 and +35 decibels. -72.0 instantly converts to negative infinity. 

**Left_Panning** Allows for the left channel coming in to be panned to either channel. Default is -100. (Left). Range is -100.0 to +100.0, with 0.0 being the middle.  

**Right_Panning** Allows for the right channel coming in to be panned to either channel. Default is 100. (Right) Range is -100.0 to +100.0, with 0.0 being the middle.  
