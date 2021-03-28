lbl_8026EA5C:
/* 8026EA5C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8026EA60  7C 08 02 A6 */	mflr r0
/* 8026EA64  90 01 00 54 */	stw r0, 0x54(r1)
/* 8026EA68  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8026EA6C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8026EA70  39 61 00 40 */	addi r11, r1, 0x40
/* 8026EA74  48 0F 37 69 */	bl _savegpr_29
/* 8026EA78  7C 7D 1B 78 */	mr r29, r3
/* 8026EA7C  7C BE 2B 78 */	mr r30, r5
/* 8026EA80  7C DF 33 78 */	mr r31, r6
/* 8026EA84  7C 83 23 78 */	mr r3, r4
/* 8026EA88  7F A4 EB 78 */	mr r4, r29
/* 8026EA8C  38 A1 00 20 */	addi r5, r1, 0x20
/* 8026EA90  48 0D 86 25 */	bl PSVECSubtract
/* 8026EA94  38 61 00 20 */	addi r3, r1, 0x20
/* 8026EA98  48 0D 86 A1 */	bl PSVECSquareMag
/* 8026EA9C  FF E0 08 90 */	fmr f31, f1
/* 8026EAA0  FC 00 FA 10 */	fabs f0, f31
/* 8026EAA4  FC 20 00 18 */	frsp f1, f0
/* 8026EAA8  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8026EAAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026EAB0  40 80 00 24 */	bge lbl_8026EAD4
/* 8026EAB4  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8026EAB8  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8026EABC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8026EAC0  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8026EAC4  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8026EAC8  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8026EACC  C0 22 B7 18 */	lfs f1, lit_2256(r2)
/* 8026EAD0  48 00 00 48 */	b lbl_8026EB18
lbl_8026EAD4:
/* 8026EAD4  7F C3 F3 78 */	mr r3, r30
/* 8026EAD8  7F A4 EB 78 */	mr r4, r29
/* 8026EADC  38 A1 00 14 */	addi r5, r1, 0x14
/* 8026EAE0  48 0D 85 D5 */	bl PSVECSubtract
/* 8026EAE4  38 61 00 14 */	addi r3, r1, 0x14
/* 8026EAE8  38 81 00 20 */	addi r4, r1, 0x20
/* 8026EAEC  48 0D 86 A9 */	bl PSVECDotProduct
/* 8026EAF0  EF E1 F8 24 */	fdivs f31, f1, f31
/* 8026EAF4  38 61 00 20 */	addi r3, r1, 0x20
/* 8026EAF8  38 81 00 08 */	addi r4, r1, 8
/* 8026EAFC  FC 20 F8 90 */	fmr f1, f31
/* 8026EB00  48 0D 85 D9 */	bl PSVECScale
/* 8026EB04  38 61 00 08 */	addi r3, r1, 8
/* 8026EB08  7F A4 EB 78 */	mr r4, r29
/* 8026EB0C  7F E5 FB 78 */	mr r5, r31
/* 8026EB10  48 0D 85 81 */	bl PSVECAdd
/* 8026EB14  FC 20 F8 90 */	fmr f1, f31
lbl_8026EB18:
/* 8026EB18  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8026EB1C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8026EB20  39 61 00 40 */	addi r11, r1, 0x40
/* 8026EB24  48 0F 37 05 */	bl _restgpr_29
/* 8026EB28  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8026EB2C  7C 08 03 A6 */	mtlr r0
/* 8026EB30  38 21 00 50 */	addi r1, r1, 0x50
/* 8026EB34  4E 80 00 20 */	blr 
