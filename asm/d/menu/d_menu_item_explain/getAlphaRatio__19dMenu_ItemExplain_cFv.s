lbl_801DC7AC:
/* 801DC7AC  88 03 00 E0 */	lbz r0, 0xe0(r3)
/* 801DC7B0  2C 00 00 01 */	cmpwi r0, 1
/* 801DC7B4  41 82 00 20 */	beq lbl_801DC7D4
/* 801DC7B8  40 80 00 10 */	bge lbl_801DC7C8
/* 801DC7BC  2C 00 00 00 */	cmpwi r0, 0
/* 801DC7C0  40 80 00 2C */	bge lbl_801DC7EC
/* 801DC7C4  48 00 00 30 */	b lbl_801DC7F4
lbl_801DC7C8:
/* 801DC7C8  2C 00 00 05 */	cmpwi r0, 5
/* 801DC7CC  41 82 00 08 */	beq lbl_801DC7D4
/* 801DC7D0  48 00 00 24 */	b lbl_801DC7F4
lbl_801DC7D4:
/* 801DC7D4  C0 22 A8 8C */	lfs f1, lit_4063(r2)
/* 801DC7D8  C0 03 00 BC */	lfs f0, 0xbc(r3)
/* 801DC7DC  EC 21 00 28 */	fsubs f1, f1, f0
/* 801DC7E0  C0 02 A8 D0 */	lfs f0, lit_4820(r2)
/* 801DC7E4  EC 21 00 24 */	fdivs f1, f1, f0
/* 801DC7E8  4E 80 00 20 */	blr 
lbl_801DC7EC:
/* 801DC7EC  C0 22 A8 C4 */	lfs f1, lit_4348(r2)
/* 801DC7F0  4E 80 00 20 */	blr 
lbl_801DC7F4:
/* 801DC7F4  C0 22 A8 88 */	lfs f1, lit_4062(r2)
/* 801DC7F8  4E 80 00 20 */	blr 
