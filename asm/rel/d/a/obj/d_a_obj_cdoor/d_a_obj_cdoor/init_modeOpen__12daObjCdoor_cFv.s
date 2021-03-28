lbl_80BC776C:
/* 80BC776C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC7770  A8 03 05 C6 */	lha r0, 0x5c6(r3)
/* 80BC7774  3C 80 80 BC */	lis r4, lit_3909@ha
/* 80BC7778  C8 24 7D 38 */	lfd f1, lit_3909@l(r4)
/* 80BC777C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BC7780  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BC7784  3C 00 43 30 */	lis r0, 0x4330
/* 80BC7788  90 01 00 08 */	stw r0, 8(r1)
/* 80BC778C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80BC7790  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BC7794  D0 03 05 D0 */	stfs f0, 0x5d0(r3)
/* 80BC7798  3C 80 80 BC */	lis r4, lit_3783@ha
/* 80BC779C  C0 04 7D 30 */	lfs f0, lit_3783@l(r4)
/* 80BC77A0  D0 03 05 CC */	stfs f0, 0x5cc(r3)
/* 80BC77A4  38 00 00 00 */	li r0, 0
/* 80BC77A8  98 03 05 C5 */	stb r0, 0x5c5(r3)
/* 80BC77AC  38 00 00 01 */	li r0, 1
/* 80BC77B0  98 03 05 F9 */	stb r0, 0x5f9(r3)
/* 80BC77B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC77B8  4E 80 00 20 */	blr 
