lbl_8023AAF4:
/* 8023AAF4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8023AAF8  7C 08 02 A6 */	mflr r0
/* 8023AAFC  90 01 00 54 */	stw r0, 0x54(r1)
/* 8023AB00  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8023AB04  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8023AB08  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8023AB0C  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 8023AB10  39 61 00 30 */	addi r11, r1, 0x30
/* 8023AB14  48 12 76 C5 */	bl _savegpr_28
/* 8023AB18  7C 7F 1B 78 */	mr r31, r3
/* 8023AB1C  3C 60 80 3A */	lis r3, lit_4520@ha
/* 8023AB20  38 83 98 34 */	addi r4, r3, lit_4520@l
/* 8023AB24  80 64 00 00 */	lwz r3, 0(r4)
/* 8023AB28  80 04 00 04 */	lwz r0, 4(r4)
/* 8023AB2C  90 61 00 08 */	stw r3, 8(r1)
/* 8023AB30  90 01 00 0C */	stw r0, 0xc(r1)
/* 8023AB34  80 04 00 08 */	lwz r0, 8(r4)
/* 8023AB38  90 01 00 10 */	stw r0, 0x10(r1)
/* 8023AB3C  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8023AB40  C0 22 B1 60 */	lfs f1, lit_3911(r2)
/* 8023AB44  EC 00 08 2A */	fadds f0, f0, f1
/* 8023AB48  D0 1F 00 F0 */	stfs f0, 0xf0(r31)
/* 8023AB4C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8023AB50  4B F5 A7 51 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 8023AB54  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 8023AB58  C0 02 B1 80 */	lfs f0, lit_4434(r2)
/* 8023AB5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8023AB60  4C 41 13 82 */	cror 2, 1, 2
/* 8023AB64  40 82 00 30 */	bne lbl_8023AB94
/* 8023AB68  88 1F 01 0E */	lbz r0, 0x10e(r31)
/* 8023AB6C  28 00 00 FF */	cmplwi r0, 0xff
/* 8023AB70  41 82 00 14 */	beq lbl_8023AB84
/* 8023AB74  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 8023AB78  38 61 00 08 */	addi r3, r1, 8
/* 8023AB7C  7C 03 04 2E */	lfsx f0, r3, r0
/* 8023AB80  D0 1F 00 F0 */	stfs f0, 0xf0(r31)
lbl_8023AB84:
/* 8023AB84  38 00 00 01 */	li r0, 1
/* 8023AB88  98 1F 01 17 */	stb r0, 0x117(r31)
/* 8023AB8C  38 00 00 02 */	li r0, 2
/* 8023AB90  98 1F 01 13 */	stb r0, 0x113(r31)
lbl_8023AB94:
/* 8023AB94  3B 80 00 00 */	li r28, 0
/* 8023AB98  3B C0 00 00 */	li r30, 0
lbl_8023AB9C:
/* 8023AB9C  3B BE 00 34 */	addi r29, r30, 0x34
/* 8023ABA0  7C 7F E8 2E */	lwzx r3, r31, r29
/* 8023ABA4  80 63 00 04 */	lwz r3, 4(r3)
/* 8023ABA8  C3 E3 00 CC */	lfs f31, 0xcc(r3)
/* 8023ABAC  C3 C3 00 D0 */	lfs f30, 0xd0(r3)
/* 8023ABB0  7F E3 FB 78 */	mr r3, r31
/* 8023ABB4  7F 84 E3 78 */	mr r4, r28
/* 8023ABB8  48 00 0C B9 */	bl selectAnimeTransform__17dMsgScrn3Select_cFi
/* 8023ABBC  7C 7F E8 2E */	lwzx r3, r31, r29
/* 8023ABC0  80 63 00 04 */	lwz r3, 4(r3)
/* 8023ABC4  D3 E3 00 CC */	stfs f31, 0xcc(r3)
/* 8023ABC8  D3 C3 00 D0 */	stfs f30, 0xd0(r3)
/* 8023ABCC  81 83 00 00 */	lwz r12, 0(r3)
/* 8023ABD0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8023ABD4  7D 89 03 A6 */	mtctr r12
/* 8023ABD8  4E 80 04 21 */	bctrl 
/* 8023ABDC  3B 9C 00 01 */	addi r28, r28, 1
/* 8023ABE0  2C 1C 00 03 */	cmpwi r28, 3
/* 8023ABE4  3B DE 00 04 */	addi r30, r30, 4
/* 8023ABE8  41 80 FF B4 */	blt lbl_8023AB9C
/* 8023ABEC  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8023ABF0  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8023ABF4  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 8023ABF8  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8023ABFC  39 61 00 30 */	addi r11, r1, 0x30
/* 8023AC00  48 12 76 25 */	bl _restgpr_28
/* 8023AC04  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8023AC08  7C 08 03 A6 */	mtlr r0
/* 8023AC0C  38 21 00 50 */	addi r1, r1, 0x50
/* 8023AC10  4E 80 00 20 */	blr 
