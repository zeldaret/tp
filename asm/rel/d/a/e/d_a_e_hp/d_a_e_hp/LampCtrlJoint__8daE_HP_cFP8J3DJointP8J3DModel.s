lbl_806E5F1C:
/* 806E5F1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806E5F20  7C 08 02 A6 */	mflr r0
/* 806E5F24  90 01 00 24 */	stw r0, 0x24(r1)
/* 806E5F28  39 61 00 20 */	addi r11, r1, 0x20
/* 806E5F2C  4B C7 C2 AD */	bl _savegpr_28
/* 806E5F30  7C 7C 1B 78 */	mr r28, r3
/* 806E5F34  7C BD 2B 78 */	mr r29, r5
/* 806E5F38  A3 E4 00 14 */	lhz r31, 0x14(r4)
/* 806E5F3C  80 65 00 84 */	lwz r3, 0x84(r5)
/* 806E5F40  80 03 00 0C */	lwz r0, 0xc(r3)
/* 806E5F44  1F DF 00 30 */	mulli r30, r31, 0x30
/* 806E5F48  7C 60 F2 14 */	add r3, r0, r30
/* 806E5F4C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806E5F50  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806E5F54  4B C6 05 5D */	bl PSMTXCopy
/* 806E5F58  2C 1F 00 02 */	cmpwi r31, 2
/* 806E5F5C  41 82 00 08 */	beq lbl_806E5F64
/* 806E5F60  48 00 00 24 */	b lbl_806E5F84
lbl_806E5F64:
/* 806E5F64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806E5F68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806E5F6C  A8 9C 07 6C */	lha r4, 0x76c(r28)
/* 806E5F70  4B 92 64 2D */	bl mDoMtx_XrotM__FPA4_fs
/* 806E5F74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806E5F78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806E5F7C  A8 9C 07 70 */	lha r4, 0x770(r28)
/* 806E5F80  4B 92 65 4D */	bl mDoMtx_ZrotM__FPA4_fs
lbl_806E5F84:
/* 806E5F84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806E5F88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806E5F8C  80 9D 00 84 */	lwz r4, 0x84(r29)
/* 806E5F90  80 04 00 0C */	lwz r0, 0xc(r4)
/* 806E5F94  7C 80 F2 14 */	add r4, r0, r30
/* 806E5F98  4B C6 05 19 */	bl PSMTXCopy
/* 806E5F9C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806E5FA0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806E5FA4  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 806E5FA8  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 806E5FAC  4B C6 05 05 */	bl PSMTXCopy
/* 806E5FB0  38 60 00 01 */	li r3, 1
/* 806E5FB4  39 61 00 20 */	addi r11, r1, 0x20
/* 806E5FB8  4B C7 C2 6D */	bl _restgpr_28
/* 806E5FBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806E5FC0  7C 08 03 A6 */	mtlr r0
/* 806E5FC4  38 21 00 20 */	addi r1, r1, 0x20
/* 806E5FC8  4E 80 00 20 */	blr 
