// John Linnane 118227214

// create a Wind class to play the wind file
public class Wind extends Melody {
    
    // create a Human Interface Device generator
    Hid myHid;
    HidMsg msg;
    1 => int device;
    
    fun void playWind() 
    {   
        // load the instructional audio file  
        SndBuf owind => dac;
        me.dir()+"/owind.wav" => owind.read;  
        0.95 => owind.gain;
        0 => owind.pos;
        
        
        // connect with computer keyboard
        if (!myHid.openKeyboard(device))
        {
            <<< "no device!">>>;
            me.exit(); 
            
        } // end of if
        <<< "keyboard '" +myHid.name() + "'ready", "">>>;
        while(true)
        {
            myHid => now;
            
            
            while(myHid.recv( msg )) 
                
                // assign wind() function to 'O' key
                if (msg.ascii == 79)
                {
                    wind();
                }
                else{}
            } // end of while
        }
        
        fun void wind() {
            SndBuf mySound => Pan2 p => dac;
            
            -1.0 => float panPosition;
            
            // load wind.wav file
            me.dir() => string path;  
            "/wind.wav" => string filename; 
            path+filename => filename;  
            filename => mySound.read;  
            
            // set the file's volume
            0.8 => mySound.gain;
            // start file from the beginning
            0 => mySound.pos;  
            
            // pan slowly whilst playing
            while (panPosition < 1.0) 
            {
                panPosition => p.pan;
                panPosition + 0.00001 => panPosition;
                10::ms => now;
            }
            
    second => now;
            
    } // end of playWind()
} // end of Wind class
    
// instantiate class    
Wind wd;

// call playWind() function
wd.playWind();

