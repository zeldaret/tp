lbl_806FA75C:
/* 806FA75C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806FA760  7C 08 02 A6 */	mflr r0
/* 806FA764  90 01 00 24 */	stw r0, 0x24(r1)
/* 806FA768  39 61 00 20 */	addi r11, r1, 0x20
/* 806FA76C  4B C6 7A 6D */	bl _savegpr_28
/* 806FA770  7C 7C 1B 78 */	mr r28, r3
/* 806FA774  7C BD 2B 78 */	mr r29, r5
/* 806FA778  A3 E4 00 14 */	lhz r31, 0x14(r4)
/* 806FA77C  80 65 00 84 */	lwz r3, 0x84(r5)
/* 806FA780  80 03 00 0C */	lwz r0, 0xc(r3)
/* 806FA784  1F DF 00 30 */	mulli r30, r31, 0x30
/* 806FA788  7C 60 F2 14 */	add r3, r0, r30
/* 806FA78C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806FA790  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806FA794  4B C4 BD 1D */	bl PSMTXCopy
/* 806FA798  2C 1F 00 04 */	cmpwi r31, 4
/* 806FA79C  41 82 00 08 */	beq lbl_806FA7A4
/* 806FA7A0  48 00 00 14 */	b lbl_806FA7B4
lbl_806FA7A4:
/* 806FA7A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806FA7A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806FA7AC  A8 9C 07 58 */	lha r4, 0x758(r28)
/* 806FA7B0  4B 91 1C 85 */	bl mDoMtx_YrotM__FPA4_fs
lbl_806FA7B4:
/* 806FA7B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806FA7B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806FA7BC  80 9D 00 84 */	lwz r4, 0x84(r29)
/* 806FA7C0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 806FA7C4  7C 80 F2 14 */	add r4, r0, r30
/* 806FA7C8  4B C4 BC E9 */	bl PSMTXCopy
/* 806FA7CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806FA7D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806FA7D4  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 806FA7D8  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 806FA7DC  4B C4 BC D5 */	bl PSMTXCopy
/* 806FA7E0  38 60 00 01 */	li r3, 1
/* 806FA7E4  39 61 00 20 */	addi r11, r1, 0x20
/* 806FA7E8  4B C6 7A 3D */	bl _restgpr_28
/* 806FA7EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806FA7F0  7C 08 03 A6 */	mtlr r0
/* 806FA7F4  38 21 00 20 */	addi r1, r1, 0x20
/* 806FA7F8  4E 80 00 20 */	blr 
