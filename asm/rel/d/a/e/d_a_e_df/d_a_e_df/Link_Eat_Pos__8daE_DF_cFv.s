lbl_806A8030:
/* 806A8030  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806A8034  7C 08 02 A6 */	mflr r0
/* 806A8038  90 01 00 24 */	stw r0, 0x24(r1)
/* 806A803C  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 806A8040  3C 80 80 6B */	lis r4, lit_4025@ha
/* 806A8044  C0 24 9F A8 */	lfs f1, lit_4025@l(r4)
/* 806A8048  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 806A804C  EC 21 00 2A */	fadds f1, f1, f0
/* 806A8050  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 806A8054  D0 01 00 08 */	stfs f0, 8(r1)
/* 806A8058  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806A805C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 806A8060  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806A8064  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806A8068  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806A806C  38 81 00 08 */	addi r4, r1, 8
/* 806A8070  38 A0 00 00 */	li r5, 0
/* 806A8074  38 C0 00 00 */	li r6, 0
/* 806A8078  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806A807C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 806A8080  7D 89 03 A6 */	mtctr r12
/* 806A8084  4E 80 04 21 */	bctrl 
/* 806A8088  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806A808C  7C 08 03 A6 */	mtlr r0
/* 806A8090  38 21 00 20 */	addi r1, r1, 0x20
/* 806A8094  4E 80 00 20 */	blr 
