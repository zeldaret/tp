lbl_8063E19C:
/* 8063E19C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063E1A0  7C 08 02 A6 */	mflr r0
/* 8063E1A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063E1A8  39 61 00 20 */	addi r11, r1, 0x20
/* 8063E1AC  4B D2 40 2C */	b _savegpr_28
/* 8063E1B0  7C 7C 1B 78 */	mr r28, r3
/* 8063E1B4  7C BD 2B 78 */	mr r29, r5
/* 8063E1B8  A3 E4 00 14 */	lhz r31, 0x14(r4)
/* 8063E1BC  80 65 00 84 */	lwz r3, 0x84(r5)
/* 8063E1C0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8063E1C4  1F DF 00 30 */	mulli r30, r31, 0x30
/* 8063E1C8  7C 60 F2 14 */	add r3, r0, r30
/* 8063E1CC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8063E1D0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8063E1D4  4B D0 82 DC */	b PSMTXCopy
/* 8063E1D8  2C 1F 00 02 */	cmpwi r31, 2
/* 8063E1DC  41 82 00 28 */	beq lbl_8063E204
/* 8063E1E0  40 80 00 3C */	bge lbl_8063E21C
/* 8063E1E4  2C 1F 00 01 */	cmpwi r31, 1
/* 8063E1E8  40 80 00 08 */	bge lbl_8063E1F0
/* 8063E1EC  48 00 00 30 */	b lbl_8063E21C
lbl_8063E1F0:
/* 8063E1F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8063E1F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8063E1F8  A8 9C 07 22 */	lha r4, 0x722(r28)
/* 8063E1FC  4B 9C E2 D0 */	b mDoMtx_ZrotM__FPA4_fs
/* 8063E200  48 00 00 1C */	b lbl_8063E21C
lbl_8063E204:
/* 8063E204  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8063E208  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8063E20C  A8 9C 07 20 */	lha r4, 0x720(r28)
/* 8063E210  38 A0 00 00 */	li r5, 0
/* 8063E214  A8 DC 07 1E */	lha r6, 0x71e(r28)
/* 8063E218  4B 9C E0 88 */	b mDoMtx_ZXYrotM__FPA4_fsss
lbl_8063E21C:
/* 8063E21C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8063E220  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8063E224  80 9D 00 84 */	lwz r4, 0x84(r29)
/* 8063E228  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8063E22C  7C 80 F2 14 */	add r4, r0, r30
/* 8063E230  4B D0 82 80 */	b PSMTXCopy
/* 8063E234  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8063E238  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8063E23C  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 8063E240  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 8063E244  4B D0 82 6C */	b PSMTXCopy
/* 8063E248  38 60 00 01 */	li r3, 1
/* 8063E24C  39 61 00 20 */	addi r11, r1, 0x20
/* 8063E250  4B D2 3F D4 */	b _restgpr_28
/* 8063E254  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063E258  7C 08 03 A6 */	mtlr r0
/* 8063E25C  38 21 00 20 */	addi r1, r1, 0x20
/* 8063E260  4E 80 00 20 */	blr 
