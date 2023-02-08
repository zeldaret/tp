lbl_800FCF58:
/* 800FCF58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FCF5C  C0 42 95 80 */	lfs f2, lit_24600(r2)
/* 800FCF60  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 800FCF64  C0 03 34 F0 */	lfs f0, 0x34f0(r3)
/* 800FCF68  EC 01 00 28 */	fsubs f0, f1, f0
/* 800FCF6C  EC 02 00 32 */	fmuls f0, f2, f0
/* 800FCF70  FC 00 00 1E */	fctiwz f0, f0
/* 800FCF74  D8 01 00 08 */	stfd f0, 8(r1)
/* 800FCF78  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800FCF7C  38 21 00 10 */	addi r1, r1, 0x10
/* 800FCF80  4E 80 00 20 */	blr 
