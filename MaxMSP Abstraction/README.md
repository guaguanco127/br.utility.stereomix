# Max/MSP Abstraction: br.utility.stereomix.2.2  
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.utility.stereomix.2.2, with all related files, can be found here: [https://github.com/guaguanco127/br.utility.stereomix](https://github.com/guaguanco127/br.utility.stereomix)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9.

## Table of Contents 

[About](#About)   
[Which file?](#Files)  
[What is an abstraction?](#Abstraction)  
[How To Install](#Install)  
[How To Use](#Use)  
[State outlet](#State) 

## <a name="About"></a>About

A per-channel mixer for a stereo pair: each input channel gets its own polarity invert, gain and pan, so you can fix one side without touching the other. Every change glides, so nothing clicks. Works at any sample rate.

**Uses:**  
**One side wired backwards:** the pair sounds hollow and hard to place, and it cancels when summed to mono. Invert that side.  
**One side too loud or too quiet:** turn that side's Gain.  
**A mono source sitting on one side:** turn that channel's Pan to the center.  
**Swap or narrow the pair:** move the two pans (Left Pan 100 and Right Pan -100 swaps the sides; both at 0 is a mono mix).  

**Invert:** Normal, Invert L+R, Invert L or Invert R. Flips the polarity of the chosen channel over 10 ms, passing through silence for a moment instead of clicking. Invert L+R on its own sounds the same; it matters when the pair is mixed with other tracks.  

**Gain:** each channel from -72 dB to +35 dB. -72 is silence, 0 is unchanged.  

**Pan:** each channel from -100 (hard left) to 100 (hard right). Constant power, like the pan knobs on a mixing desk: a channel at the center sits -3 dB on each side, so it keeps its loudness as it moves, and both pans at the center make a mono mix that does not jump in level. The defaults (Left Pan -100, Right Pan 100) pass the signal through unchanged.

## <a name="Files"></a>Which file?

| File | What it is |
|---|---|
| br.utility.stereomix.2.2 | No UI. The plain object to patch with |
| br.utility.stereomix.ui.2.2 | With an Invert menu and Gain and Pan dials for each channel, ready for a [bpatcher] |
| _br.utility.stereomix.example.2.2 | Example patch: open this first |

The UI version contains the plain version and has the same inlets and audio outlets (plus State last), so either swaps in without rewiring. Open the UI version in patching mode for comments on how it is built.

## <a name="Abstraction"></a>What is an Abstraction?

An abstraction is a subpatcher that is saved as an external file, and can be used just like a standard Max object. As long as your abstraction can be found in the Max file path, you can type its name into a new object box and it will be loaded directly into your patch.  

By saving your logic in an abstraction, you can create modules that can be used in future work with little or no additional programming.

## <a name="Install"></a>How To Install

1. Make sure you have Max 9 installed, and that the Max patch you are using is saved inside a folder.  

2. Copy the .maxpat files you want into the same folder as your patch. The UI version needs the plain version next to it (br.utility.stereomix.ui.2.2 uses br.utility.stereomix.2.2).

3. In your patch, create an object called br.utility.stereomix.2.2. For the version with controls, create a [bpatcher] and choose br.utility.stereomix.ui.2.2.maxpat as its patcher.

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


Double-click the object to see inside it and study how it was built.
