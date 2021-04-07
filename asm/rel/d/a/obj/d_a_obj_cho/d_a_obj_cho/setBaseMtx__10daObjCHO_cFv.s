lbl_80BCBD10:
/* 80BCBD10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCBD14  7C 08 02 A6 */	mflr r0
/* 80BCBD18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCBD1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCBD20  7C 7F 1B 78 */	mr r31, r3
/* 80BCBD24  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BCBD28  4B 44 10 3D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BCBD2C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80BCBD30  4B 44 12 15 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BCBD34  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 80BCBD38  4B 44 11 39 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80BCBD3C  80 7F 0A 60 */	lwz r3, 0xa60(r31)
/* 80BCBD40  80 83 00 04 */	lwz r4, 4(r3)
/* 80BCBD44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BCBD48  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BCBD4C  38 84 00 24 */	addi r4, r4, 0x24
/* 80BCBD50  4B 77 A7 61 */	bl PSMTXCopy
/* 80BCBD54  80 7F 0A 60 */	lwz r3, 0xa60(r31)
/* 80BCBD58  4B 44 54 95 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80BCBD5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCBD60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCBD64  7C 08 03 A6 */	mtlr r0
/* 80BCBD68  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCBD6C  4E 80 00 20 */	blr 
