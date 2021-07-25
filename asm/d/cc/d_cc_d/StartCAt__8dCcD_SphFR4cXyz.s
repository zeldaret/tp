lbl_80084A78:
/* 80084A78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80084A7C  7C 08 02 A6 */	mflr r0
/* 80084A80  90 01 00 24 */	stw r0, 0x24(r1)
/* 80084A84  3C A0 80 43 */	lis r5, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 80084A88  C4 45 0C F4 */	lfsu f2, Zero__4cXyz@l(r5)  /* 0x80430CF4@l */
/* 80084A8C  D0 41 00 08 */	stfs f2, 8(r1)
/* 80084A90  C0 25 00 04 */	lfs f1, 4(r5)
/* 80084A94  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80084A98  C0 05 00 08 */	lfs f0, 8(r5)
/* 80084A9C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80084AA0  D0 43 00 84 */	stfs f2, 0x84(r3)
/* 80084AA4  D0 23 00 88 */	stfs f1, 0x88(r3)
/* 80084AA8  D0 03 00 8C */	stfs f0, 0x8c(r3)
/* 80084AAC  38 63 01 24 */	addi r3, r3, 0x124
/* 80084AB0  48 1E AB 99 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80084AB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80084AB8  7C 08 03 A6 */	mtlr r0
/* 80084ABC  38 21 00 20 */	addi r1, r1, 0x20
/* 80084AC0  4E 80 00 20 */	blr 
