lbl_80CA0978:
/* 80CA0978  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CA097C  7C 08 02 A6 */	mflr r0
/* 80CA0980  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CA0984  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80CA0988  7C 7F 1B 78 */	mr r31, r3
/* 80CA098C  88 03 07 FC */	lbz r0, 0x7fc(r3)
/* 80CA0990  28 00 00 00 */	cmplwi r0, 0
/* 80CA0994  40 82 00 24 */	bne lbl_80CA09B8
/* 80CA0998  38 7F 07 D4 */	addi r3, r31, 0x7d4
/* 80CA099C  A8 9F 07 DA */	lha r4, 0x7da(r31)
/* 80CA09A0  38 A0 01 00 */	li r5, 0x100
/* 80CA09A4  4B 5D 01 ED */	bl cLib_chaseAngleS__FPsss
/* 80CA09A8  38 7F 07 D8 */	addi r3, r31, 0x7d8
/* 80CA09AC  A8 9F 07 DE */	lha r4, 0x7de(r31)
/* 80CA09B0  38 A0 01 00 */	li r5, 0x100
/* 80CA09B4  4B 5D 01 DD */	bl cLib_chaseAngleS__FPsss
lbl_80CA09B8:
/* 80CA09B8  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 80CA09BC  3C 60 80 CA */	lis r3, lit_3870@ha /* 0x80CA31D8@ha */
/* 80CA09C0  C0 03 31 D8 */	lfs f0, lit_3870@l(r3)  /* 0x80CA31D8@l */
/* 80CA09C4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CA09C8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CA09CC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80CA09D0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CA09D4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CA09D8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CA09DC  38 7F 07 D4 */	addi r3, r31, 0x7d4
/* 80CA09E0  4B 36 C5 2D */	bl ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80CA09E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CA09E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CA09EC  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80CA09F0  4B 36 BA 45 */	bl mDoMtx_YrotM__FPA4_fs
/* 80CA09F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CA09F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CA09FC  38 81 00 14 */	addi r4, r1, 0x14
/* 80CA0A00  38 A1 00 08 */	addi r5, r1, 8
/* 80CA0A04  4B 6A 63 69 */	bl PSMTXMultVec
/* 80CA0A08  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CA0A0C  38 81 00 08 */	addi r4, r1, 8
/* 80CA0A10  7C 65 1B 78 */	mr r5, r3
/* 80CA0A14  4B 6A 66 7D */	bl PSVECAdd
/* 80CA0A18  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80CA0A1C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CA0A20  7C 08 03 A6 */	mtlr r0
/* 80CA0A24  38 21 00 30 */	addi r1, r1, 0x30
/* 80CA0A28  4E 80 00 20 */	blr 
