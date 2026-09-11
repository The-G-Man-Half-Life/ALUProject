// File name: projects/ALU3Input/ALU3Inputs.tst

load ALU3Inputs.hdl,
output-file ALU3Inputs.out,
compare-to ALU3Inputs.cmp,
output-list x%D1.6.1 y%D1.6.1 z%D1.6.1 op%D1.3.1 out%D1.6.1 zr%B1.2.1 ng%B1.2.1;

// op=000: X+Y+Z
set x 5,  set y 10, set z 15, set op 0, eval, output;
set x 0,  set y 0,  set z 0,  set op 0, eval, output;
set x -15,set y 10, set z 5,  set op 0, eval, output;

// op=001: (X+Y)-Z
set x 10, set y 5,  set z 20, set op 1, eval, output;
set x 20, set y 5,  set z 25, set op 1, eval, output;
set x 0,  set y 0,  set z 1,  set op 1, eval, output;

// op=010: (X AND Y) OR Z
set x 12, set y 10, set z 3,  set op 2, eval, output;
set x 0,  set y 0,  set z 0,  set op 2, eval, output;

// op=011: (X OR Y) AND Z
set x 12, set y 10, set z 9,  set op 3, eval, output;
set x 0,  set y 0,  set z 5,  set op 3, eval, output;

// op=100: X AND Y AND Z
set x 15, set y 9,  set z 13, set op 4, eval, output;
set x 8,  set y 4,  set z 0,  set op 4, eval, output;

// op=101: X OR Y OR Z
set x 8,  set y 4,  set z 2,  set op 5, eval, output;
set x 0,  set y 0,  set z 0,  set op 5, eval, output;

// op=110: X XOR Y XOR Z
set x 5,  set y 3,  set z 6,  set op 6, eval, output;
set x 5,  set y 3,  set z 1,  set op 6, eval, output;

// op=111: (X AND Y) OR (X AND Z) OR (Y AND Z)
set x 6,  set y 5,  set z 3,  set op 7, eval, output;
set x 0,  set y 0,  set z 0,  set op 7, eval, output;