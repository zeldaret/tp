lbl_80246A9C:
/* 80246A9C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80246AA0  7C 08 02 A6 */	mflr r0
/* 80246AA4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80246AA8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80246AAC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80246AB0  39 61 00 20 */	addi r11, r1, 0x20
/* 80246AB4  48 11 B7 29 */	bl _savegpr_29
/* 80246AB8  7C 7D 1B 78 */	mr r29, r3
/* 80246ABC  FF E0 08 90 */	fmr f31, f1
/* 80246AC0  80 63 00 08 */	lwz r3, 8(r3)
/* 80246AC4  48 00 ED 0D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80246AC8  80 7D 00 C4 */	lwz r3, 0xc4(r29)
/* 80246ACC  3C 80 80 43 */	lis r4, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 80246AD0  38 84 02 8C */	addi r4, r4, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 80246AD4  C0 04 01 CC */	lfs f0, 0x1cc(r4)
/* 80246AD8  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80246ADC  48 00 EC F5 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80246AE0  3B C0 00 00 */	li r30, 0
/* 80246AE4  3B E0 00 00 */	li r31, 0
lbl_80246AE8:
/* 80246AE8  38 1F 00 0C */	addi r0, r31, 0xc
/* 80246AEC  7C 7D 00 2E */	lwzx r3, r29, r0
/* 80246AF0  FC 20 F8 90 */	fmr f1, f31
/* 80246AF4  48 00 EC DD */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80246AF8  3B DE 00 01 */	addi r30, r30, 1
/* 80246AFC  2C 1E 00 07 */	cmpwi r30, 7
/* 80246B00  3B FF 00 04 */	addi r31, r31, 4
/* 80246B04  41 80 FF E4 */	blt lbl_80246AE8
/* 80246B08  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80246B0C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80246B10  39 61 00 20 */	addi r11, r1, 0x20
/* 80246B14  48 11 B7 15 */	bl _restgpr_29
/* 80246B18  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80246B1C  7C 08 03 A6 */	mtlr r0
/* 80246B20  38 21 00 30 */	addi r1, r1, 0x30
/* 80246B24  4E 80 00 20 */	blr 
