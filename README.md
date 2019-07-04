# ohm-sweet-ohm
Kraftwerk's 'Ohm Sweet Ohm' realised using ChucK programming language



John Linnane
118227214
MscIM
2018/2019



**** Please open Initialise.ck to play project ****



OVERALL FEATURES

In my project I used SinOsc,and Saw Osc generators.
I also used a SinOsc signal to cause a vibrato on a SawOsc in my MainMelody class.
I used the Noise generator, along with LPF, Impulse and Gain to synthesise a snare drum sound. This file was not used as the large number of generators was too processing intensive for the system.
I used a SinOsc, ADSR filter, Step generator and Envelope generator to synthesize a kick drum sound.

For random note generation I created an arpeggiator class using the Math.random function. This cycles through an array of defined notes in random order.

In my Melody class, I used the Midi-to-Frequency function to create a library of notes in a more readable MIDI note format (ie. A2, G3, Fs5 etc.).

For temporal manipulation I added a slowly increasing reverb effect on to my arpeggiator class.
I used an if statement to limit the amount of reverb applied.

For frequency modulation, in my Arpeggiator class, I used the NRev generator to effect a slowly increasing pitch wobble on the notes form the array.

For amplitude modulation, in my MainMelody class, I used the signal of a SinOsc generator to modulate a SawOsc generator.

For spatial modulation I used a slow pan from left to right on my wave file which can be triggered to play after the music stops.



PROGRAMMING CONCEPTS

I used both a while loop to loop through arrays in my MainMelody used a for loop for the same purpose in BassMelody1.

I created some functions, including one which increases the bmp after a measure of music, and another that creates an arpeggiator.

I used overloading in the Arpeggiator function. This allowed different arrays of notes to be passed in. I had a bit of trouble passing array values between classes, so this second Arpeggiator ended up not being used.


CONCURRENCY AND PROCESS COMPONENTS

I used Machine.Add to load all ChucK files concurrently in my Initialize file. This enabled me to communicate betweeen all global classes.

For event handling I used the Hid generator to call a sound buffer (SndBuf) when the 'O' key is pressed. This sound file is slowly panned from left to right.

********************

The song is an interpretation of ‘Ohm Sweet Ohm’ by Kraftwerk.



