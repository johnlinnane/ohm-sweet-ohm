// John Linnane 118227214




// create MainMelody class
public class MainMelody extends Melody {
    
    
    fun void play() {
        
        SinOsc vibrato => SawOsc s => dac;
        
        2 => s.sync;
        5 => vibrato.freq;
        5 => vibrato.gain;
        
        // create arrays for notes values and duration
        int mainMelody[];
        [A3, Cs4, E4, 
        E4, Fs4, E4, D4,
        
        Cs4, A3, Cs4, E4,
        E4, Fs4, E4, D4,
        
        Cs4, Cs4, A3, E3,
        Fs3, A3, 
        
        B3, A3, B3, Cs4, 
        A3, E3, E3, E3 ] @=> mainMelody;
        
        dur mainDurs[];
        [twoBeat, oneBeat, oneBeat, 
        oneBeat + halfBeat, halfBeat, oneBeat, oneBeat, 
        oneBeat + halfBeat, halfBeat, oneBeat, oneBeat, 
        oneBeat + halfBeat, halfBeat, oneBeat, oneBeat, 
        twoBeat + halfBeat, halfBeat, halfBeat, halfBeat,
        twoBeat + oneBeat, oneBeat,
        twoBeat + halfBeat, halfBeat, halfBeat, halfBeat,
        twoBeat + halfBeat, halfBeat, halfBeat, halfBeat] @=> mainDurs;
        
        
        
        while(true) {
            0 => int note;
            while (note < mainMelody.cap()) {
                
                
                
                
                Std.mtof(mainMelody[note]) => s.freq;
                
                onGain => s.gain;       
                onLength*mainDurs[note] => now;

                // put a little gap between notes
                offGain => s.gain;
                offLength*mainDurs[note] => now;
                
                1 +=> note;    
            }
        }
    } // end of play()

} // end of MainMelody subclass



// instantiate class
MainMelody mm;

// call play() function
mm.play();
