lbl_80BD7718:
/* 80BD7718  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD771C  7C 08 02 A6 */	mflr r0
/* 80BD7720  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD7724  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD7728  7C 7F 1B 78 */	mr r31, r3
/* 80BD772C  3C 60 80 BE */	lis r3, lit_3829@ha
/* 80BD7730  C0 03 A0 08 */	lfs f0, lit_3829@l(r3)
/* 80BD7734  D0 1F 0F 2C */	stfs f0, 0xf2c(r31)
/* 80BD7738  D0 1F 0F 30 */	stfs f0, 0xf30(r31)
/* 80BD773C  3C 60 80 BE */	lis r3, lit_4130@ha
/* 80BD7740  C0 03 A0 38 */	lfs f0, lit_4130@l(r3)
/* 80BD7744  D0 1F 0F 34 */	stfs f0, 0xf34(r31)
/* 80BD7748  38 7F 0F 38 */	addi r3, r31, 0xf38
/* 80BD774C  4B 43 56 18 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80BD7750  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BD7754  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BD7758  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80BD775C  4B 43 4C D8 */	b mDoMtx_YrotM__FPA4_fs
/* 80BD7760  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BD7764  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BD7768  38 9F 0F 2C */	addi r4, r31, 0xf2c
/* 80BD776C  7C 85 23 78 */	mr r5, r4
/* 80BD7770  4B 76 F5 FC */	b PSMTXMultVec
/* 80BD7774  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD7778  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD777C  7C 08 03 A6 */	mtlr r0
/* 80BD7780  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD7784  4E 80 00 20 */	blr 
