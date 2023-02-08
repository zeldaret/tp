lbl_80CDEBA0:
/* 80CDEBA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDEBA4  7C 08 02 A6 */	mflr r0
/* 80CDEBA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDEBAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDEBB0  7C 7F 1B 78 */	mr r31, r3
/* 80CDEBB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CDEBB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CDEBBC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CDEBC0  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CDEBC4  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CDEBC8  4B 66 7D 21 */	bl PSMTXTrans
/* 80CDEBCC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CDEBD0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CDEBD4  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80CDEBD8  4B 32 D8 5D */	bl mDoMtx_YrotM__FPA4_fs
/* 80CDEBDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CDEBE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CDEBE4  80 9F 05 84 */	lwz r4, 0x584(r31)
/* 80CDEBE8  38 84 00 24 */	addi r4, r4, 0x24
/* 80CDEBEC  4B 66 78 C5 */	bl PSMTXCopy
/* 80CDEBF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDEBF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDEBF8  7C 08 03 A6 */	mtlr r0
/* 80CDEBFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDEC00  4E 80 00 20 */	blr 
