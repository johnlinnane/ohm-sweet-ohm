// John Linnane 118227214

// create BassMelody2 class
public class BassMelody2 extends Melody {
    
    SawOsc g => dac;
    
    // create array for notes values and duration
    [Fs1, E1, D1, E1] @=> int bassMelody2[];
    [fourBeat, fourBeat, fourBeat, fourBeat] @=> dur fMDurs[];
    
    
    fun void play() {
        while (true) {
            for (0 => int i; i < bassMelody2.cap(); i++)  {
                
                
                Std.mtof(bassMelody2[i]) => g.freq;
                
                onGain => g.gain;       
                0.95*fMDurs[i] => now;
                
                // put a little gap between notes
                offGain => g.gain;
                0.05*fMDurs[i] => now;
            }
        }     
    } // end of play()
} // end of BassMelody2 class




// instantiate class
BassMelody2 bm2;

// call play() function
bm2.play();





