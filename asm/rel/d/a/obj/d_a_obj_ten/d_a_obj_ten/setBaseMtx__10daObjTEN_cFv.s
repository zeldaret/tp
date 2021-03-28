lbl_80D0AC34:
/* 80D0AC34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0AC38  7C 08 02 A6 */	mflr r0
/* 80D0AC3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0AC40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0AC44  7C 7F 1B 78 */	mr r31, r3
/* 80D0AC48  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80D0AC4C  4B 30 21 18 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80D0AC50  38 7F 06 02 */	addi r3, r31, 0x602
/* 80D0AC54  4B 30 22 F0 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80D0AC58  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80D0AC5C  4B 30 22 E8 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80D0AC60  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 80D0AC64  4B 30 22 0C */	b scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80D0AC68  80 7F 0A 58 */	lwz r3, 0xa58(r31)
/* 80D0AC6C  80 83 00 04 */	lwz r4, 4(r3)
/* 80D0AC70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D0AC74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D0AC78  38 84 00 24 */	addi r4, r4, 0x24
/* 80D0AC7C  4B 63 B8 34 */	b PSMTXCopy
/* 80D0AC80  80 7F 0A 58 */	lwz r3, 0xa58(r31)
/* 80D0AC84  4B 30 65 68 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 80D0AC88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0AC8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0AC90  7C 08 03 A6 */	mtlr r0
/* 80D0AC94  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0AC98  4E 80 00 20 */	blr 
