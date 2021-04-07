lbl_8023CBF0:
/* 8023CBF0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8023CBF4  7C 08 02 A6 */	mflr r0
/* 8023CBF8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8023CBFC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8023CC00  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8023CC04  39 61 00 20 */	addi r11, r1, 0x20
/* 8023CC08  48 12 55 D5 */	bl _savegpr_29
/* 8023CC0C  7C 7D 1B 78 */	mr r29, r3
/* 8023CC10  FF E0 08 90 */	fmr f31, f1
/* 8023CC14  80 63 00 08 */	lwz r3, 8(r3)
/* 8023CC18  48 01 8B B9 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8023CC1C  80 7D 00 C4 */	lwz r3, 0xc4(r29)
/* 8023CC20  3C 80 80 43 */	lis r4, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 8023CC24  38 84 02 8C */	addi r4, r4, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 8023CC28  C0 04 01 D0 */	lfs f0, 0x1d0(r4)
/* 8023CC2C  EC 3F 00 32 */	fmuls f1, f31, f0
/* 8023CC30  48 01 8B A1 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8023CC34  3B C0 00 00 */	li r30, 0
/* 8023CC38  3B E0 00 00 */	li r31, 0
lbl_8023CC3C:
/* 8023CC3C  38 1F 00 0C */	addi r0, r31, 0xc
/* 8023CC40  7C 7D 00 2E */	lwzx r3, r29, r0
/* 8023CC44  FC 20 F8 90 */	fmr f1, f31
/* 8023CC48  48 01 8B 89 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8023CC4C  3B DE 00 01 */	addi r30, r30, 1
/* 8023CC50  2C 1E 00 07 */	cmpwi r30, 7
/* 8023CC54  3B FF 00 04 */	addi r31, r31, 4
/* 8023CC58  41 80 FF E4 */	blt lbl_8023CC3C
/* 8023CC5C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8023CC60  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8023CC64  39 61 00 20 */	addi r11, r1, 0x20
/* 8023CC68  48 12 55 C1 */	bl _restgpr_29
/* 8023CC6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8023CC70  7C 08 03 A6 */	mtlr r0
/* 8023CC74  38 21 00 30 */	addi r1, r1, 0x30
/* 8023CC78  4E 80 00 20 */	blr 
