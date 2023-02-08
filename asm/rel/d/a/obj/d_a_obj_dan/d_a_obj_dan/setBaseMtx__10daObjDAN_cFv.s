lbl_80BDB990:
/* 80BDB990  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BDB994  7C 08 02 A6 */	mflr r0
/* 80BDB998  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BDB99C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BDB9A0  7C 7F 1B 78 */	mr r31, r3
/* 80BDB9A4  3C 60 80 BE */	lis r3, lit_3939@ha /* 0x80BDC404@ha */
/* 80BDB9A8  C0 23 C4 04 */	lfs f1, lit_3939@l(r3)  /* 0x80BDC404@l */
/* 80BDB9AC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BDB9B0  3C 60 80 BE */	lis r3, lit_4311@ha /* 0x80BDC458@ha */
/* 80BDB9B4  C0 03 C4 58 */	lfs f0, lit_4311@l(r3)  /* 0x80BDC458@l */
/* 80BDB9B8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BDB9BC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80BDB9C0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BDB9C4  4B 43 13 A1 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BDB9C8  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80BDB9CC  4B 43 15 79 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BDB9D0  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 80BDB9D4  4B 43 14 9D */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80BDB9D8  80 7F 08 44 */	lwz r3, 0x844(r31)
/* 80BDB9DC  80 83 00 04 */	lwz r4, 4(r3)
/* 80BDB9E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BDB9E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BDB9E8  38 84 00 24 */	addi r4, r4, 0x24
/* 80BDB9EC  4B 76 AA C5 */	bl PSMTXCopy
/* 80BDB9F0  80 7F 08 44 */	lwz r3, 0x844(r31)
/* 80BDB9F4  4B 43 57 F9 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80BDB9F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BDB9FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BDBA00  7C 08 03 A6 */	mtlr r0
/* 80BDBA04  38 21 00 20 */	addi r1, r1, 0x20
/* 80BDBA08  4E 80 00 20 */	blr 
