lbl_80C95890:
/* 80C95890  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C95894  7C 08 02 A6 */	mflr r0
/* 80C95898  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C9589C  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80C958A0  C0 23 0A 04 */	lfs f1, 0xa04(r3)
/* 80C958A4  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80C958A8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C958AC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C958B0  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80C958B4  38 81 00 08 */	addi r4, r1, 8
/* 80C958B8  3C A0 80 C9 */	lis r5, lit_4641@ha
/* 80C958BC  C0 25 5B 7C */	lfs f1, lit_4641@l(r5)
/* 80C958C0  3C A0 80 C9 */	lis r5, lit_4395@ha
/* 80C958C4  C0 45 5B 48 */	lfs f2, lit_4395@l(r5)
/* 80C958C8  38 63 0A 30 */	addi r3, r3, 0xa30
/* 80C958CC  4B 38 78 40 */	b fopAcM_effHamonSet__FPUlPC4cXyzff
/* 80C958D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C958D4  7C 08 03 A6 */	mtlr r0
/* 80C958D8  38 21 00 20 */	addi r1, r1, 0x20
/* 80C958DC  4E 80 00 20 */	blr 
