// John Linnane 118227214

// create a SongStructure class
public class SongStructure extends Melody {
    
    fun void playSong() {
        
        //play voice intro
        Machine.add(me.dir()+"speech.ck") => int speechID;
        (4*oneBar) => now;
        Machine.remove(speechID);
        
        //bring in main melody, bass1 and drums
        <<< "Main melody, bass1 and drums added" >>>;
        Machine.add(me.dir()+"mainmelody.ck") => int mainmelodyID;
        Machine.add(me.dir()+"bassmelody1.ck") => int bassmelody1ID;
        Machine.add(me.dir()+"drums.ck") => int drumsID;
        (16*oneBar) => now;
        
        // add arpeggiator
        <<< "Arpeggiator added." >>>;
        Machine.add(me.dir()+"arp.ck") => int arpID;
        (16*oneBar) => now;
        
        // change to alternate bassline
        <<< "Alternate bassline added." >>>;
        Machine.replace(bassmelody1ID, me.dir()+"bassmelody2.ck") => int bassmelody2ID;
        (16*oneBar) => now;
        
        // finish all music
        <<< "All melodic instruments removed." >>>;
        Machine.remove(mainmelodyID);
        Machine.remove(bassmelody2ID);
        Machine.remove(arpID);
        Machine.remove(drumsID);
        oneBar => now;
        
        // Sound file initiated.
        <<< "Press the 'O' key to hear the wind." >>>;
        Machine.add(me.dir()+"soundfile.ck") => int soundfileID;
        
    }
}

// instantiate SongStructure  
SongStructure ss;

// call playSong function
ss.playSong();









