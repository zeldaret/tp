lbl_80D44CB8:
/* 80D44CB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D44CBC  7C 08 02 A6 */	mflr r0
/* 80D44CC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D44CC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D44CC8  7C 7F 1B 78 */	mr r31, r3
/* 80D44CCC  3C 60 80 D4 */	lis r3, lit_3814@ha
/* 80D44CD0  38 63 55 C4 */	addi r3, r3, lit_3814@l
/* 80D44CD4  C0 03 00 00 */	lfs f0, 0(r3)
/* 80D44CD8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D44CDC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80D44CE0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D44CE4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80D44CE8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D44CEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D44CF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D44CF4  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 80D44CF8  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 80D44CFC  A8 DF 04 E0 */	lha r6, 0x4e0(r31)
/* 80D44D00  4B 2C 75 08 */	b mDoMtx_ZXYrotS__FPA4_fsss
/* 80D44D04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D44D08  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D44D0C  38 81 00 08 */	addi r4, r1, 8
/* 80D44D10  38 BF 05 50 */	addi r5, r31, 0x550
/* 80D44D14  4B 60 20 58 */	b PSMTXMultVec
/* 80D44D18  38 7F 05 50 */	addi r3, r31, 0x550
/* 80D44D1C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80D44D20  7C 65 1B 78 */	mr r5, r3
/* 80D44D24  4B 60 23 6C */	b PSVECAdd
/* 80D44D28  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D44D2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D44D30  7C 08 03 A6 */	mtlr r0
/* 80D44D34  38 21 00 20 */	addi r1, r1, 0x20
/* 80D44D38  4E 80 00 20 */	blr 
