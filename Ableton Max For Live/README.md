# Ableton Max for Live device: br.utility.stereomix.2.2  
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.utility.stereomix.2.2, with all related files, can be found here: [https://github.com/guaguanco127/br.utility.stereomix](https://github.com/guaguanco127/br.utility.stereomix)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9.

## Table of Contents 

[About](#About)  
[What is a Max for Live Device?](#M4L)  
[How To Install](#Install)  

## <a name="About"></a>About

A per-channel mixer for a stereo pair: each input channel gets its own polarity invert, gain and pan, so you can fix one side without touching the other. Every change glides, so nothing clicks. Works at any sample rate.

A stereo audio effect with five controls: Invert, Left Gain, Right Gain, Left Pan and Right Pan. All five are Live parameters, so you can automate them or map them to a controller. Live's own Split Stereo Pan does the panning part on a track; this device adds polarity and per-side gain, and works anywhere in a chain.

**Uses:**  
**One side wired backwards:** the pair sounds hollow and hard to place, and it cancels when summed to mono. Invert that side.  
**One side too loud or too quiet:** turn that side's Gain.  
**A mono source sitting on one side:** turn that channel's Pan to the center.  
**Swap or narrow the pair:** move the two pans (Left Pan 100 and Right Pan -100 swaps the sides; both at 0 is a mono mix).  

**Invert:** Normal, Invert L+R, Invert L or Invert R. Flips the polarity of the chosen channel over 10 ms, passing through silence for a moment instead of clicking. Invert L+R on its own sounds the same; it matters when the pair is mixed with other tracks.  

**Gain:** each channel from -72 dB to +35 dB. -72 is silence, 0 is unchanged.  

**Pan:** each channel from -100 (hard left) to 100 (hard right). Constant power, like the pan knobs on a mixing desk: a channel at the center sits -3 dB on each side, so it keeps its loudness as it moves, and both pans at the center make a mono mix that does not jump in level. The defaults (Left Pan -100, Right Pan 100) pass the signal through unchanged.

## <a name="M4L"></a>What Is a Max For Live Device?

Max For Live brings the power and flexibility of Max to Ableton Live. Max For Live gives you access to hundreds of exclusive custom plug-ins (Live Devices) as well as the tools to build your own. These can be MIDI and audio effects, audio and video synthesizers, 3D Jitter visuals, as well as tools that interact with the Live application itself, via the Live API.

## <a name="Install"></a>How To Install

1. Make sure you have Ableton Live Suite installed on your computer, and that Live is closed while installing. 

2. For Mac:  
Go to your user folder  
Then Music > Ableton > User Library > Presets > Audio Effects > Max Audio Effect  
Copy br.utility.stereomix.2.2.amxd into that folder

3. For Windows: \Users\[username]\Documents\Ableton\User Library\Presets\Audio Effects\Max Audio Effect  
  
4. Open Ableton Live. On the left-hand side, look for Max for Live > Max Audio Effect and then the name of this device.

5. Either double-click the device, or drag it onto the track where you want it.
