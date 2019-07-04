// John Linnane 118227214

public class Arpeggiator extends Melody {
    // use SinOsc generator to modulate SawOsc generator
    SinOsc vibrato => NRev wob => SawOsc s => JCRev rev => dac;
    
    2 => s.sync;
    5 => vibrato.freq;
    5 => vibrato.gain;
    
    // instantiate modulation values
    0.0 => float revMix;
    0.0 => float wobMix;
    

    fun void arp(dur division) 
    {
        
        [A3, Cs4, E4, Fs4, A4, Cs5, E5, Fs5] @=> int arpNotes[];
        
        while(true) {    
            
            // choose random notes from array
            Math.random2(0,arpNotes.cap() - 1) => int arpNote;
            
            // put notes from midi to frequency values
            Std.mtof(arpNotes[arpNote]) => s.freq;
            
            onGain => s.gain;          // (12) Turns on both oscillators
            0.95*division => now;
            
            // put a little gap between notes
            offGain => s.gain;
            0.05*division => now;
            
            // create variables for reverb and modulation values
            
            revMix => rev.mix;   
            wobMix => wob.mix;
            
            // increase reverb and modulation values incrementally
            
            if (wobMix < 0.6) {
                wobMix + 0.0003 => this.wobMix;
            }
            
            if (revMix < 0.6) {
                revMix + 0.0003 => this.revMix;
            }
            
            // print to console reverb and modulation values
            <<< "Arpeggiator reverb and wobble level: " + wobMix >>>;
            <<< "Arpeggiator reverb and wobble level: " + revMix >>>;
            
            
        }
        
        
        
    }
    
    
    // overloaded arp() function (unused)
    fun void arp(dur division, int array[])
    {
        
        while(true) {    
            Math.random2(0,array.cap() - 1) => int arpNote;
            Std.mtof(array[arpNote]) => s.freq;
            
            onGain => s.gain;          
            0.95*division => now;
            
            offGain => s.gain;
            0.05*division => now;
        }
    }
    
    
    
    
} // end of Arpeggiator class


// instantiate Arpeggiator class
Arpeggiator arpeg;

// call arp() function
arpeg.arp(arpeg.sixteenthBeat);


