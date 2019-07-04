// John Linnane 118227214


// create class
public class BassMelody1 extends Melody {
    
    SawOsc f => dac;
    // create array for notes values and duration
    [A1, E1, A1, E1, A1, D2, E2, A1] @=> int bassMelody1[];
    [fourBeat, fourBeat, fourBeat, fourBeat, fourBeat, fourBeat, fourBeat, fourBeat] @=> dur bassDurs[];
    
    
    fun void play() {
        while(true) {
            
            for (0 => int i; i < bassMelody1.cap(); i++)  {
                
                
                Std.mtof(bassMelody1[i]) => f.freq;
                
                onGain => f.gain;       
                0.95*bassDurs[i] => now;
                
                // put a little gap between notes
                offGain => f.gain;
                0.05*bassDurs[i] => now;
            }
        }
        
    } // end of play()
    
} // end of BassMelody1 class




// instantiate class
BassMelody1 bm1;

// call play() function
bm1.play();
