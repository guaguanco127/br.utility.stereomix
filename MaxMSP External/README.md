# Max/MSP External: br.utility.stereomix.1.0~  
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
Repository for br.utility.stereomix.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.utility.stereomix.1.0](https://github.com/guaguanco127/br.utility.stereomix.1.0)  
Additional programs can be found here: [https://github.com/guaguanco127/plugins](https://github.com/guaguanco127/plugins)

These files were created with Max/MSP version 8.5.6.

## Table of Contents 

[About](#About)   
[What is an External for Max/MSP?](#External)  
[How To Install](#Install)  
[How To Use](#Use) 
 
 

## <a name="About"></a>About

This is a basic external object for Max/MSP for adjusting stereo settings. This is different from br.utility.stereo.1.0 as it allows for inverting of the channels, along with panning and gain.
  
**Invert_mode** Allows for inverting the signal of both, or either channel

**Left_Decibels** Adjust the gain of the left channel between -72.0 and +35 decibels. -72.0 instantly converts to negative infinity. 

**Right_Decibels** Adjust the gain of the right channel between -72.0 and +35 decibels. -72.0 instantly converts to negative infinity. 

**Left_Panning** Allows for the left channel coming in to be panned to either channel. Default is -100. (Left). Range is -100.0 to +100.0, with 0.0 being the middle.  

**Right_Panning** Allows for the right channel coming in to be panned to either channel. Default is 100. (Right) Range is -100.0 to +100.0, with 0.0 being the middle.  


## <a name="External"></a>What is an External for Max/MSP?

An external is a type of object that does not come with your Max/MSP library. Unlike the typical objects that you can call on all versions of Max/MSP, an external must be installed on the users computer a specific way. 

## <a name="Install"></a>How To Install

1. Make Sure Max/MSP 8 is installed in your computer, and make sure it is turned off.

2. In your documents folder, find the Max 8 folder

3. If a folder called "Externals" is not there, then create one in this location. 

4. For Macintosh, copy and paste br.utility.stereomix.1.0~.mxo into this Externals folder

5. For Windows, copy and paste br.utility.stereomix.1.0~.mxe64 into this folder

6. Open Max/MSP

7. At the top of the screen find the dropdown menu called "Options" then select "File Preferences"

8. Find an empty userpath and select "choose"

9. From here, find and select the "Externals" folder where the external file was pasted to. Please note that you only have to select this user path within the File Preferences once.

## <a name="Use"></a>How To Use

Open up a patch in Max/MSP, create a new object called br.utility.stereomix.1.0~

If the installation worked then the object will now exist in your patch. 

This external works almost like the abstraction version. However, you are unable to click inside of an external. 

The first two inlets are for the left and the right stereo signals. 

The 3rd inlet switches between the different invert modes. 0 = off, 1 = invert stereo signal, 2 = invert just the left signal, 3 = invert just the right signal. 

The 4th inlet adjusts the gain of the left channel between -72.0 and +35 decibels. -72.0 instantly converts to negative infinity.  

The 5th inlet adjusts the gain of the right channel between -72.0 and +35 decibels. -72.0 instantly converts to negative infinity.  

The 6th inlet adjusts the left channel coming in to be panned to either channel. Default is -100. (Left). Range is -100.0 to +100.0, with 0.0 being the middle.  

The 7th inlet adjusts the right channel coming in to be panned to either channel. Default is 100. (Right) Range is -100.0 to +100.0, with 0.0 being the middle.  

Double click on the object and you can see inside of the object. This way you can study how it was built. 

    



 





