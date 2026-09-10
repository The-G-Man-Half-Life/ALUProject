load ALU32.hdl,
output-file ALU32.out,
compare-to ALU32.cmp,
output-list x%D1.11.1 y%D1.11.1 zx%B2.1.2 nx%B2.1.2 zy%B2.1.2 ny%B2.1.2 f%B2.1.2 no%B2.1.2 out%D1.11.1 zr%B2.1.2 ng%B2.1.2;

// Caso 1: suma con carry cruzando bit15->bit16
set x 65535, set y 1,
set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0,
eval, output;

// Caso 2: AND puro (mismos x,y, sin carry involucrado)
set x 65535, set y 1,
set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 0,
eval, output;

// Caso 3: fuerza out=0 -> valida zr
set x 12345, set y 6789,
set zx 1, set nx 0, set zy 1, set ny 0, set f 1, set no 0,
eval, output;

// Caso 4: out=-1 -> valida ng
set x 0, set y 0,
set zx 1, set nx 1, set zy 1, set ny 0, set f 1, set no 0,
eval, output;