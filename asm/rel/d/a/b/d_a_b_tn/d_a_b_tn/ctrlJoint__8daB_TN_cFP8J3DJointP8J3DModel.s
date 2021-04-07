lbl_8061EC58:
/* 8061EC58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8061EC5C  7C 08 02 A6 */	mflr r0
/* 8061EC60  90 01 00 24 */	stw r0, 0x24(r1)
/* 8061EC64  39 61 00 20 */	addi r11, r1, 0x20
/* 8061EC68  4B D4 35 71 */	bl _savegpr_28
/* 8061EC6C  7C 7C 1B 78 */	mr r28, r3
/* 8061EC70  7C BD 2B 78 */	mr r29, r5
/* 8061EC74  A3 E4 00 14 */	lhz r31, 0x14(r4)
/* 8061EC78  80 65 00 84 */	lwz r3, 0x84(r5)
/* 8061EC7C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8061EC80  1F DF 00 30 */	mulli r30, r31, 0x30
/* 8061EC84  7C 60 F2 14 */	add r3, r0, r30
/* 8061EC88  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8061EC8C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8061EC90  4B D2 78 21 */	bl PSMTXCopy
/* 8061EC94  2C 1F 00 05 */	cmpwi r31, 5
/* 8061EC98  40 82 00 18 */	bne lbl_8061ECB0
/* 8061EC9C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8061ECA0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8061ECA4  A8 9C 0A 96 */	lha r4, 0xa96(r28)
/* 8061ECA8  4B 9E D6 F5 */	bl mDoMtx_XrotM__FPA4_fs
/* 8061ECAC  48 00 00 1C */	b lbl_8061ECC8
lbl_8061ECB0:
/* 8061ECB0  2C 1F 00 01 */	cmpwi r31, 1
/* 8061ECB4  40 82 00 14 */	bne lbl_8061ECC8
/* 8061ECB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8061ECBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8061ECC0  A8 9C 0A 98 */	lha r4, 0xa98(r28)
/* 8061ECC4  4B 9E D6 D9 */	bl mDoMtx_XrotM__FPA4_fs
lbl_8061ECC8:
/* 8061ECC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8061ECCC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8061ECD0  80 9D 00 84 */	lwz r4, 0x84(r29)
/* 8061ECD4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8061ECD8  7C 80 F2 14 */	add r4, r0, r30
/* 8061ECDC  4B D2 77 D5 */	bl PSMTXCopy
/* 8061ECE0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8061ECE4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8061ECE8  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 8061ECEC  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 8061ECF0  4B D2 77 C1 */	bl PSMTXCopy
/* 8061ECF4  38 60 00 01 */	li r3, 1
/* 8061ECF8  39 61 00 20 */	addi r11, r1, 0x20
/* 8061ECFC  4B D4 35 29 */	bl _restgpr_28
/* 8061ED00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8061ED04  7C 08 03 A6 */	mtlr r0
/* 8061ED08  38 21 00 20 */	addi r1, r1, 0x20
/* 8061ED0C  4E 80 00 20 */	blr 
