lbl_802400CC:
/* 802400CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802400D0  7C 08 02 A6 */	mflr r0
/* 802400D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 802400D8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 802400DC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 802400E0  39 61 00 20 */	addi r11, r1, 0x20
/* 802400E4  48 12 20 F5 */	bl _savegpr_28
/* 802400E8  7C 7C 1B 78 */	mr r28, r3
/* 802400EC  FF E0 08 90 */	fmr f31, f1
/* 802400F0  D3 E3 01 3C */	stfs f31, 0x13c(r3)
/* 802400F4  D3 E3 01 94 */	stfs f31, 0x194(r3)
/* 802400F8  80 63 00 08 */	lwz r3, 8(r3)
/* 802400FC  3C 80 80 43 */	lis r4, g_MsgObject_HIO_c@ha
/* 80240100  38 84 02 8C */	addi r4, r4, g_MsgObject_HIO_c@l
/* 80240104  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 80240108  EC 3F 00 32 */	fmuls f1, f31, f0
/* 8024010C  48 01 56 C5 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80240110  3B A0 00 00 */	li r29, 0
/* 80240114  3B E0 00 00 */	li r31, 0
lbl_80240118:
/* 80240118  7F DC FA 14 */	add r30, r28, r31
/* 8024011C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80240120  C0 1C 00 BC */	lfs f0, 0xbc(r28)
/* 80240124  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80240128  48 01 56 A9 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8024012C  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80240130  28 03 00 00 */	cmplwi r3, 0
/* 80240134  41 82 00 10 */	beq lbl_80240144
/* 80240138  C0 1C 00 BC */	lfs f0, 0xbc(r28)
/* 8024013C  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80240140  48 01 56 91 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_80240144:
/* 80240144  3B BD 00 01 */	addi r29, r29, 1
/* 80240148  2C 1D 00 03 */	cmpwi r29, 3
/* 8024014C  3B FF 00 04 */	addi r31, r31, 4
/* 80240150  41 80 FF C8 */	blt lbl_80240118
/* 80240154  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80240158  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8024015C  39 61 00 20 */	addi r11, r1, 0x20
/* 80240160  48 12 20 C5 */	bl _restgpr_28
/* 80240164  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80240168  7C 08 03 A6 */	mtlr r0
/* 8024016C  38 21 00 30 */	addi r1, r1, 0x30
/* 80240170  4E 80 00 20 */	blr 
