lbl_8023B148:
/* 8023B148  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8023B14C  7C 08 02 A6 */	mflr r0
/* 8023B150  90 01 00 44 */	stw r0, 0x44(r1)
/* 8023B154  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8023B158  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8023B15C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8023B160  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8023B164  39 61 00 20 */	addi r11, r1, 0x20
/* 8023B168  48 12 70 71 */	bl _savegpr_28
/* 8023B16C  7C 7C 1B 78 */	mr r28, r3
/* 8023B170  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8023B174  C0 22 B1 58 */	lfs f1, lit_3909(r2)
/* 8023B178  4B F5 A1 29 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 8023B17C  C0 3C 00 F0 */	lfs f1, 0xf0(r28)
/* 8023B180  C0 02 B1 60 */	lfs f0, lit_3911(r2)
/* 8023B184  EC 01 00 28 */	fsubs f0, f1, f0
/* 8023B188  D0 1C 00 F0 */	stfs f0, 0xf0(r28)
/* 8023B18C  3B A0 00 00 */	li r29, 0
/* 8023B190  3B E0 00 00 */	li r31, 0
lbl_8023B194:
/* 8023B194  3B DF 00 34 */	addi r30, r31, 0x34
/* 8023B198  7C 7C F0 2E */	lwzx r3, r28, r30
/* 8023B19C  80 63 00 04 */	lwz r3, 4(r3)
/* 8023B1A0  C3 E3 00 CC */	lfs f31, 0xcc(r3)
/* 8023B1A4  C3 C3 00 D0 */	lfs f30, 0xd0(r3)
/* 8023B1A8  7F 83 E3 78 */	mr r3, r28
/* 8023B1AC  7F A4 EB 78 */	mr r4, r29
/* 8023B1B0  48 00 06 C1 */	bl selectAnimeTransform__17dMsgScrn3Select_cFi
/* 8023B1B4  7C 7C F0 2E */	lwzx r3, r28, r30
/* 8023B1B8  80 63 00 04 */	lwz r3, 4(r3)
/* 8023B1BC  D3 E3 00 CC */	stfs f31, 0xcc(r3)
/* 8023B1C0  D3 C3 00 D0 */	stfs f30, 0xd0(r3)
/* 8023B1C4  81 83 00 00 */	lwz r12, 0(r3)
/* 8023B1C8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8023B1CC  7D 89 03 A6 */	mtctr r12
/* 8023B1D0  4E 80 04 21 */	bctrl 
/* 8023B1D4  3B BD 00 01 */	addi r29, r29, 1
/* 8023B1D8  2C 1D 00 03 */	cmpwi r29, 3
/* 8023B1DC  3B FF 00 04 */	addi r31, r31, 4
/* 8023B1E0  41 80 FF B4 */	blt lbl_8023B194
/* 8023B1E4  C0 3C 00 F0 */	lfs f1, 0xf0(r28)
/* 8023B1E8  C0 02 B1 5C */	lfs f0, lit_3910(r2)
/* 8023B1EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8023B1F0  4C 40 13 82 */	cror 2, 0, 2
/* 8023B1F4  40 82 00 0C */	bne lbl_8023B200
/* 8023B1F8  38 00 00 06 */	li r0, 6
/* 8023B1FC  98 1C 01 13 */	stb r0, 0x113(r28)
lbl_8023B200:
/* 8023B200  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8023B204  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8023B208  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8023B20C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8023B210  39 61 00 20 */	addi r11, r1, 0x20
/* 8023B214  48 12 70 11 */	bl _restgpr_28
/* 8023B218  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8023B21C  7C 08 03 A6 */	mtlr r0
/* 8023B220  38 21 00 40 */	addi r1, r1, 0x40
/* 8023B224  4E 80 00 20 */	blr 
