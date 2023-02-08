lbl_8023AA04:
/* 8023AA04  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8023AA08  7C 08 02 A6 */	mflr r0
/* 8023AA0C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8023AA10  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8023AA14  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8023AA18  39 61 00 30 */	addi r11, r1, 0x30
/* 8023AA1C  48 12 77 BD */	bl _savegpr_28
/* 8023AA20  7C 7C 1B 78 */	mr r28, r3
/* 8023AA24  3C 60 80 3A */	lis r3, lit_4497@ha /* 0x80399828@ha */
/* 8023AA28  38 83 98 28 */	addi r4, r3, lit_4497@l /* 0x80399828@l */
/* 8023AA2C  80 64 00 00 */	lwz r3, 0(r4)
/* 8023AA30  80 04 00 04 */	lwz r0, 4(r4)
/* 8023AA34  90 61 00 08 */	stw r3, 8(r1)
/* 8023AA38  90 01 00 0C */	stw r0, 0xc(r1)
/* 8023AA3C  80 04 00 08 */	lwz r0, 8(r4)
/* 8023AA40  90 01 00 10 */	stw r0, 0x10(r1)
/* 8023AA44  88 1C 01 0E */	lbz r0, 0x10e(r28)
/* 8023AA48  28 00 00 FF */	cmplwi r0, 0xff
/* 8023AA4C  41 82 00 78 */	beq lbl_8023AAC4
/* 8023AA50  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 8023AA54  38 61 00 08 */	addi r3, r1, 8
/* 8023AA58  7C 03 04 2E */	lfsx f0, r3, r0
/* 8023AA5C  D0 1C 00 F0 */	stfs f0, 0xf0(r28)
/* 8023AA60  3B A0 00 00 */	li r29, 0
/* 8023AA64  3B E0 00 00 */	li r31, 0
lbl_8023AA68:
/* 8023AA68  3B DF 00 34 */	addi r30, r31, 0x34
/* 8023AA6C  7C 7C F0 2E */	lwzx r3, r28, r30
/* 8023AA70  80 63 00 04 */	lwz r3, 4(r3)
/* 8023AA74  48 0B C6 8D */	bl getBounds__7J2DPaneFv
/* 8023AA78  C3 E3 00 00 */	lfs f31, 0(r3)
/* 8023AA7C  7F 83 E3 78 */	mr r3, r28
/* 8023AA80  7F A4 EB 78 */	mr r4, r29
/* 8023AA84  48 00 0D ED */	bl selectAnimeTransform__17dMsgScrn3Select_cFi
/* 8023AA88  7C 7C F0 2E */	lwzx r3, r28, r30
/* 8023AA8C  80 63 00 04 */	lwz r3, 4(r3)
/* 8023AA90  48 0B C6 71 */	bl getBounds__7J2DPaneFv
/* 8023AA94  C0 43 00 04 */	lfs f2, 4(r3)
/* 8023AA98  7C 7C F0 2E */	lwzx r3, r28, r30
/* 8023AA9C  80 63 00 04 */	lwz r3, 4(r3)
/* 8023AAA0  FC 20 F8 90 */	fmr f1, f31
/* 8023AAA4  81 83 00 00 */	lwz r12, 0(r3)
/* 8023AAA8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8023AAAC  7D 89 03 A6 */	mtctr r12
/* 8023AAB0  4E 80 04 21 */	bctrl 
/* 8023AAB4  3B BD 00 01 */	addi r29, r29, 1
/* 8023AAB8  2C 1D 00 03 */	cmpwi r29, 3
/* 8023AABC  3B FF 00 04 */	addi r31, r31, 4
/* 8023AAC0  41 80 FF A8 */	blt lbl_8023AA68
lbl_8023AAC4:
/* 8023AAC4  C0 02 B1 5C */	lfs f0, lit_3910(r2)
/* 8023AAC8  D0 1C 00 F0 */	stfs f0, 0xf0(r28)
/* 8023AACC  38 00 00 01 */	li r0, 1
/* 8023AAD0  98 1C 01 13 */	stb r0, 0x113(r28)
/* 8023AAD4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8023AAD8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8023AADC  39 61 00 30 */	addi r11, r1, 0x30
/* 8023AAE0  48 12 77 45 */	bl _restgpr_28
/* 8023AAE4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8023AAE8  7C 08 03 A6 */	mtlr r0
/* 8023AAEC  38 21 00 40 */	addi r1, r1, 0x40
/* 8023AAF0  4E 80 00 20 */	blr 
