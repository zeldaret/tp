lbl_80BCA78C:
/* 80BCA78C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BCA790  7C 08 02 A6 */	mflr r0
/* 80BCA794  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BCA798  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80BCA79C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80BCA7A0  7C 7E 1B 78 */	mr r30, r3
/* 80BCA7A4  3C 60 80 BD */	lis r3, lit_3775@ha
/* 80BCA7A8  3B E3 C5 78 */	addi r31, r3, lit_3775@l
/* 80BCA7AC  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80BCA7B0  C0 1E 05 30 */	lfs f0, 0x530(r30)
/* 80BCA7B4  EC 01 00 2A */	fadds f0, f1, f0
/* 80BCA7B8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80BCA7BC  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80BCA7C0  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 80BCA7C4  EC 01 00 2A */	fadds f0, f1, f0
/* 80BCA7C8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80BCA7CC  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80BCA7D0  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80BCA7D4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BCA7D8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BCA7DC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80BCA7E0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BCA7E4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BCA7E8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BCA7EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BCA7F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BCA7F4  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80BCA7F8  4B 44 1B E4 */	b mDoMtx_YrotS__FPA4_fs
/* 80BCA7FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BCA800  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BCA804  38 81 00 14 */	addi r4, r1, 0x14
/* 80BCA808  38 A1 00 08 */	addi r5, r1, 8
/* 80BCA80C  4B 77 C5 60 */	b PSMTXMultVec
/* 80BCA810  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80BCA814  C0 01 00 08 */	lfs f0, 8(r1)
/* 80BCA818  EC 01 00 2A */	fadds f0, f1, f0
/* 80BCA81C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80BCA820  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80BCA824  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BCA828  EC 01 00 2A */	fadds f0, f1, f0
/* 80BCA82C  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80BCA830  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80BCA834  C0 3E 09 88 */	lfs f1, 0x988(r30)
/* 80BCA838  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80BCA83C  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 80BCA840  4B 6A 51 FC */	b cLib_addCalc2__FPffff
/* 80BCA844  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 80BCA848  C0 3E 09 8C */	lfs f1, 0x98c(r30)
/* 80BCA84C  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 80BCA850  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 80BCA854  4B 6A 51 E8 */	b cLib_addCalc2__FPffff
/* 80BCA858  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80BCA85C  A8 9E 09 90 */	lha r4, 0x990(r30)
/* 80BCA860  38 A0 00 09 */	li r5, 9
/* 80BCA864  38 C0 10 00 */	li r6, 0x1000
/* 80BCA868  4B 6A 5D A0 */	b cLib_addCalcAngleS2__FPssss
/* 80BCA86C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80BCA870  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80BCA874  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80BCA878  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80BCA87C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BCA880  7C 08 03 A6 */	mtlr r0
/* 80BCA884  38 21 00 30 */	addi r1, r1, 0x30
/* 80BCA888  4E 80 00 20 */	blr 
