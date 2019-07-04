// John Linnane 118227214

public class Speech extends Melody {
    
    // load voice generator
    VoicForm singer => dac;

    0.05 => singer.vibratoGain;
    
    // select vowel sound
    1 => singer.phonemeNum;          
    1 => singer.noteOn;
    
    
    fun void speak(int note) {
        
        Std.mtof(note) => singer.freq;
        
        "ohh" => singer.phoneme;
        oneBeat => now;
        
        "mmm" => singer.phoneme;
        twoBeat + oneBeat => now;
        
        "ohh" => singer.phoneme;
        oneBeat => now;
        
        "mmm" => singer.phoneme;
        twoBeat + oneBeat => now;
        
    } // end of dipth()
    
    
    
    
}


// instantiate Speech class
Speech sp;

// loop speak() function for midi note 40 (A)
while(true) {
    sp.speak(40);
}
