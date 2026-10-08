# Max/MSP RNBO Patch for External or VST Creation: br.utility.stereomix.rnbo.2.1  
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.utility.stereomix.2.1, with all related files, can be found here: [https://github.com/guaguanco127/br.utility.stereomix](https://github.com/guaguanco127/br.utility.stereomix)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9 and RNBO.

## Table of Contents 

[About](#About)   
[What is an External for Max/MSP?](#External)  
[What is a VST or AU Audio Plugin?](#VST)  
[How To Export as a Max/MSP External](#Export)  
[How To Export as a VST or AU Audio Plugin](#ExportVST)  

## <a name="About"></a>About

A per-channel mixer for a stereo pair: each input channel gets its own polarity invert, gain and pan, so you can fix one side without touching the other. Every change glides, so nothing clicks. Works at any sample rate.

One patch now does both jobs (1.0 had two). Inside [rnbo~], the Invert, Left_Gain, Right_Gain, Left_Pan and Right_Pan params are the plugin parameters, and inlets 3 to 7 set the same params, so the external has the same seven inlets as the abstraction: L, R, Invert, Left Gain, Right Gain, Left Pan, Right Pan. The gen~ code inside is the same as br.utility.stereomix.2.1.

The settings also come out of [rnbo~]'s rightmost outlet as `invert 0`, `lgain -3.`, `rgain 0.`, `lpan -100.` and `rpan 100.` the moment they change ([outport invert], [outport lgain], [outport rgain], [outport lpan] and [outport rpan] inside), matching the State outlet of the abstractions. The patch shows it picked out with [route invert lgain rgain lpan rpan].

## <a name="External"></a>What is an External for Max/MSP?

An external is a type of object that does not come with your Max/MSP library. Unlike the typical objects that you can call on all versions of Max/MSP, an external must be installed on the user's computer a specific way. 

## <a name="VST"></a>What is a VST or AU Audio Plugin? 

A VST is a third party audio plugin generally run within a digital audio workstation (DAW). A VST is cross platform for both Windows and Mac. An AU works the same way but is Mac only. 

## <a name="Export"></a>How To Export as a Max/MSP External

1. Make sure Max 9 is installed on your computer, and that you have an RNBO license.

2. Open br.utility.stereomix.rnbo.2.1.maxpat.

3. Double-click the [rnbo~] object while the patch is locked.

4. Click "Show Export Sidebar" on the right-hand side.

5. Select "Max External Export".

6. Name the object br.utility.stereomix.2.1~ and export.

**Keep the ~ at the end of the name.** Without it, the external has exactly the same name as the abstraction br.utility.stereomix.2.1, and Max loads whichever one it finds first, so you can't be sure which one you're using. The ~ also follows the Max convention for objects that process audio. Any other name is fine as long as it isn't the name of an abstraction you also use.

7. Copy the exported .mxo (Mac) or .mxe64 (Windows) into a folder on Max's search path, for example Documents/Max 9/Externals, and add that folder in Options > File Preferences if it isn't listed. Then create an object called br.utility.stereomix.2.1~ in any patch. It has the same inlets as the abstraction (L, R, Invert, Left Gain, Right Gain, Left Pan, Right Pan), except that the five controls take numbers only.

## <a name="ExportVST"></a>How To Export as a VST or AU Audio Plugin

**Please note that you can only use an audio plugin on the same computer that you created it with RNBO. Sending an audio plugin to another computer will not work and be flagged as an unrecognized developer** 

1. Make sure Max 9 is installed on your computer, and that you have an RNBO license.

2. Open br.utility.stereomix.rnbo.2.1.maxpat.

3. Double-click the [rnbo~] object while the patch is locked.

4. Select "Audio Plugin Export".

5. Choose VST3 or AU and the platform, name your plugin, and export. The Invert, Left_Gain, Right_Gain, Left_Pan and Right_Pan parameters show up in your DAW for automation.
