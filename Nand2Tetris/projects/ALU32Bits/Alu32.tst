// Prueba exhaustiva de ALU32.hdl: las 18 combinaciones clasicas de
// control (zx,nx,zy,ny,f,no) de la ALU de Hack, aplicadas sobre 6
// pares de operandos de 32 bits incluye casos borde y, en
// particular, pares disenados para forzar el acarreo de la mitad
// baja (bits 0-15) hacia la mitad alta (bits 16-31), que es el
// punto critico que distingue a esta ALU32 de simplemente llamar
// dos ALUs de 16 bits independientes.
// Total de casos: 108

load ALU32.hdl,
output-file ALU32.out,
compare-to ALU32.cmp,
output-list x0a15%B1.16.1 x16a31%B1.16.1 y0a15%B1.16.1 y16a31%B1.16.1 zx nx zy ny f no out1%B1.16.1 out2%B1.16.1 zr ng;

// ---- x=0, y=0 ----
// 0
set x0a15 %B0000000000000000,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000000,
set y16a31 %B0000000000000000,
set zx 1,
set nx 0,
set zy 1,
set ny 0,
set f 1,
set no 0,
eval,
output;

// 1
set x0a15 %B0000000000000000,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000000,
set y16a31 %B0000000000000000,
set zx 1,
set nx 1,
set zy 1,
set ny 1,
set f 1,
set no 1,
eval,
output;

// -1
set x0a15 %B0000000000000000,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000000,
set y16a31 %B0000000000000000,
set zx 1,
set nx 1,
set zy 1,
set ny 0,
set f 1,
set no 0,
eval,
output;

// x
set x0a15 %B0000000000000000,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000000,
set y16a31 %B0000000000000000,
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f 0,
set no 0,
eval,
output;

// y
set x0a15 %B0000000000000000,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000000,
set y16a31 %B0000000000000000,
set zx 1,
set nx 1,
set zy 0,
set ny 0,
set f 0,
set no 0,
eval,
output;

// !x
set x0a15 %B0000000000000000,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000000,
set y16a31 %B0000000000000000,
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f 0,
set no 1,
eval,
output;

// !y
set x0a15 %B0000000000000000,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000000,
set y16a31 %B0000000000000000,
set zx 1,
set nx 1,
set zy 0,
set ny 0,
set f 0,
set no 1,
eval,
output;

// -x
set x0a15 %B0000000000000000,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000000,
set y16a31 %B0000000000000000,
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f 1,
set no 1,
eval,
output;

// -y
set x0a15 %B0000000000000000,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000000,
set y16a31 %B0000000000000000,
set zx 1,
set nx 1,
set zy 0,
set ny 0,
set f 1,
set no 1,
eval,
output;

// x+1
set x0a15 %B0000000000000000,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000000,
set y16a31 %B0000000000000000,
set zx 0,
set nx 1,
set zy 1,
set ny 1,
set f 1,
set no 1,
eval,
output;

// y+1
set x0a15 %B0000000000000000,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000000,
set y16a31 %B0000000000000000,
set zx 1,
set nx 1,
set zy 0,
set ny 1,
set f 1,
set no 1,
eval,
output;

// x-1
set x0a15 %B0000000000000000,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000000,
set y16a31 %B0000000000000000,
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f 1,
set no 0,
eval,
output;

// y-1
set x0a15 %B0000000000000000,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000000,
set y16a31 %B0000000000000000,
set zx 1,
set nx 1,
set zy 0,
set ny 0,
set f 1,
set no 0,
eval,
output;

// x+y
set x0a15 %B0000000000000000,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000000,
set y16a31 %B0000000000000000,
set zx 0,
set nx 0,
set zy 0,
set ny 0,
set f 1,
set no 0,
eval,
output;

// x-y
set x0a15 %B0000000000000000,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000000,
set y16a31 %B0000000000000000,
set zx 0,
set nx 1,
set zy 0,
set ny 0,
set f 1,
set no 1,
eval,
output;

// y-x
set x0a15 %B0000000000000000,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000000,
set y16a31 %B0000000000000000,
set zx 0,
set nx 0,
set zy 0,
set ny 1,
set f 1,
set no 1,
eval,
output;

// x&y
set x0a15 %B0000000000000000,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000000,
set y16a31 %B0000000000000000,
set zx 0,
set nx 0,
set zy 0,
set ny 0,
set f 0,
set no 0,
eval,
output;

// x|y
set x0a15 %B0000000000000000,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000000,
set y16a31 %B0000000000000000,
set zx 0,
set nx 1,
set zy 0,
set ny 1,
set f 0,
set no 1,
eval,
output;

// ---- x=-1, y=1 ----
// 0
set x0a15 %B1111111111111111,
set x16a31 %B1111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 1,
set nx 0,
set zy 1,
set ny 0,
set f 1,
set no 0,
eval,
output;

// 1
set x0a15 %B1111111111111111,
set x16a31 %B1111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 1,
set nx 1,
set zy 1,
set ny 1,
set f 1,
set no 1,
eval,
output;

// -1
set x0a15 %B1111111111111111,
set x16a31 %B1111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 1,
set nx 1,
set zy 1,
set ny 0,
set f 1,
set no 0,
eval,
output;

// x
set x0a15 %B1111111111111111,
set x16a31 %B1111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f 0,
set no 0,
eval,
output;

// y
set x0a15 %B1111111111111111,
set x16a31 %B1111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 1,
set nx 1,
set zy 0,
set ny 0,
set f 0,
set no 0,
eval,
output;

// !x
set x0a15 %B1111111111111111,
set x16a31 %B1111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f 0,
set no 1,
eval,
output;

// !y
set x0a15 %B1111111111111111,
set x16a31 %B1111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 1,
set nx 1,
set zy 0,
set ny 0,
set f 0,
set no 1,
eval,
output;

// -x
set x0a15 %B1111111111111111,
set x16a31 %B1111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f 1,
set no 1,
eval,
output;

// -y
set x0a15 %B1111111111111111,
set x16a31 %B1111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 1,
set nx 1,
set zy 0,
set ny 0,
set f 1,
set no 1,
eval,
output;

// x+1
set x0a15 %B1111111111111111,
set x16a31 %B1111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 0,
set nx 1,
set zy 1,
set ny 1,
set f 1,
set no 1,
eval,
output;

// y+1
set x0a15 %B1111111111111111,
set x16a31 %B1111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 1,
set nx 1,
set zy 0,
set ny 1,
set f 1,
set no 1,
eval,
output;

// x-1
set x0a15 %B1111111111111111,
set x16a31 %B1111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f 1,
set no 0,
eval,
output;

// y-1
set x0a15 %B1111111111111111,
set x16a31 %B1111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 1,
set nx 1,
set zy 0,
set ny 0,
set f 1,
set no 0,
eval,
output;

// x+y
set x0a15 %B1111111111111111,
set x16a31 %B1111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 0,
set nx 0,
set zy 0,
set ny 0,
set f 1,
set no 0,
eval,
output;

// x-y
set x0a15 %B1111111111111111,
set x16a31 %B1111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 0,
set nx 1,
set zy 0,
set ny 0,
set f 1,
set no 1,
eval,
output;

// y-x
set x0a15 %B1111111111111111,
set x16a31 %B1111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 0,
set nx 0,
set zy 0,
set ny 1,
set f 1,
set no 1,
eval,
output;

// x&y
set x0a15 %B1111111111111111,
set x16a31 %B1111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 0,
set nx 0,
set zy 0,
set ny 0,
set f 0,
set no 0,
eval,
output;

// x|y
set x0a15 %B1111111111111111,
set x16a31 %B1111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 0,
set nx 1,
set zy 0,
set ny 1,
set f 0,
set no 1,
eval,
output;

// ---- carry de mitad baja a mitad alta (0x0000FFFF+1) ----
// 0
set x0a15 %B1111111111111111,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 1,
set nx 0,
set zy 1,
set ny 0,
set f 1,
set no 0,
eval,
output;

// 1
set x0a15 %B1111111111111111,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 1,
set nx 1,
set zy 1,
set ny 1,
set f 1,
set no 1,
eval,
output;

// -1
set x0a15 %B1111111111111111,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 1,
set nx 1,
set zy 1,
set ny 0,
set f 1,
set no 0,
eval,
output;

// x
set x0a15 %B1111111111111111,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f 0,
set no 0,
eval,
output;

// y
set x0a15 %B1111111111111111,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 1,
set nx 1,
set zy 0,
set ny 0,
set f 0,
set no 0,
eval,
output;

// !x
set x0a15 %B1111111111111111,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f 0,
set no 1,
eval,
output;

// !y
set x0a15 %B1111111111111111,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 1,
set nx 1,
set zy 0,
set ny 0,
set f 0,
set no 1,
eval,
output;

// -x
set x0a15 %B1111111111111111,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f 1,
set no 1,
eval,
output;

// -y
set x0a15 %B1111111111111111,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 1,
set nx 1,
set zy 0,
set ny 0,
set f 1,
set no 1,
eval,
output;

// x+1
set x0a15 %B1111111111111111,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 0,
set nx 1,
set zy 1,
set ny 1,
set f 1,
set no 1,
eval,
output;

// y+1
set x0a15 %B1111111111111111,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 1,
set nx 1,
set zy 0,
set ny 1,
set f 1,
set no 1,
eval,
output;

// x-1
set x0a15 %B1111111111111111,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f 1,
set no 0,
eval,
output;

// y-1
set x0a15 %B1111111111111111,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 1,
set nx 1,
set zy 0,
set ny 0,
set f 1,
set no 0,
eval,
output;

// x+y
set x0a15 %B1111111111111111,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 0,
set nx 0,
set zy 0,
set ny 0,
set f 1,
set no 0,
eval,
output;

// x-y
set x0a15 %B1111111111111111,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 0,
set nx 1,
set zy 0,
set ny 0,
set f 1,
set no 1,
eval,
output;

// y-x
set x0a15 %B1111111111111111,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 0,
set nx 0,
set zy 0,
set ny 1,
set f 1,
set no 1,
eval,
output;

// x&y
set x0a15 %B1111111111111111,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 0,
set nx 0,
set zy 0,
set ny 0,
set f 0,
set no 0,
eval,
output;

// x|y
set x0a15 %B1111111111111111,
set x16a31 %B0000000000000000,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 0,
set nx 1,
set zy 0,
set ny 1,
set f 0,
set no 1,
eval,
output;

// ---- INT32_MAX + 1 (overflow a negativo) ----
// 0
set x0a15 %B1111111111111111,
set x16a31 %B0111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 1,
set nx 0,
set zy 1,
set ny 0,
set f 1,
set no 0,
eval,
output;

// 1
set x0a15 %B1111111111111111,
set x16a31 %B0111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 1,
set nx 1,
set zy 1,
set ny 1,
set f 1,
set no 1,
eval,
output;

// -1
set x0a15 %B1111111111111111,
set x16a31 %B0111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 1,
set nx 1,
set zy 1,
set ny 0,
set f 1,
set no 0,
eval,
output;

// x
set x0a15 %B1111111111111111,
set x16a31 %B0111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f 0,
set no 0,
eval,
output;

// y
set x0a15 %B1111111111111111,
set x16a31 %B0111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 1,
set nx 1,
set zy 0,
set ny 0,
set f 0,
set no 0,
eval,
output;

// !x
set x0a15 %B1111111111111111,
set x16a31 %B0111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f 0,
set no 1,
eval,
output;

// !y
set x0a15 %B1111111111111111,
set x16a31 %B0111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 1,
set nx 1,
set zy 0,
set ny 0,
set f 0,
set no 1,
eval,
output;

// -x
set x0a15 %B1111111111111111,
set x16a31 %B0111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f 1,
set no 1,
eval,
output;

// -y
set x0a15 %B1111111111111111,
set x16a31 %B0111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 1,
set nx 1,
set zy 0,
set ny 0,
set f 1,
set no 1,
eval,
output;

// x+1
set x0a15 %B1111111111111111,
set x16a31 %B0111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 0,
set nx 1,
set zy 1,
set ny 1,
set f 1,
set no 1,
eval,
output;

// y+1
set x0a15 %B1111111111111111,
set x16a31 %B0111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 1,
set nx 1,
set zy 0,
set ny 1,
set f 1,
set no 1,
eval,
output;

// x-1
set x0a15 %B1111111111111111,
set x16a31 %B0111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f 1,
set no 0,
eval,
output;

// y-1
set x0a15 %B1111111111111111,
set x16a31 %B0111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 1,
set nx 1,
set zy 0,
set ny 0,
set f 1,
set no 0,
eval,
output;

// x+y
set x0a15 %B1111111111111111,
set x16a31 %B0111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 0,
set nx 0,
set zy 0,
set ny 0,
set f 1,
set no 0,
eval,
output;

// x-y
set x0a15 %B1111111111111111,
set x16a31 %B0111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 0,
set nx 1,
set zy 0,
set ny 0,
set f 1,
set no 1,
eval,
output;

// y-x
set x0a15 %B1111111111111111,
set x16a31 %B0111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 0,
set nx 0,
set zy 0,
set ny 1,
set f 1,
set no 1,
eval,
output;

// x&y
set x0a15 %B1111111111111111,
set x16a31 %B0111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 0,
set nx 0,
set zy 0,
set ny 0,
set f 0,
set no 0,
eval,
output;

// x|y
set x0a15 %B1111111111111111,
set x16a31 %B0111111111111111,
set y0a15 %B0000000000000001,
set y16a31 %B0000000000000000,
set zx 0,
set nx 1,
set zy 0,
set ny 1,
set f 0,
set no 1,
eval,
output;

// ---- INT32_MIN + (-1) (wrap a MAX) ----
// 0
set x0a15 %B0000000000000000,
set x16a31 %B1000000000000000,
set y0a15 %B1111111111111111,
set y16a31 %B1111111111111111,
set zx 1,
set nx 0,
set zy 1,
set ny 0,
set f 1,
set no 0,
eval,
output;

// 1
set x0a15 %B0000000000000000,
set x16a31 %B1000000000000000,
set y0a15 %B1111111111111111,
set y16a31 %B1111111111111111,
set zx 1,
set nx 1,
set zy 1,
set ny 1,
set f 1,
set no 1,
eval,
output;

// -1
set x0a15 %B0000000000000000,
set x16a31 %B1000000000000000,
set y0a15 %B1111111111111111,
set y16a31 %B1111111111111111,
set zx 1,
set nx 1,
set zy 1,
set ny 0,
set f 1,
set no 0,
eval,
output;

// x
set x0a15 %B0000000000000000,
set x16a31 %B1000000000000000,
set y0a15 %B1111111111111111,
set y16a31 %B1111111111111111,
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f 0,
set no 0,
eval,
output;

// y
set x0a15 %B0000000000000000,
set x16a31 %B1000000000000000,
set y0a15 %B1111111111111111,
set y16a31 %B1111111111111111,
set zx 1,
set nx 1,
set zy 0,
set ny 0,
set f 0,
set no 0,
eval,
output;

// !x
set x0a15 %B0000000000000000,
set x16a31 %B1000000000000000,
set y0a15 %B1111111111111111,
set y16a31 %B1111111111111111,
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f 0,
set no 1,
eval,
output;

// !y
set x0a15 %B0000000000000000,
set x16a31 %B1000000000000000,
set y0a15 %B1111111111111111,
set y16a31 %B1111111111111111,
set zx 1,
set nx 1,
set zy 0,
set ny 0,
set f 0,
set no 1,
eval,
output;

// -x
set x0a15 %B0000000000000000,
set x16a31 %B1000000000000000,
set y0a15 %B1111111111111111,
set y16a31 %B1111111111111111,
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f 1,
set no 1,
eval,
output;

// -y
set x0a15 %B0000000000000000,
set x16a31 %B1000000000000000,
set y0a15 %B1111111111111111,
set y16a31 %B1111111111111111,
set zx 1,
set nx 1,
set zy 0,
set ny 0,
set f 1,
set no 1,
eval,
output;

// x+1
set x0a15 %B0000000000000000,
set x16a31 %B1000000000000000,
set y0a15 %B1111111111111111,
set y16a31 %B1111111111111111,
set zx 0,
set nx 1,
set zy 1,
set ny 1,
set f 1,
set no 1,
eval,
output;

// y+1
set x0a15 %B0000000000000000,
set x16a31 %B1000000000000000,
set y0a15 %B1111111111111111,
set y16a31 %B1111111111111111,
set zx 1,
set nx 1,
set zy 0,
set ny 1,
set f 1,
set no 1,
eval,
output;

// x-1
set x0a15 %B0000000000000000,
set x16a31 %B1000000000000000,
set y0a15 %B1111111111111111,
set y16a31 %B1111111111111111,
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f 1,
set no 0,
eval,
output;

// y-1
set x0a15 %B0000000000000000,
set x16a31 %B1000000000000000,
set y0a15 %B1111111111111111,
set y16a31 %B1111111111111111,
set zx 1,
set nx 1,
set zy 0,
set ny 0,
set f 1,
set no 0,
eval,
output;

// x+y
set x0a15 %B0000000000000000,
set x16a31 %B1000000000000000,
set y0a15 %B1111111111111111,
set y16a31 %B1111111111111111,
set zx 0,
set nx 0,
set zy 0,
set ny 0,
set f 1,
set no 0,
eval,
output;

// x-y
set x0a15 %B0000000000000000,
set x16a31 %B1000000000000000,
set y0a15 %B1111111111111111,
set y16a31 %B1111111111111111,
set zx 0,
set nx 1,
set zy 0,
set ny 0,
set f 1,
set no 1,
eval,
output;

// y-x
set x0a15 %B0000000000000000,
set x16a31 %B1000000000000000,
set y0a15 %B1111111111111111,
set y16a31 %B1111111111111111,
set zx 0,
set nx 0,
set zy 0,
set ny 1,
set f 1,
set no 1,
eval,
output;

// x&y
set x0a15 %B0000000000000000,
set x16a31 %B1000000000000000,
set y0a15 %B1111111111111111,
set y16a31 %B1111111111111111,
set zx 0,
set nx 0,
set zy 0,
set ny 0,
set f 0,
set no 0,
eval,
output;

// x|y
set x0a15 %B0000000000000000,
set x16a31 %B1000000000000000,
set y0a15 %B1111111111111111,
set y16a31 %B1111111111111111,
set zx 0,
set nx 1,
set zy 0,
set ny 1,
set f 0,
set no 1,
eval,
output;

// ---- valores generales grandes ----
// 0
set x0a15 %B0110000101001110,
set x16a31 %B0000000010111100,
set y0a15 %B0111111110110001,
set y16a31 %B0000010100111001,
set zx 1,
set nx 0,
set zy 1,
set ny 0,
set f 1,
set no 0,
eval,
output;

// 1
set x0a15 %B0110000101001110,
set x16a31 %B0000000010111100,
set y0a15 %B0111111110110001,
set y16a31 %B0000010100111001,
set zx 1,
set nx 1,
set zy 1,
set ny 1,
set f 1,
set no 1,
eval,
output;

// -1
set x0a15 %B0110000101001110,
set x16a31 %B0000000010111100,
set y0a15 %B0111111110110001,
set y16a31 %B0000010100111001,
set zx 1,
set nx 1,
set zy 1,
set ny 0,
set f 1,
set no 0,
eval,
output;

// x
set x0a15 %B0110000101001110,
set x16a31 %B0000000010111100,
set y0a15 %B0111111110110001,
set y16a31 %B0000010100111001,
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f 0,
set no 0,
eval,
output;

// y
set x0a15 %B0110000101001110,
set x16a31 %B0000000010111100,
set y0a15 %B0111111110110001,
set y16a31 %B0000010100111001,
set zx 1,
set nx 1,
set zy 0,
set ny 0,
set f 0,
set no 0,
eval,
output;

// !x
set x0a15 %B0110000101001110,
set x16a31 %B0000000010111100,
set y0a15 %B0111111110110001,
set y16a31 %B0000010100111001,
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f 0,
set no 1,
eval,
output;

// !y
set x0a15 %B0110000101001110,
set x16a31 %B0000000010111100,
set y0a15 %B0111111110110001,
set y16a31 %B0000010100111001,
set zx 1,
set nx 1,
set zy 0,
set ny 0,
set f 0,
set no 1,
eval,
output;

// -x
set x0a15 %B0110000101001110,
set x16a31 %B0000000010111100,
set y0a15 %B0111111110110001,
set y16a31 %B0000010100111001,
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f 1,
set no 1,
eval,
output;

// -y
set x0a15 %B0110000101001110,
set x16a31 %B0000000010111100,
set y0a15 %B0111111110110001,
set y16a31 %B0000010100111001,
set zx 1,
set nx 1,
set zy 0,
set ny 0,
set f 1,
set no 1,
eval,
output;

// x+1
set x0a15 %B0110000101001110,
set x16a31 %B0000000010111100,
set y0a15 %B0111111110110001,
set y16a31 %B0000010100111001,
set zx 0,
set nx 1,
set zy 1,
set ny 1,
set f 1,
set no 1,
eval,
output;

// y+1
set x0a15 %B0110000101001110,
set x16a31 %B0000000010111100,
set y0a15 %B0111111110110001,
set y16a31 %B0000010100111001,
set zx 1,
set nx 1,
set zy 0,
set ny 1,
set f 1,
set no 1,
eval,
output;

// x-1
set x0a15 %B0110000101001110,
set x16a31 %B0000000010111100,
set y0a15 %B0111111110110001,
set y16a31 %B0000010100111001,
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f 1,
set no 0,
eval,
output;

// y-1
set x0a15 %B0110000101001110,
set x16a31 %B0000000010111100,
set y0a15 %B0111111110110001,
set y16a31 %B0000010100111001,
set zx 1,
set nx 1,
set zy 0,
set ny 0,
set f 1,
set no 0,
eval,
output;

// x+y
set x0a15 %B0110000101001110,
set x16a31 %B0000000010111100,
set y0a15 %B0111111110110001,
set y16a31 %B0000010100111001,
set zx 0,
set nx 0,
set zy 0,
set ny 0,
set f 1,
set no 0,
eval,
output;

// x-y
set x0a15 %B0110000101001110,
set x16a31 %B0000000010111100,
set y0a15 %B0111111110110001,
set y16a31 %B0000010100111001,
set zx 0,
set nx 1,
set zy 0,
set ny 0,
set f 1,
set no 1,
eval,
output;

// y-x
set x0a15 %B0110000101001110,
set x16a31 %B0000000010111100,
set y0a15 %B0111111110110001,
set y16a31 %B0000010100111001,
set zx 0,
set nx 0,
set zy 0,
set ny 1,
set f 1,
set no 1,
eval,
output;

// x&y
set x0a15 %B0110000101001110,
set x16a31 %B0000000010111100,
set y0a15 %B0111111110110001,
set y16a31 %B0000010100111001,
set zx 0,
set nx 0,
set zy 0,
set ny 0,
set f 0,
set no 0,
eval,
output;

// x|y
set x0a15 %B0110000101001110,
set x16a31 %B0000000010111100,
set y0a15 %B0111111110110001,
set y16a31 %B0000010100111001,
set zx 0,
set nx 1,
set zy 0,
set ny 1,
set f 0,
set no 1,
eval,
output;

