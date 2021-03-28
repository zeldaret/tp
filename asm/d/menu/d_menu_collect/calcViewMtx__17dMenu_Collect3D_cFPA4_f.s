lbl_801B774C:
/* 801B774C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B7750  7C 08 02 A6 */	mflr r0
/* 801B7754  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B7758  C0 22 A5 28 */	lfs f1, lit_4481(r2)
/* 801B775C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 801B7760  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801B7764  C0 02 A5 34 */	lfs f0, lit_5174(r2)
/* 801B7768  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801B776C  D0 21 00 08 */	stfs f1, 8(r1)
/* 801B7770  C0 02 A5 2C */	lfs f0, lit_4482(r2)
/* 801B7774  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801B7778  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 801B777C  38 81 00 14 */	addi r4, r1, 0x14
/* 801B7780  3C A0 80 43 */	lis r5, Zero__4cXyz@ha
/* 801B7784  38 A5 0C F4 */	addi r5, r5, Zero__4cXyz@l
/* 801B7788  38 C1 00 08 */	addi r6, r1, 8
/* 801B778C  38 E0 00 00 */	li r7, 0
/* 801B7790  4B E5 4F 81 */	bl mDoMtx_lookAt__FPA4_fPC3VecPC3VecPC3Vecs
/* 801B7794  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B7798  7C 08 03 A6 */	mtlr r0
/* 801B779C  38 21 00 20 */	addi r1, r1, 0x20
/* 801B77A0  4E 80 00 20 */	blr 
