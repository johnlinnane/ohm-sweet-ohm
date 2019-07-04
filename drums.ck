// John Linnane 118227214

// create Drums class
public class Drums extends Melody { 
    

    // create a function for a single snare hit lasting one beat
    fun void snareHit() {
        
        SndBuf snare => dac.left;
        //1 => snare.gain
        
        me.dir()+"snare.wav" => snare.read;
        oneBeat => now;
    }
    

    // create a function for a single kick lasting one beat
    fun void kickHit() {
        
        SndBuf kick => dac.right;
        
        me.dir()+"kick.wav" => kick.read;
        oneBeat => now;
    }
    

    // creat a function to play the drums in succession
    fun void drumBeat() {
        
        while (true)
        {
            kickHit();
            snareHit();
        }
    } // end of drumBeat function
    
    
} // end of Drums class


// instantiate Drum class
Drums dr;

// call drumBeat() function
dr.drumBeat();





