lbl_8021AEC8:
/* 8021AEC8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8021AECC  7C 08 02 A6 */	mflr r0
/* 8021AED0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8021AED4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8021AED8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8021AEDC  39 61 00 20 */	addi r11, r1, 0x20
/* 8021AEE0  48 14 72 F9 */	bl _savegpr_28
/* 8021AEE4  7C 7C 1B 78 */	mr r28, r3
/* 8021AEE8  7C 9E 23 78 */	mr r30, r4
/* 8021AEEC  C0 02 AE 84 */	lfs f0, lit_4183(r2)
/* 8021AEF0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8021AEF4  40 82 00 14 */	bne lbl_8021AF08
/* 8021AEF8  57 C0 15 BA */	rlwinm r0, r30, 2, 0x16, 0x1d
/* 8021AEFC  7C 7C 02 14 */	add r3, r28, r0
/* 8021AF00  80 63 03 2C */	lwz r3, 0x32c(r3)
/* 8021AF04  48 03 A9 25 */	bl getAlphaRate__13CPaneMgrAlphaFv
lbl_8021AF08:
/* 8021AF08  3B A0 00 00 */	li r29, 0
/* 8021AF0C  3B E0 00 00 */	li r31, 0
/* 8021AF10  C0 02 AE CC */	lfs f0, lit_8207(r2)
/* 8021AF14  EC 00 00 72 */	fmuls f0, f0, f1
/* 8021AF18  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8021AF1C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8021AF20  7F DC 02 14 */	add r30, r28, r0
/* 8021AF24  FF E0 00 1E */	fctiwz f31, f0
lbl_8021AF28:
/* 8021AF28  38 1F 00 84 */	addi r0, r31, 0x84
/* 8021AF2C  7C 7E 00 2E */	lwzx r3, r30, r0
/* 8021AF30  DB E1 00 08 */	stfd f31, 8(r1)
/* 8021AF34  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8021AF38  81 83 00 00 */	lwz r12, 0(r3)
/* 8021AF3C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8021AF40  7D 89 03 A6 */	mtctr r12
/* 8021AF44  4E 80 04 21 */	bctrl 
/* 8021AF48  3B BD 00 01 */	addi r29, r29, 1
/* 8021AF4C  2C 1D 00 03 */	cmpwi r29, 3
/* 8021AF50  3B FF 00 04 */	addi r31, r31, 4
/* 8021AF54  41 80 FF D4 */	blt lbl_8021AF28
/* 8021AF58  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8021AF5C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8021AF60  39 61 00 20 */	addi r11, r1, 0x20
/* 8021AF64  48 14 72 C1 */	bl _restgpr_28
/* 8021AF68  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8021AF6C  7C 08 03 A6 */	mtlr r0
/* 8021AF70  38 21 00 30 */	addi r1, r1, 0x30
/* 8021AF74  4E 80 00 20 */	blr 
