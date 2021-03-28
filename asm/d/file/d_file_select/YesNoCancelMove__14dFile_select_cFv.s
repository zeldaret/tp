lbl_80189A24:
/* 80189A24  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80189A28  7C 08 02 A6 */	mflr r0
/* 80189A2C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80189A30  39 61 00 30 */	addi r11, r1, 0x30
/* 80189A34  48 1D 87 A5 */	bl _savegpr_28
/* 80189A38  7C 7F 1B 78 */	mr r31, r3
/* 80189A3C  48 00 38 21 */	bl headerTxtChangeAnm__14dFile_select_cFv
/* 80189A40  7C 7D 1B 78 */	mr r29, r3
/* 80189A44  7F E3 FB 78 */	mr r3, r31
/* 80189A48  4B FF F2 F1 */	bl yesnoMenuMoveAnm__14dFile_select_cFv
/* 80189A4C  7C 7E 1B 78 */	mr r30, r3
/* 80189A50  88 1F 02 6E */	lbz r0, 0x26e(r31)
/* 80189A54  2C 00 00 01 */	cmpwi r0, 1
/* 80189A58  41 82 00 20 */	beq lbl_80189A78
/* 80189A5C  40 80 00 10 */	bge lbl_80189A6C
/* 80189A60  2C 00 00 00 */	cmpwi r0, 0
/* 80189A64  40 80 00 2C */	bge lbl_80189A90
/* 80189A68  48 00 00 2C */	b lbl_80189A94
lbl_80189A6C:
/* 80189A6C  2C 00 00 03 */	cmpwi r0, 3
/* 80189A70  40 80 00 24 */	bge lbl_80189A94
/* 80189A74  48 00 00 0C */	b lbl_80189A80
lbl_80189A78:
/* 80189A78  3B 80 00 01 */	li r28, 1
/* 80189A7C  48 00 00 18 */	b lbl_80189A94
lbl_80189A80:
/* 80189A80  7F E3 FB 78 */	mr r3, r31
/* 80189A84  4B FF C0 29 */	bl selectDataMoveAnm__14dFile_select_cFv
/* 80189A88  7C 7C 1B 78 */	mr r28, r3
/* 80189A8C  48 00 00 08 */	b lbl_80189A94
lbl_80189A90:
/* 80189A90  3B 80 00 01 */	li r28, 1
lbl_80189A94:
/* 80189A94  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80189A98  28 00 00 01 */	cmplwi r0, 1
/* 80189A9C  40 82 00 F4 */	bne lbl_80189B90
/* 80189AA0  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80189AA4  28 00 00 01 */	cmplwi r0, 1
/* 80189AA8  40 82 00 E8 */	bne lbl_80189B90
/* 80189AAC  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80189AB0  28 00 00 01 */	cmplwi r0, 1
/* 80189AB4  40 82 00 DC */	bne lbl_80189B90
/* 80189AB8  88 1F 02 6E */	lbz r0, 0x26e(r31)
/* 80189ABC  2C 00 00 01 */	cmpwi r0, 1
/* 80189AC0  41 82 00 20 */	beq lbl_80189AE0
/* 80189AC4  40 80 00 10 */	bge lbl_80189AD4
/* 80189AC8  2C 00 00 00 */	cmpwi r0, 0
/* 80189ACC  40 80 00 B0 */	bge lbl_80189B7C
/* 80189AD0  48 00 00 C0 */	b lbl_80189B90
lbl_80189AD4:
/* 80189AD4  2C 00 00 03 */	cmpwi r0, 3
/* 80189AD8  40 80 00 B8 */	bge lbl_80189B90
/* 80189ADC  48 00 00 8C */	b lbl_80189B68
lbl_80189AE0:
/* 80189AE0  88 1F 02 67 */	lbz r0, 0x267(r31)
/* 80189AE4  28 00 00 FF */	cmplwi r0, 0xff
/* 80189AE8  41 82 00 74 */	beq lbl_80189B5C
/* 80189AEC  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80189AF0  7C 7F 02 14 */	add r3, r31, r0
/* 80189AF4  80 83 03 40 */	lwz r4, 0x340(r3)
/* 80189AF8  38 61 00 08 */	addi r3, r1, 8
/* 80189AFC  80 A4 00 04 */	lwz r5, 4(r4)
/* 80189B00  38 C0 00 00 */	li r6, 0
/* 80189B04  38 E0 00 00 */	li r7, 0
/* 80189B08  48 0C B3 B5 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 80189B0C  88 1F 02 67 */	lbz r0, 0x267(r31)
/* 80189B10  54 00 10 3A */	slwi r0, r0, 2
/* 80189B14  7C 7F 02 14 */	add r3, r31, r0
/* 80189B18  80 63 03 40 */	lwz r3, 0x340(r3)
/* 80189B1C  80 83 00 04 */	lwz r4, 4(r3)
/* 80189B20  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 80189B24  C0 21 00 08 */	lfs f1, 8(r1)
/* 80189B28  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80189B2C  38 A0 00 01 */	li r5, 1
/* 80189B30  48 00 B5 C5 */	bl setPos__16dSelect_cursor_cFffP7J2DPaneb
/* 80189B34  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 80189B38  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 80189B3C  48 00 B7 65 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 80189B40  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 80189B44  C0 22 9F 68 */	lfs f1, lit_6069(r2)
/* 80189B48  C0 42 9F 6C */	lfs f2, lit_6070(r2)
/* 80189B4C  C0 62 9F 70 */	lfs f3, lit_6071(r2)
/* 80189B50  C0 82 9F 30 */	lfs f4, lit_4166(r2)
/* 80189B54  FC A0 20 90 */	fmr f5, f4
/* 80189B58  48 00 B6 59 */	bl setParam__16dSelect_cursor_cFfffff
lbl_80189B5C:
/* 80189B5C  38 00 00 08 */	li r0, 8
/* 80189B60  98 1F 02 6F */	stb r0, 0x26f(r31)
/* 80189B64  48 00 00 2C */	b lbl_80189B90
lbl_80189B68:
/* 80189B68  7F E3 FB 78 */	mr r3, r31
/* 80189B6C  48 00 3B F9 */	bl selFileCursorShow__14dFile_select_cFv
/* 80189B70  38 00 00 03 */	li r0, 3
/* 80189B74  98 1F 02 6F */	stb r0, 0x26f(r31)
/* 80189B78  48 00 00 18 */	b lbl_80189B90
lbl_80189B7C:
/* 80189B7C  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 80189B80  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 80189B84  48 00 B7 1D */	bl setAlphaRate__16dSelect_cursor_cFf
/* 80189B88  38 00 00 16 */	li r0, 0x16
/* 80189B8C  98 1F 02 6F */	stb r0, 0x26f(r31)
lbl_80189B90:
/* 80189B90  39 61 00 30 */	addi r11, r1, 0x30
/* 80189B94  48 1D 86 91 */	bl _restgpr_28
/* 80189B98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80189B9C  7C 08 03 A6 */	mtlr r0
/* 80189BA0  38 21 00 30 */	addi r1, r1, 0x30
/* 80189BA4  4E 80 00 20 */	blr 
