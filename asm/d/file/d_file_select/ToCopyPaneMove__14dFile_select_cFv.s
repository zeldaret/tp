lbl_801879B8:
/* 801879B8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801879BC  7C 08 02 A6 */	mflr r0
/* 801879C0  90 01 00 44 */	stw r0, 0x44(r1)
/* 801879C4  39 61 00 40 */	addi r11, r1, 0x40
/* 801879C8  48 1D A8 0D */	bl _savegpr_27
/* 801879CC  7C 7F 1B 78 */	mr r31, r3
/* 801879D0  48 00 58 8D */	bl headerTxtChangeAnm__14dFile_select_cFv
/* 801879D4  7C 7B 1B 78 */	mr r27, r3
/* 801879D8  7F E3 FB 78 */	mr r3, r31
/* 801879DC  4B FF F2 D1 */	bl menuMoveAnm__14dFile_select_cFv
/* 801879E0  7C 7C 1B 78 */	mr r28, r3
/* 801879E4  7F E3 FB 78 */	mr r3, r31
/* 801879E8  4B FF E0 C5 */	bl selectDataMoveAnm__14dFile_select_cFv
/* 801879EC  7C 7D 1B 78 */	mr r29, r3
/* 801879F0  7F E3 FB 78 */	mr r3, r31
/* 801879F4  88 9F 02 65 */	lbz r4, 0x265(r31)
/* 801879F8  48 00 5C 95 */	bl selectWakuAlpahAnm__14dFile_select_cFUc
/* 801879FC  7C 7E 1B 78 */	mr r30, r3
/* 80187A00  7F E3 FB 78 */	mr r3, r31
/* 80187A04  48 00 87 21 */	bl nameMoveAnm__14dFile_select_cFv
/* 80187A08  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 80187A0C  28 00 00 01 */	cmplwi r0, 1
/* 80187A10  40 82 00 B4 */	bne lbl_80187AC4
/* 80187A14  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80187A18  28 00 00 01 */	cmplwi r0, 1
/* 80187A1C  40 82 00 A8 */	bne lbl_80187AC4
/* 80187A20  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80187A24  28 00 00 01 */	cmplwi r0, 1
/* 80187A28  40 82 00 9C */	bne lbl_80187AC4
/* 80187A2C  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80187A30  28 00 00 01 */	cmplwi r0, 1
/* 80187A34  40 82 00 90 */	bne lbl_80187AC4
/* 80187A38  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80187A3C  28 00 00 01 */	cmplwi r0, 1
/* 80187A40  40 82 00 84 */	bne lbl_80187AC4
/* 80187A44  38 00 00 00 */	li r0, 0
/* 80187A48  98 1F 02 6B */	stb r0, 0x26b(r31)
/* 80187A4C  88 1F 02 6B */	lbz r0, 0x26b(r31)
/* 80187A50  54 00 10 3A */	slwi r0, r0, 2
/* 80187A54  7C 7F 02 14 */	add r3, r31, r0
/* 80187A58  80 83 02 A4 */	lwz r4, 0x2a4(r3)
/* 80187A5C  38 61 00 08 */	addi r3, r1, 8
/* 80187A60  80 A4 00 04 */	lwz r5, 4(r4)
/* 80187A64  38 C0 00 00 */	li r6, 0
/* 80187A68  38 E0 00 00 */	li r7, 0
/* 80187A6C  48 0C D4 51 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 80187A70  80 61 00 08 */	lwz r3, 8(r1)
/* 80187A74  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80187A78  90 61 00 14 */	stw r3, 0x14(r1)
/* 80187A7C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80187A80  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80187A84  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80187A88  88 1F 02 6B */	lbz r0, 0x26b(r31)
/* 80187A8C  54 00 10 3A */	slwi r0, r0, 2
/* 80187A90  7C 7F 02 14 */	add r3, r31, r0
/* 80187A94  80 63 02 A4 */	lwz r3, 0x2a4(r3)
/* 80187A98  80 83 00 04 */	lwz r4, 4(r3)
/* 80187A9C  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 80187AA0  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80187AA4  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80187AA8  38 A0 00 01 */	li r5, 1
/* 80187AAC  48 00 D6 49 */	bl setPos__16dSelect_cursor_cFffP7J2DPaneb
/* 80187AB0  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 80187AB4  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 80187AB8  48 00 D7 E9 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 80187ABC  38 00 00 16 */	li r0, 0x16
/* 80187AC0  98 1F 02 6F */	stb r0, 0x26f(r31)
lbl_80187AC4:
/* 80187AC4  39 61 00 40 */	addi r11, r1, 0x40
/* 80187AC8  48 1D A7 59 */	bl _restgpr_27
/* 80187ACC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80187AD0  7C 08 03 A6 */	mtlr r0
/* 80187AD4  38 21 00 40 */	addi r1, r1, 0x40
/* 80187AD8  4E 80 00 20 */	blr 
