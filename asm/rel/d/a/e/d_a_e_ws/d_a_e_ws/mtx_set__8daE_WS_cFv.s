lbl_807E5A3C:
/* 807E5A3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E5A40  7C 08 02 A6 */	mflr r0
/* 807E5A44  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E5A48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807E5A4C  7C 7F 1B 78 */	mr r31, r3
/* 807E5A50  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 807E5A54  4B 82 73 11 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 807E5A58  38 7F 06 6E */	addi r3, r31, 0x66e
/* 807E5A5C  4B 82 74 E9 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 807E5A60  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 807E5A64  4B 82 74 E1 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 807E5A68  C0 3F 06 78 */	lfs f1, 0x678(r31)
/* 807E5A6C  FC 40 08 90 */	fmr f2, f1
/* 807E5A70  FC 60 08 90 */	fmr f3, f1
/* 807E5A74  4B 82 73 C5 */	bl scaleM__14mDoMtx_stack_cFfff
/* 807E5A78  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807E5A7C  80 83 00 04 */	lwz r4, 4(r3)
/* 807E5A80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E5A84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E5A88  38 84 00 24 */	addi r4, r4, 0x24
/* 807E5A8C  4B B6 0A 25 */	bl PSMTXCopy
/* 807E5A90  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807E5A94  4B 82 B7 59 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 807E5A98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807E5A9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E5AA0  7C 08 03 A6 */	mtlr r0
/* 807E5AA4  38 21 00 10 */	addi r1, r1, 0x10
/* 807E5AA8  4E 80 00 20 */	blr 
