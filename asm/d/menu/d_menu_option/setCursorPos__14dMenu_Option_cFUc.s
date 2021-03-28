lbl_801E7314:
/* 801E7314  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801E7318  7C 08 02 A6 */	mflr r0
/* 801E731C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801E7320  39 61 00 30 */	addi r11, r1, 0x30
/* 801E7324  48 17 AE B9 */	bl _savegpr_29
/* 801E7328  7C 7D 1B 78 */	mr r29, r3
/* 801E732C  7C 9E 23 78 */	mr r30, r4
/* 801E7330  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 801E7334  28 00 00 04 */	cmplwi r0, 4
/* 801E7338  40 82 00 08 */	bne lbl_801E7340
/* 801E733C  3B C0 00 05 */	li r30, 5
lbl_801E7340:
/* 801E7340  57 C0 15 BA */	rlwinm r0, r30, 2, 0x16, 0x1d
/* 801E7344  7F FD 02 14 */	add r31, r29, r0
/* 801E7348  80 9F 00 8C */	lwz r4, 0x8c(r31)
/* 801E734C  38 61 00 08 */	addi r3, r1, 8
/* 801E7350  80 A4 00 04 */	lwz r5, 4(r4)
/* 801E7354  38 C0 00 00 */	li r6, 0
/* 801E7358  38 E0 00 00 */	li r7, 0
/* 801E735C  48 06 DB 61 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 801E7360  80 61 00 08 */	lwz r3, 8(r1)
/* 801E7364  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801E7368  90 61 00 14 */	stw r3, 0x14(r1)
/* 801E736C  90 01 00 18 */	stw r0, 0x18(r1)
/* 801E7370  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801E7374  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801E7378  80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 801E737C  80 83 00 04 */	lwz r4, 4(r3)
/* 801E7380  80 7D 00 44 */	lwz r3, 0x44(r29)
/* 801E7384  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 801E7388  C0 3D 03 30 */	lfs f1, 0x330(r29)
/* 801E738C  C0 1D 03 34 */	lfs f0, 0x334(r29)
/* 801E7390  EC 01 00 28 */	fsubs f0, f1, f0
/* 801E7394  EC 22 00 2A */	fadds f1, f2, f0
/* 801E7398  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 801E739C  38 A0 00 00 */	li r5, 0
/* 801E73A0  4B FA DD 55 */	bl setPos__16dSelect_cursor_cFffP7J2DPaneb
/* 801E73A4  7F A3 EB 78 */	mr r3, r29
/* 801E73A8  7F C4 F3 78 */	mr r4, r30
/* 801E73AC  38 A0 00 00 */	li r5, 0
/* 801E73B0  48 00 00 29 */	bl setSelectColor__14dMenu_Option_cFUcb
/* 801E73B4  7F A3 EB 78 */	mr r3, r29
/* 801E73B8  38 80 00 00 */	li r4, 0
/* 801E73BC  48 00 03 5D */	bl changeBarColor__14dMenu_Option_cFb
/* 801E73C0  39 61 00 30 */	addi r11, r1, 0x30
/* 801E73C4  48 17 AE 65 */	bl _restgpr_29
/* 801E73C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801E73CC  7C 08 03 A6 */	mtlr r0
/* 801E73D0  38 21 00 30 */	addi r1, r1, 0x30
/* 801E73D4  4E 80 00 20 */	blr 
