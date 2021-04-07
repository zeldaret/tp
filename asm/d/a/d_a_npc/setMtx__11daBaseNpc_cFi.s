lbl_8014F390:
/* 8014F390  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8014F394  7C 08 02 A6 */	mflr r0
/* 8014F398  90 01 00 24 */	stw r0, 0x24(r1)
/* 8014F39C  39 61 00 20 */	addi r11, r1, 0x20
/* 8014F3A0  48 21 2E 39 */	bl _savegpr_28
/* 8014F3A4  7C 7F 1B 78 */	mr r31, r3
/* 8014F3A8  7C 9C 23 78 */	mr r28, r4
/* 8014F3AC  80 63 07 54 */	lwz r3, 0x754(r3)
/* 8014F3B0  83 C3 00 04 */	lwz r30, 4(r3)
/* 8014F3B4  83 BE 00 04 */	lwz r29, 4(r30)
/* 8014F3B8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8014F3BC  4B EB D9 A9 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8014F3C0  38 7F 09 1A */	addi r3, r31, 0x91a
/* 8014F3C4  4B EB DB 81 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8014F3C8  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 8014F3CC  4B EB DA A5 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 8014F3D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8014F3D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8014F3D8  38 9E 00 24 */	addi r4, r30, 0x24
/* 8014F3DC  48 1F 70 D5 */	bl PSMTXCopy
/* 8014F3E0  2C 1C 00 00 */	cmpwi r28, 0
/* 8014F3E4  41 82 00 0C */	beq lbl_8014F3F0
/* 8014F3E8  93 FE 00 14 */	stw r31, 0x14(r30)
/* 8014F3EC  48 00 00 0C */	b lbl_8014F3F8
lbl_8014F3F0:
/* 8014F3F0  38 00 00 00 */	li r0, 0
/* 8014F3F4  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_8014F3F8:
/* 8014F3F8  A0 1F 08 40 */	lhz r0, 0x840(r31)
/* 8014F3FC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8014F400  41 82 00 80 */	beq lbl_8014F480
/* 8014F404  80 1F 08 3C */	lwz r0, 0x83c(r31)
/* 8014F408  28 00 00 00 */	cmplwi r0, 0
/* 8014F40C  41 82 00 74 */	beq lbl_8014F480
/* 8014F410  3B C0 00 00 */	li r30, 0
/* 8014F414  48 00 00 18 */	b lbl_8014F42C
lbl_8014F418:
/* 8014F418  38 7F 07 EC */	addi r3, r31, 0x7ec
/* 8014F41C  7F A4 EB 78 */	mr r4, r29
/* 8014F420  C0 3F 07 FC */	lfs f1, 0x7fc(r31)
/* 8014F424  4B EB E5 C5 */	bl entryJoint__13mDoExt_bckAnmFP12J3DModelDataUsf
/* 8014F428  3B DE 00 01 */	addi r30, r30, 1
lbl_8014F42C:
/* 8014F42C  80 7F 08 3C */	lwz r3, 0x83c(r31)
/* 8014F430  57 C0 0B FC */	rlwinm r0, r30, 1, 0xf, 0x1e
/* 8014F434  7C A3 02 2E */	lhzx r5, r3, r0
/* 8014F438  28 05 FF FF */	cmplwi r5, 0xffff
/* 8014F43C  40 82 FF DC */	bne lbl_8014F418
/* 8014F440  80 7F 07 54 */	lwz r3, 0x754(r31)
/* 8014F444  4B EC 1D A9 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 8014F448  38 A0 00 00 */	li r5, 0
/* 8014F44C  38 80 00 00 */	li r4, 0
/* 8014F450  48 00 00 18 */	b lbl_8014F468
lbl_8014F454:
/* 8014F454  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 8014F458  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 8014F45C  7C 63 00 2E */	lwzx r3, r3, r0
/* 8014F460  90 83 00 54 */	stw r4, 0x54(r3)
/* 8014F464  38 A5 00 01 */	addi r5, r5, 1
lbl_8014F468:
/* 8014F468  80 7F 08 3C */	lwz r3, 0x83c(r31)
/* 8014F46C  54 A0 0B FC */	rlwinm r0, r5, 1, 0xf, 0x1e
/* 8014F470  7C 03 02 2E */	lhzx r0, r3, r0
/* 8014F474  28 00 FF FF */	cmplwi r0, 0xffff
/* 8014F478  40 82 FF DC */	bne lbl_8014F454
/* 8014F47C  48 00 00 0C */	b lbl_8014F488
lbl_8014F480:
/* 8014F480  80 7F 07 54 */	lwz r3, 0x754(r31)
/* 8014F484  4B EC 1D 69 */	bl modelCalc__16mDoExt_McaMorfSOFv
lbl_8014F488:
/* 8014F488  39 61 00 20 */	addi r11, r1, 0x20
/* 8014F48C  48 21 2D 99 */	bl _restgpr_28
/* 8014F490  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8014F494  7C 08 03 A6 */	mtlr r0
/* 8014F498  38 21 00 20 */	addi r1, r1, 0x20
/* 8014F49C  4E 80 00 20 */	blr 
