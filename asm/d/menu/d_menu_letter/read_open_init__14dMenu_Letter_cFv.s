lbl_801DE334:
/* 801DE334  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801DE338  7C 08 02 A6 */	mflr r0
/* 801DE33C  90 01 00 54 */	stw r0, 0x54(r1)
/* 801DE340  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 801DE344  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 801DE348  39 61 00 40 */	addi r11, r1, 0x40
/* 801DE34C  48 18 3E 85 */	bl _savegpr_26
/* 801DE350  7C 7C 1B 78 */	mr r28, r3
/* 801DE354  3B E0 00 00 */	li r31, 0
/* 801DE358  B3 E3 03 6A */	sth r31, 0x36a(r3)
/* 801DE35C  88 03 03 6E */	lbz r0, 0x36e(r3)
/* 801DE360  7C 7C 02 14 */	add r3, r28, r0
/* 801DE364  88 1C 03 6F */	lbz r0, 0x36f(r28)
/* 801DE368  1C 00 00 06 */	mulli r0, r0, 6
/* 801DE36C  7C 63 02 14 */	add r3, r3, r0
/* 801DE370  88 63 03 AC */	lbz r3, 0x3ac(r3)
/* 801DE374  38 63 FF FF */	addi r3, r3, -1
/* 801DE378  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 801DE37C  38 00 00 01 */	li r0, 1
/* 801DE380  98 1C 03 E3 */	stb r0, 0x3e3(r28)
/* 801DE384  3B A0 00 00 */	li r29, 0
/* 801DE388  7C 9E 23 78 */	mr r30, r4
/* 801DE38C  54 64 1D 78 */	rlwinm r4, r3, 3, 0x15, 0x1c
/* 801DE390  3C 60 80 3C */	lis r3, letter_data__12dMenu_Letter@ha /* 0x803BF81C@ha */
/* 801DE394  38 03 F8 1C */	addi r0, r3, letter_data__12dMenu_Letter@l /* 0x803BF81C@l */
/* 801DE398  7C 60 22 14 */	add r3, r0, r4
/* 801DE39C  3B 63 00 04 */	addi r27, r3, 4
/* 801DE3A0  C3 E2 A8 E0 */	lfs f31, lit_3827(r2)
lbl_801DE3A4:
/* 801DE3A4  7F 5C FA 14 */	add r26, r28, r31
/* 801DE3A8  80 7A 02 E0 */	lwz r3, 0x2e0(r26)
/* 801DE3AC  80 63 00 04 */	lwz r3, 4(r3)
/* 801DE3B0  D3 E3 00 CC */	stfs f31, 0xcc(r3)
/* 801DE3B4  D3 E3 00 D0 */	stfs f31, 0xd0(r3)
/* 801DE3B8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DE3BC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801DE3C0  7D 89 03 A6 */	mtctr r12
/* 801DE3C4  4E 80 04 21 */	bctrl 
/* 801DE3C8  80 7A 02 E0 */	lwz r3, 0x2e0(r26)
/* 801DE3CC  C0 22 A8 E0 */	lfs f1, lit_3827(r2)
/* 801DE3D0  48 07 74 01 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801DE3D4  39 00 00 00 */	li r8, 0
/* 801DE3D8  80 7A 02 F4 */	lwz r3, 0x2f4(r26)
/* 801DE3DC  28 03 00 00 */	cmplwi r3, 0
/* 801DE3E0  41 82 00 08 */	beq lbl_801DE3E8
/* 801DE3E4  81 03 00 04 */	lwz r8, 4(r3)
lbl_801DE3E8:
/* 801DE3E8  80 7A 02 EC */	lwz r3, 0x2ec(r26)
/* 801DE3EC  80 E3 00 04 */	lwz r7, 4(r3)
/* 801DE3F0  38 00 00 00 */	li r0, 0
/* 801DE3F4  90 01 00 08 */	stw r0, 8(r1)
/* 801DE3F8  80 7C 03 10 */	lwz r3, 0x310(r28)
/* 801DE3FC  A0 9B 00 00 */	lhz r4, 0(r27)
/* 801DE400  88 BC 03 E3 */	lbz r5, 0x3e3(r28)
/* 801DE404  38 05 FF FF */	addi r0, r5, -1
/* 801DE408  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 801DE40C  38 C0 00 0C */	li r6, 0xc
/* 801DE410  39 20 00 00 */	li r9, 0
/* 801DE414  39 40 00 00 */	li r10, 0
/* 801DE418  81 83 00 00 */	lwz r12, 0(r3)
/* 801DE41C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801DE420  7D 89 03 A6 */	mtctr r12
/* 801DE424  4E 80 04 21 */	bctrl 
/* 801DE428  3B BD 00 01 */	addi r29, r29, 1
/* 801DE42C  2C 1D 00 02 */	cmpwi r29, 2
/* 801DE430  3B FF 00 04 */	addi r31, r31, 4
/* 801DE434  41 80 FF 70 */	blt lbl_801DE3A4
/* 801DE438  80 7C 03 10 */	lwz r3, 0x310(r28)
/* 801DE43C  38 80 00 0C */	li r4, 0xc
/* 801DE440  48 06 B6 09 */	bl getPageMax__16dMsgStringBase_cFi
/* 801DE444  98 7C 03 E2 */	stb r3, 0x3e2(r28)
/* 801DE448  88 DC 03 E2 */	lbz r6, 0x3e2(r28)
/* 801DE44C  28 06 00 01 */	cmplwi r6, 1
/* 801DE450  40 81 00 5C */	ble lbl_801DE4AC
/* 801DE454  38 61 00 10 */	addi r3, r1, 0x10
/* 801DE458  3C 80 80 39 */	lis r4, d_menu_d_menu_letter__stringBase0@ha /* 0x80396DC0@ha */
/* 801DE45C  38 84 6D C0 */	addi r4, r4, d_menu_d_menu_letter__stringBase0@l /* 0x80396DC0@l */
/* 801DE460  38 84 00 17 */	addi r4, r4, 0x17
/* 801DE464  88 BC 03 E3 */	lbz r5, 0x3e3(r28)
/* 801DE468  4C C6 31 82 */	crclr 6
/* 801DE46C  48 18 80 71 */	bl sprintf
/* 801DE470  3B 40 00 00 */	li r26, 0
/* 801DE474  3B A0 00 00 */	li r29, 0
/* 801DE478  3B E0 00 01 */	li r31, 1
lbl_801DE47C:
/* 801DE47C  38 1D 01 E4 */	addi r0, r29, 0x1e4
/* 801DE480  7C 7C 00 2E */	lwzx r3, r28, r0
/* 801DE484  9B E3 00 B0 */	stb r31, 0xb0(r3)
/* 801DE488  7C 7C 00 2E */	lwzx r3, r28, r0
/* 801DE48C  48 12 21 CD */	bl getStringPtr__10J2DTextBoxCFv
/* 801DE490  38 81 00 10 */	addi r4, r1, 0x10
/* 801DE494  48 18 A6 99 */	bl strcpy
/* 801DE498  3B 5A 00 01 */	addi r26, r26, 1
/* 801DE49C  2C 1A 00 02 */	cmpwi r26, 2
/* 801DE4A0  3B BD 00 04 */	addi r29, r29, 4
/* 801DE4A4  41 80 FF D8 */	blt lbl_801DE47C
/* 801DE4A8  48 00 00 28 */	b lbl_801DE4D0
lbl_801DE4AC:
/* 801DE4AC  38 60 00 00 */	li r3, 0
/* 801DE4B0  38 A0 00 00 */	li r5, 0
/* 801DE4B4  38 00 00 02 */	li r0, 2
/* 801DE4B8  7C 09 03 A6 */	mtctr r0
lbl_801DE4BC:
/* 801DE4BC  38 03 01 E4 */	addi r0, r3, 0x1e4
/* 801DE4C0  7C 9C 00 2E */	lwzx r4, r28, r0
/* 801DE4C4  98 A4 00 B0 */	stb r5, 0xb0(r4)
/* 801DE4C8  38 63 00 04 */	addi r3, r3, 4
/* 801DE4CC  42 00 FF F0 */	bdnz lbl_801DE4BC
lbl_801DE4D0:
/* 801DE4D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801DE4D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801DE4D8  3B 43 01 1C */	addi r26, r3, 0x11c
/* 801DE4DC  7F 43 D3 78 */	mr r3, r26
/* 801DE4E0  7F C4 F3 78 */	mr r4, r30
/* 801DE4E4  4B E5 5F B9 */	bl isLetterReadFlag__17dSv_letter_info_cCFi
/* 801DE4E8  2C 03 00 00 */	cmpwi r3, 0
/* 801DE4EC  40 82 00 28 */	bne lbl_801DE514
/* 801DE4F0  7F 43 D3 78 */	mr r3, r26
/* 801DE4F4  7F C4 F3 78 */	mr r4, r30
/* 801DE4F8  4B E5 5F 7D */	bl onLetterReadFlag__17dSv_letter_info_cFi
/* 801DE4FC  38 80 00 00 */	li r4, 0
/* 801DE500  88 1C 03 6E */	lbz r0, 0x36e(r28)
/* 801DE504  1C 00 00 14 */	mulli r0, r0, 0x14
/* 801DE508  7C 7C 02 14 */	add r3, r28, r0
/* 801DE50C  80 63 00 44 */	lwz r3, 0x44(r3)
/* 801DE510  98 83 00 B0 */	stb r4, 0xb0(r3)
lbl_801DE514:
/* 801DE514  7F 83 E3 78 */	mr r3, r28
/* 801DE518  38 80 00 00 */	li r4, 0
/* 801DE51C  48 00 2F FD */	bl setAButtonString__14dMenu_Letter_cFUs
/* 801DE520  7F 83 E3 78 */	mr r3, r28
/* 801DE524  38 80 00 00 */	li r4, 0
/* 801DE528  48 00 30 A1 */	bl setBButtonString__14dMenu_Letter_cFUs
/* 801DE52C  80 7C 02 B4 */	lwz r3, 0x2b4(r28)
/* 801DE530  38 80 00 00 */	li r4, 0
/* 801DE534  81 83 00 00 */	lwz r12, 0(r3)
/* 801DE538  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801DE53C  7D 89 03 A6 */	mtctr r12
/* 801DE540  4E 80 04 21 */	bctrl 
/* 801DE544  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 801DE548  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 801DE54C  39 61 00 40 */	addi r11, r1, 0x40
/* 801DE550  48 18 3C CD */	bl _restgpr_26
/* 801DE554  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801DE558  7C 08 03 A6 */	mtlr r0
/* 801DE55C  38 21 00 50 */	addi r1, r1, 0x50
/* 801DE560  4E 80 00 20 */	blr 
