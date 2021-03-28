lbl_8026E980:
/* 8026E980  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8026E984  7C 08 02 A6 */	mflr r0
/* 8026E988  90 01 00 54 */	stw r0, 0x54(r1)
/* 8026E98C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8026E990  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8026E994  39 61 00 40 */	addi r11, r1, 0x40
/* 8026E998  48 0F 38 45 */	bl _savegpr_29
/* 8026E99C  7C 7D 1B 78 */	mr r29, r3
/* 8026E9A0  7C 9E 23 78 */	mr r30, r4
/* 8026E9A4  7C BF 2B 78 */	mr r31, r5
/* 8026E9A8  38 7D 00 0C */	addi r3, r29, 0xc
/* 8026E9AC  7F A4 EB 78 */	mr r4, r29
/* 8026E9B0  38 A1 00 20 */	addi r5, r1, 0x20
/* 8026E9B4  48 0D 87 01 */	bl PSVECSubtract
/* 8026E9B8  38 61 00 20 */	addi r3, r1, 0x20
/* 8026E9BC  48 0D 87 7D */	bl PSVECSquareMag
/* 8026E9C0  FF E0 08 90 */	fmr f31, f1
/* 8026E9C4  FC 00 FA 10 */	fabs f0, f31
/* 8026E9C8  FC 20 00 18 */	frsp f1, f0
/* 8026E9CC  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8026E9D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026E9D4  40 80 00 24 */	bge lbl_8026E9F8
/* 8026E9D8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8026E9DC  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8026E9E0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8026E9E4  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8026E9E8  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8026E9EC  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8026E9F0  C0 22 B7 18 */	lfs f1, lit_2256(r2)
/* 8026E9F4  48 00 00 48 */	b lbl_8026EA3C
lbl_8026E9F8:
/* 8026E9F8  7F C3 F3 78 */	mr r3, r30
/* 8026E9FC  7F A4 EB 78 */	mr r4, r29
/* 8026EA00  38 A1 00 14 */	addi r5, r1, 0x14
/* 8026EA04  48 0D 86 B1 */	bl PSVECSubtract
/* 8026EA08  38 61 00 14 */	addi r3, r1, 0x14
/* 8026EA0C  38 81 00 20 */	addi r4, r1, 0x20
/* 8026EA10  48 0D 87 85 */	bl PSVECDotProduct
/* 8026EA14  EF E1 F8 24 */	fdivs f31, f1, f31
/* 8026EA18  38 61 00 20 */	addi r3, r1, 0x20
/* 8026EA1C  38 81 00 08 */	addi r4, r1, 8
/* 8026EA20  FC 20 F8 90 */	fmr f1, f31
/* 8026EA24  48 0D 86 B5 */	bl PSVECScale
/* 8026EA28  38 61 00 08 */	addi r3, r1, 8
/* 8026EA2C  7F A4 EB 78 */	mr r4, r29
/* 8026EA30  7F E5 FB 78 */	mr r5, r31
/* 8026EA34  48 0D 86 5D */	bl PSVECAdd
/* 8026EA38  FC 20 F8 90 */	fmr f1, f31
lbl_8026EA3C:
/* 8026EA3C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8026EA40  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8026EA44  39 61 00 40 */	addi r11, r1, 0x40
/* 8026EA48  48 0F 37 E1 */	bl _restgpr_29
/* 8026EA4C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8026EA50  7C 08 03 A6 */	mtlr r0
/* 8026EA54  38 21 00 50 */	addi r1, r1, 0x50
/* 8026EA58  4E 80 00 20 */	blr 
