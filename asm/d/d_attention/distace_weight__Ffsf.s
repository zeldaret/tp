lbl_80070BF4:
/* 80070BF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80070BF8  7C 60 07 34 */	extsh r0, r3
/* 80070BFC  C8 62 8C 70 */	lfd f3, lit_4450(r2)
/* 80070C00  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80070C04  90 01 00 0C */	stw r0, 0xc(r1)
/* 80070C08  3C 00 43 30 */	lis r0, 0x4330
/* 80070C0C  90 01 00 08 */	stw r0, 8(r1)
/* 80070C10  C8 01 00 08 */	lfd f0, 8(r1)
/* 80070C14  EC 60 18 28 */	fsubs f3, f0, f3
/* 80070C18  C0 02 8C 68 */	lfs f0, lit_4448(r2)
/* 80070C1C  EC 83 00 24 */	fdivs f4, f3, f0
/* 80070C20  C0 02 8C 58 */	lfs f0, lit_4073(r2)
/* 80070C24  EC 60 10 28 */	fsubs f3, f0, f2
/* 80070C28  EC 04 01 32 */	fmuls f0, f4, f4
/* 80070C2C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80070C30  EC 03 00 2A */	fadds f0, f3, f0
/* 80070C34  EC 21 00 32 */	fmuls f1, f1, f0
/* 80070C38  38 21 00 10 */	addi r1, r1, 0x10
/* 80070C3C  4E 80 00 20 */	blr 
