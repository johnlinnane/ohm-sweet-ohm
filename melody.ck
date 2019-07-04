// John Linnane 118227214

// create melody class to set midi note values, note durations etc.
public class Melody {
    
    // assign a bpm for the entire project
    60.0 => float bpm;
    
    // assign real note values to midi values (s = #)
    21 => int A0;
    22 => int As0;
    23 => int B0;
    24 => int C1;
    25 => int Cs1;
    26 => int D1;
    27 => int Ds1;
    28 => int E1;
    29 => int F1;
    30 => int Fs1;
    31 => int G1;
    32 => int Gs1;
    33 => int A1;
    34 => int As1;
    35 => int B1;
    36 => int C2;
    37 => int Cs2;
    38 => int D2;
    39 => int Ds2;
    40 => int E2;
    41 => int F2;
    42 => int Fs2;
    43 => int G2;
    44 => int Gs2;
    45 => int A2;
    46 => int As2;
    47 => int B2;
    48 => int C3;
    49 => int Cs3;
    50 => int D3;
    51 => int Ds3;
    52 => int E3;
    53 => int F3;
    54 => int Fs3;
    55 => int G3;
    56 => int Gs3;
    57 => int A3;
    58 => int As3;
    59 => int B3;
    60 => int C4;
    61 => int Cs4;
    62 => int D4;
    63 => int Ds4;
    64 => int E4;
    65 => int F4;
    66 => int Fs4;
    67 => int G4;
    68 => int Gs4;
    69 => int A4;
    70 => int As4;
    71 => int B4;
    72 => int C5;
    73 => int Cs5;
    74 => int D5;
    75 => int Ds5;
    76 => int E5;
    77 => int F5;
    78 => int Fs5;
    79 => int G5;
    80 => int Gs5;
    81 => int A5;
    82 => int As5;
    83 => int B5;
    84 => int C6;

    // assign real beat divisions, realtive to the bpm
    60.0/(bpm)*4.0 => float four;
    60.0/(bpm)*2.0 => float two;
    60.0/(bpm) => float one;
    60.0/(bpm)/2.0 => float half;
    60.0/(bpm)/4.0 => float quarter;
    60.0/(bpm)/8.0 => float sixteenth;
    
    // create beat durations, for use in functions
    four :: second => dur fourBeat;
    two :: second => dur twoBeat;
    one :: second => dur oneBeat;
    half :: second => dur halfBeat;
    quarter :: second => dur quarterBeat;
    sixteenth :: second => dur sixteenthBeat;
    
    four :: second => dur oneBar;

    
    // set a default volume
    0.3 => float onGain;
    0.0 => float offGain;
    
    // set a default gap between notes
    0.95 => float onLength;
    0.05 => float offLength;
    
    // unused function to increase bpm value mid-song
    fun void increaseBpm() {
        bpm + 20 => bpm;
        <<< "New BPM = " + bpm >>>; 
    }
    
} // end of Melody class









