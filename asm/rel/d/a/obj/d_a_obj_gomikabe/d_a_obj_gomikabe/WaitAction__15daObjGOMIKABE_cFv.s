lbl_80BFE47C:
/* 80BFE47C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BFE480  7C 08 02 A6 */	mflr r0
/* 80BFE484  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BFE488  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80BFE48C  3C 80 80 C0 */	lis r4, lit_3842@ha
/* 80BFE490  C0 24 FC 74 */	lfs f1, lit_3842@l(r4)
/* 80BFE494  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80BFE498  EC 21 00 2A */	fadds f1, f1, f0
/* 80BFE49C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80BFE4A0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BFE4A4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80BFE4A8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80BFE4AC  38 61 00 08 */	addi r3, r1, 8
/* 80BFE4B0  4B 41 F8 D4 */	b waterCheck__11fopAcM_wt_cFPC4cXyz
/* 80BFE4B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BFE4B8  7C 08 03 A6 */	mtlr r0
/* 80BFE4BC  38 21 00 20 */	addi r1, r1, 0x20
/* 80BFE4C0  4E 80 00 20 */	blr 
