lbl_80070C40:
/* 80070C40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80070C44  7C 60 07 34 */	extsh r0, r3
/* 80070C48  C8 62 8C 70 */	lfd f3, lit_4450(r2)
/* 80070C4C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80070C50  90 01 00 0C */	stw r0, 0xc(r1)
/* 80070C54  3C 00 43 30 */	lis r0, 0x4330
/* 80070C58  90 01 00 08 */	stw r0, 8(r1)
/* 80070C5C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80070C60  EC 60 18 28 */	fsubs f3, f0, f3
/* 80070C64  C0 02 8C 68 */	lfs f0, lit_4448(r2)
/* 80070C68  EC 83 00 24 */	fdivs f4, f3, f0
/* 80070C6C  C0 02 8C 50 */	lfs f0, lit_4071(r2)
/* 80070C70  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80070C74  40 80 00 08 */	bge lbl_80070C7C
/* 80070C78  FC 80 20 50 */	fneg f4, f4
lbl_80070C7C:
/* 80070C7C  C0 02 8C 58 */	lfs f0, lit_4073(r2)
/* 80070C80  EC 60 10 28 */	fsubs f3, f0, f2
/* 80070C84  EC 00 20 28 */	fsubs f0, f0, f4
/* 80070C88  EC 00 00 32 */	fmuls f0, f0, f0
/* 80070C8C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80070C90  EC 03 00 2A */	fadds f0, f3, f0
/* 80070C94  EC 21 00 32 */	fmuls f1, f1, f0
/* 80070C98  38 21 00 10 */	addi r1, r1, 0x10
/* 80070C9C  4E 80 00 20 */	blr 
