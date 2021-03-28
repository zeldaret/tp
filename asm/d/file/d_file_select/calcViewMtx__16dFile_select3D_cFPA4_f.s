lbl_801910D4:
/* 801910D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801910D8  7C 08 02 A6 */	mflr r0
/* 801910DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801910E0  C0 22 9F 48 */	lfs f1, lit_4778(r2)
/* 801910E4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 801910E8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801910EC  C0 02 9F D4 */	lfs f0, lit_8993(r2)
/* 801910F0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801910F4  D0 21 00 08 */	stfs f1, 8(r1)
/* 801910F8  C0 02 9F 40 */	lfs f0, lit_4611(r2)
/* 801910FC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80191100  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80191104  7C 83 23 78 */	mr r3, r4
/* 80191108  38 81 00 14 */	addi r4, r1, 0x14
/* 8019110C  3C A0 80 43 */	lis r5, Zero__4cXyz@ha
/* 80191110  38 A5 0C F4 */	addi r5, r5, Zero__4cXyz@l
/* 80191114  38 C1 00 08 */	addi r6, r1, 8
/* 80191118  38 E0 00 00 */	li r7, 0
/* 8019111C  4B E7 B5 F5 */	bl mDoMtx_lookAt__FPA4_fPC3VecPC3VecPC3Vecs
/* 80191120  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80191124  7C 08 03 A6 */	mtlr r0
/* 80191128  38 21 00 20 */	addi r1, r1, 0x20
/* 8019112C  4E 80 00 20 */	blr 
