lbl_80CCA74C:
/* 80CCA74C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CCA750  7C 08 02 A6 */	mflr r0
/* 80CCA754  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CCA758  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80CCA75C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80CCA760  7C 7E 1B 78 */	mr r30, r3
/* 80CCA764  3C 60 80 CD */	lis r3, DISAP_PARTICLE_NAME@ha /* 0x80CCB080@ha */
/* 80CCA768  3B E3 B0 80 */	addi r31, r3, DISAP_PARTICLE_NAME@l /* 0x80CCB080@l */
/* 80CCA76C  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80CCA770  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CCA774  38 7F 00 60 */	addi r3, r31, 0x60
/* 80CCA778  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CCA77C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CCA780  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CCA784  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CCA788  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80CCA78C  4B 34 25 D9 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80CCA790  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80CCA794  4B 34 27 B1 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80CCA798  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CCA79C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CCA7A0  38 81 00 08 */	addi r4, r1, 8
/* 80CCA7A4  38 BE 05 74 */	addi r5, r30, 0x574
/* 80CCA7A8  4B 67 C5 C5 */	bl PSMTXMultVec
/* 80CCA7AC  C0 1E 05 74 */	lfs f0, 0x574(r30)
/* 80CCA7B0  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80CCA7B4  C0 1E 05 78 */	lfs f0, 0x578(r30)
/* 80CCA7B8  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80CCA7BC  C0 1E 05 7C */	lfs f0, 0x57c(r30)
/* 80CCA7C0  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80CCA7C4  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 80CCA7C8  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80CCA7CC  EC 01 00 2A */	fadds f0, f1, f0
/* 80CCA7D0  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80CCA7D4  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 80CCA7D8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CCA7DC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80CCA7E0  C8 3F 00 78 */	lfd f1, 0x78(r31)
/* 80CCA7E4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CCA7E8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80CCA7EC  3C 00 43 30 */	lis r0, 0x4330
/* 80CCA7F0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80CCA7F4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80CCA7F8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CCA7FC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CCA800  EC 00 00 32 */	fmuls f0, f0, f0
/* 80CCA804  D0 1E 06 38 */	stfs f0, 0x638(r30)
/* 80CCA808  38 80 00 00 */	li r4, 0
/* 80CCA80C  98 9E 06 4E */	stb r4, 0x64e(r30)
/* 80CCA810  90 9E 06 40 */	stw r4, 0x640(r30)
/* 80CCA814  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 80CCA818  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 80CCA81C  B0 1E 06 48 */	sth r0, 0x648(r30)
/* 80CCA820  B0 1E 06 4A */	sth r0, 0x64a(r30)
/* 80CCA824  90 9E 06 44 */	stw r4, 0x644(r30)
/* 80CCA828  98 9E 06 51 */	stb r4, 0x651(r30)
/* 80CCA82C  98 9E 06 52 */	stb r4, 0x652(r30)
/* 80CCA830  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80CCA834  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80CCA838  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CCA83C  7C 08 03 A6 */	mtlr r0
/* 80CCA840  38 21 00 30 */	addi r1, r1, 0x30
/* 80CCA844  4E 80 00 20 */	blr 
