lbl_801CE068:
/* 801CE068  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801CE06C  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 801CE070  C8 82 A7 78 */	lfd f4, lit_3689(r2)
/* 801CE074  90 A1 00 0C */	stw r5, 0xc(r1)
/* 801CE078  3C 60 43 30 */	lis r3, 0x4330
/* 801CE07C  90 61 00 08 */	stw r3, 8(r1)
/* 801CE080  C8 01 00 08 */	lfd f0, 8(r1)
/* 801CE084  EC 60 20 28 */	fsubs f3, f0, f4
/* 801CE088  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 801CE08C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CE090  90 61 00 10 */	stw r3, 0x10(r1)
/* 801CE094  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801CE098  EC 40 20 28 */	fsubs f2, f0, f4
/* 801CE09C  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 801CE0A0  90 61 00 18 */	stw r3, 0x18(r1)
/* 801CE0A4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 801CE0A8  EC 00 20 28 */	fsubs f0, f0, f4
/* 801CE0AC  EC 02 00 28 */	fsubs f0, f2, f0
/* 801CE0B0  EC 01 00 32 */	fmuls f0, f1, f0
/* 801CE0B4  EC 03 00 2A */	fadds f0, f3, f0
/* 801CE0B8  FC 00 00 1E */	fctiwz f0, f0
/* 801CE0BC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 801CE0C0  80 61 00 24 */	lwz r3, 0x24(r1)
/* 801CE0C4  38 21 00 30 */	addi r1, r1, 0x30
/* 801CE0C8  4E 80 00 20 */	blr 
