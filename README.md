# Max/MSP Patches, Abstractions, Externals, RNBO, VSTs, and Ableton Max for Live 

## br.utility.stereomix.2.2
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.utility.stereomix.2.2, with all related files, can be found here: [https://github.com/guaguanco127/br.utility.stereomix](https://github.com/guaguanco127/br.utility.stereomix)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9, or RNBO.

## Links

[About](#About)  
[Max/MSP Abstraction](https://github.com/guaguanco127/br.utility.stereomix/tree/main/MaxMSP%20Abstraction) To use as an abstraction within Max/MSP   
[Max/MSP RNBO for External or VST](https://github.com/guaguanco127/br.utility.stereomix/tree/main/RNBO%20Patchers%20for%20External%20or%20VST) To build your own Max external, or a VST or AU audio plugin (needs RNBO)  
[Ableton Max for Live Device](https://github.com/guaguanco127/br.utility.stereomix/tree/main/Ableton%20Max%20For%20Live) To use inside of Ableton Suite   

## <a name="About"></a>About

A per-channel mixer for a stereo pair: each input channel gets its own polarity invert, gain and pan, so you can fix one side without touching the other. Every change glides, so nothing clicks. Works at any sample rate.

You can use it as an abstraction within Max/MSP or as a Max for Live device within Ableton Live Suite. With RNBO you can also build your own Max external or VST/AU plugin from the included RNBO patch.

**Uses:**  
**One side wired backwards:** the pair sounds hollow and hard to place, and it cancels when summed to mono. Invert that side.  
**One side too loud or too quiet:** turn that side's Gain.  
**A mono source sitting on one side:** turn that channel's Pan to the center.  
**Swap or narrow the pair:** move the two pans (Left Pan 100 and Right Pan -100 swaps the sides; both at 0 is a mono mix).  

**Invert:** Normal, Invert L+R, Invert L or Invert R. Flips the polarity of the chosen channel over 10 ms, passing through silence for a moment instead of clicking. Invert L+R on its own sounds the same; it matters when the pair is mixed with other tracks.  

**Gain:** each channel from -72 dB to +35 dB. -72 is silence, 0 is unchanged.  

**Pan:** each channel from -100 (hard left) to 100 (hard right). Constant power, like the pan knobs on a mixing desk: a channel at the center sits -3 dB on each side, so it keeps its loudness as it moves, and both pans at the center make a mono mix that does not jump in level. The defaults (Left Pan -100, Right Pan 100) pass the signal through unchanged.

## <a name="New22"></a>What's new in 2.2

- The [State outlet](#State) is now on the UI version only (the one with controls). It reports the controls, so moving them, numbers into the inlets and preset recalls all show up, with the same names and the same position as in 2.1.
- The plain version (no UI) and the RNBO patch no longer have a State outlet: whatever drives them already knows the values. Their outlets are audio only again, as in 2.0.
- The Max for Live device is unchanged apart from the version number.

## <a name="New21"></a>What's new in 2.1

- New [State outlet](#State): every abstraction and the RNBO patch now send `invert 0`, `lgain -3.`, `rgain 0.`, `lpan -100.` and `rpan 100.` out of their last outlet the moment a setting changes, so a display, Mira or another patch can follow along.
- The inlets and the audio outlets are unchanged. Only the file names move from 2.0 to 2.1.
- The Max for Live device is unchanged apart from the version number.

## <a name="New"></a>What's new in 2.0

- Pan is now constant power (-3 dB per side at the center). In 1.0 a channel got louder as it moved toward the center: +3 dB at the center, and +6 dB with both pans centered.
- Every change glides: Invert over a 10 ms S-curve, Gain and Pan over 10 ms. -72 dB is now true silence. Gain and Pan take signals.
- A plain version and a UI version for bpatchers (see [Which file?](#Files)).
- One RNBO patch now makes both the Max external and the VST3/AU plugin (1.0 had two). Prebuilt externals are no longer included: the abstraction does the same job and more, so build an external only if you need one.
- Parameters are named Invert, Left Gain, Right Gain, Left Pan and Right Pan in Live (RNBO: Invert, Left_Gain, Right_Gain, Left_Pan, Right_Pan). 1.0's names (Invert_mode, Left_Decibels, Right_Decibels, Left_Panning, Right_Panning) changed, so automation saved with 1.0 does not carry over.
- File names changed (no more `.abs`), so 1.0 patches need the new name typed in. The seven inlets are in the same order with the same ranges and defaults.

## <a name="Files"></a>Which file?

| File | What it is |
|---|---|
| br.utility.stereomix.2.2 | No UI. The plain object to patch with |
| br.utility.stereomix.ui.2.2 | With an Invert menu and Gain and Pan dials for each channel, ready for a [bpatcher] |
| _br.utility.stereomix.example.2.2 | Example patch: open this first |

The UI version contains the plain version and has the same inlets and audio outlets (plus State last), so either swaps in without rewiring. Open the UI version in patching mode for comments on how it is built.

## <a name="Use"></a>How To Use

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Left In | Signal | | |
| 2 | Right In | Signal | | |
| 3 | Invert | Signal or Int (UI: Int only) | 0 Normal, 1 Invert L+R, 2 Invert L, 3 Invert R | 0 |
| 4 | Left Gain | Signal or Float (UI: Float only) | dB -72 to 35: -72 = silent, 0 = unchanged | 0 |
| 5 | Right Gain | Signal or Float (UI: Float only) | dB -72 to 35: -72 = silent, 0 = unchanged | 0 |
| 6 | Left Pan | Signal or Float (UI: Float only) | -100 to 100: where the left input sits | -100 |
| 7 | Right Pan | Signal or Float (UI: Float only) | -100 to 100: where the right input sits | 100 |

Outlets 1 / 2: Left Out / Right Out (Signal)  
Outlet 3 (UI version only): State (Message), see [State outlet](#State)

Each channel is processed in this order: Invert, then Gain, then Pan; then the two channels are summed. Invert glides over 10 ms, and Gain and Pan glide over 10 ms, so you can change anything while audio plays. Gain and Pan also take signals. In the UI version a number into an inlet moves its control, so the screen always shows what you hear. Hover any inlet or outlet in Max for its description.

## <a name="State"></a>State outlet

The last outlet of the UI version (State) sends the current settings as named messages the moment they change: `invert 0`, `lgain -3.`, `rgain 0.`, `lpan -100.` and `rpan 100.`. Use it to keep a display, Mira or another patch in sync. Pick it out by name with [route invert lgain rgain lpan rpan], not by position, so your patch keeps working if a later version adds controls. Repeats are filtered out.

| Message | Type | Range |
|---|---|---|
| invert | Int | 0 Normal, 1 Invert L+R, 2 Invert L, 3 Invert R |
| lgain | Float | Left Gain in dB, -72 to 35, -72 = silent |
| rgain | Float | Right Gain in dB, -72 to 35, -72 = silent |
| lpan | Float | Left Pan, -100 to 100 |
| rpan | Float | Right Pan, -100 to 100 |

The plain version has no State outlet: whatever drives it already knows the values. Invert is sent as the menu index, the same number its inlet takes, so a State message can go straight back into an inlet. The example patch has a State outlet tab that shows all of this.

