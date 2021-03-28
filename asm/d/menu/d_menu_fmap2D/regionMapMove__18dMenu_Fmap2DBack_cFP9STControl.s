lbl_801D4B2C:
/* 801D4B2C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801D4B30  7C 08 02 A6 */	mflr r0
/* 801D4B34  90 01 00 74 */	stw r0, 0x74(r1)
/* 801D4B38  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 801D4B3C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 801D4B40  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 801D4B44  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 801D4B48  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 801D4B4C  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 801D4B50  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 801D4B54  F3 81 00 38 */	psq_st f28, 56(r1), 0, 0 /* qr0 */
/* 801D4B58  39 61 00 30 */	addi r11, r1, 0x30
/* 801D4B5C  48 18 D6 81 */	bl _savegpr_29
/* 801D4B60  7C 7F 1B 78 */	mr r31, r3
/* 801D4B64  7C 9D 23 78 */	mr r29, r4
/* 801D4B68  4B FF DC 29 */	bl getMapScissorAreaLY__18dMenu_Fmap2DBack_cFv
/* 801D4B6C  FF C0 08 90 */	fmr f30, f1
/* 801D4B70  7F E3 FB 78 */	mr r3, r31
/* 801D4B74  4B FF DB C5 */	bl getMapScissorAreaLX__18dMenu_Fmap2DBack_cFv
/* 801D4B78  7F E3 FB 78 */	mr r3, r31
/* 801D4B7C  FC 40 F0 90 */	fmr f2, f30
/* 801D4B80  38 81 00 1C */	addi r4, r1, 0x1c
/* 801D4B84  38 A1 00 18 */	addi r5, r1, 0x18
/* 801D4B88  4B FF C3 F5 */	bl calcAllMapPosWorld__18dMenu_Fmap2DBack_cFffPfPf
/* 801D4B8C  7F E3 FB 78 */	mr r3, r31
/* 801D4B90  4B FF DE 09 */	bl getMapScissorAreaSizeRealY__18dMenu_Fmap2DBack_cFv
/* 801D4B94  FF C0 08 90 */	fmr f30, f1
/* 801D4B98  7F E3 FB 78 */	mr r3, r31
/* 801D4B9C  4B FF DB F5 */	bl getMapScissorAreaLY__18dMenu_Fmap2DBack_cFv
/* 801D4BA0  EF E1 F0 2A */	fadds f31, f1, f30
/* 801D4BA4  7F E3 FB 78 */	mr r3, r31
/* 801D4BA8  4B FF DC B9 */	bl getMapScissorAreaSizeRealX__18dMenu_Fmap2DBack_cFv
/* 801D4BAC  FF C0 08 90 */	fmr f30, f1
/* 801D4BB0  7F E3 FB 78 */	mr r3, r31
/* 801D4BB4  4B FF DB 85 */	bl getMapScissorAreaLX__18dMenu_Fmap2DBack_cFv
/* 801D4BB8  EC 21 F0 2A */	fadds f1, f1, f30
/* 801D4BBC  7F E3 FB 78 */	mr r3, r31
/* 801D4BC0  FC 40 F8 90 */	fmr f2, f31
/* 801D4BC4  38 81 00 14 */	addi r4, r1, 0x14
/* 801D4BC8  38 A1 00 10 */	addi r5, r1, 0x10
/* 801D4BCC  4B FF C3 B1 */	bl calcAllMapPosWorld__18dMenu_Fmap2DBack_cFffPfPf
/* 801D4BD0  3C 60 80 43 */	lis r3, g_fmapHIO@ha
/* 801D4BD4  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l
/* 801D4BD8  C3 A3 00 E0 */	lfs f29, 0xe0(r3)
/* 801D4BDC  C0 03 00 E4 */	lfs f0, 0xe4(r3)
/* 801D4BE0  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 801D4BE4  40 80 00 0C */	bge lbl_801D4BF0
/* 801D4BE8  FF E0 E8 90 */	fmr f31, f29
/* 801D4BEC  48 00 00 08 */	b lbl_801D4BF4
lbl_801D4BF0:
/* 801D4BF0  FF E0 00 90 */	fmr f31, f0
lbl_801D4BF4:
/* 801D4BF4  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 801D4BF8  40 81 00 08 */	ble lbl_801D4C00
/* 801D4BFC  48 00 00 08 */	b lbl_801D4C04
lbl_801D4C00:
/* 801D4C00  FF A0 00 90 */	fmr f29, f0
lbl_801D4C04:
/* 801D4C04  7F A3 EB 78 */	mr r3, r29
/* 801D4C08  81 9D 00 00 */	lwz r12, 0(r29)
/* 801D4C0C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801D4C10  7D 89 03 A6 */	mtctr r12
/* 801D4C14  4E 80 04 21 */	bctrl 
/* 801D4C18  FF C0 08 90 */	fmr f30, f1
/* 801D4C1C  FC 1E F8 40 */	fcmpo cr0, f30, f31
/* 801D4C20  4C 41 13 82 */	cror 2, 1, 2
/* 801D4C24  40 82 00 C4 */	bne lbl_801D4CE8
/* 801D4C28  7F A3 EB 78 */	mr r3, r29
/* 801D4C2C  81 9D 00 00 */	lwz r12, 0(r29)
/* 801D4C30  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801D4C34  7D 89 03 A6 */	mtctr r12
/* 801D4C38  4E 80 04 21 */	bctrl 
/* 801D4C3C  7C 7E 1B 78 */	mr r30, r3
/* 801D4C40  C0 3F 0F E8 */	lfs f1, 0xfe8(r31)
/* 801D4C44  C0 1F 0F E0 */	lfs f0, 0xfe0(r31)
/* 801D4C48  EF 81 00 28 */	fsubs f28, f1, f0
/* 801D4C4C  7F E3 FB 78 */	mr r3, r31
/* 801D4C50  4B FF DF FD */	bl getSpotMapZoomRate__18dMenu_Fmap2DBack_cFv
/* 801D4C54  FF E0 08 90 */	fmr f31, f1
/* 801D4C58  7F E3 FB 78 */	mr r3, r31
/* 801D4C5C  88 9F 12 27 */	lbz r4, 0x1227(r31)
/* 801D4C60  4B FF DF 05 */	bl getRegionMapZoomRate__18dMenu_Fmap2DBack_cFi
/* 801D4C64  C0 5F 0F A0 */	lfs f2, 0xfa0(r31)
/* 801D4C68  C0 02 A7 D4 */	lfs f0, lit_3971(r2)
/* 801D4C6C  EC 42 00 28 */	fsubs f2, f2, f0
/* 801D4C70  EC 1F 08 28 */	fsubs f0, f31, f1
/* 801D4C74  EC 02 00 32 */	fmuls f0, f2, f0
/* 801D4C78  EC 01 00 2A */	fadds f0, f1, f0
/* 801D4C7C  EC 5C 00 24 */	fdivs f2, f28, f0
/* 801D4C80  FC 1E E8 40 */	fcmpo cr0, f30, f29
/* 801D4C84  40 80 00 14 */	bge lbl_801D4C98
/* 801D4C88  3C 60 80 43 */	lis r3, g_fmapHIO@ha
/* 801D4C8C  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l
/* 801D4C90  C0 23 00 D0 */	lfs f1, 0xd0(r3)
/* 801D4C94  48 00 00 10 */	b lbl_801D4CA4
lbl_801D4C98:
/* 801D4C98  3C 60 80 43 */	lis r3, g_fmapHIO@ha
/* 801D4C9C  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l
/* 801D4CA0  C0 23 00 C0 */	lfs f1, 0xc0(r3)
lbl_801D4CA4:
/* 801D4CA4  C0 02 A8 00 */	lfs f0, lit_4260(r2)
/* 801D4CA8  EC 01 00 24 */	fdivs f0, f1, f0
/* 801D4CAC  EC 40 00 B2 */	fmuls f2, f0, f2
/* 801D4CB0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 801D4CB4  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 801D4CB8  57 C0 04 38 */	rlwinm r0, r30, 0, 0x10, 0x1c
/* 801D4CBC  7C 64 02 14 */	add r3, r4, r0
/* 801D4CC0  C0 03 00 04 */	lfs f0, 4(r3)
/* 801D4CC4  EC 62 00 32 */	fmuls f3, f2, f0
/* 801D4CC8  C0 3F 11 9C */	lfs f1, 0x119c(r31)
/* 801D4CCC  7C 04 04 2E */	lfsx f0, r4, r0
/* 801D4CD0  EC 02 00 32 */	fmuls f0, f2, f0
/* 801D4CD4  EC 01 00 2A */	fadds f0, f1, f0
/* 801D4CD8  D0 1F 11 9C */	stfs f0, 0x119c(r31)
/* 801D4CDC  C0 1F 11 A0 */	lfs f0, 0x11a0(r31)
/* 801D4CE0  EC 00 18 2A */	fadds f0, f0, f3
/* 801D4CE4  D0 1F 11 A0 */	stfs f0, 0x11a0(r31)
lbl_801D4CE8:
/* 801D4CE8  C0 3F 11 8C */	lfs f1, 0x118c(r31)
/* 801D4CEC  C0 1F 11 9C */	lfs f0, 0x119c(r31)
/* 801D4CF0  EC 01 00 2A */	fadds f0, f1, f0
/* 801D4CF4  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 801D4CF8  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 801D4CFC  40 80 00 0C */	bge lbl_801D4D08
/* 801D4D00  EC 02 08 28 */	fsubs f0, f2, f1
/* 801D4D04  D0 1F 11 9C */	stfs f0, 0x119c(r31)
lbl_801D4D08:
/* 801D4D08  C0 3F 11 8C */	lfs f1, 0x118c(r31)
/* 801D4D0C  C0 1F 11 9C */	lfs f0, 0x119c(r31)
/* 801D4D10  EC 01 00 2A */	fadds f0, f1, f0
/* 801D4D14  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 801D4D18  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 801D4D1C  40 81 00 0C */	ble lbl_801D4D28
/* 801D4D20  EC 02 08 28 */	fsubs f0, f2, f1
/* 801D4D24  D0 1F 11 9C */	stfs f0, 0x119c(r31)
lbl_801D4D28:
/* 801D4D28  C0 3F 11 90 */	lfs f1, 0x1190(r31)
/* 801D4D2C  C0 1F 11 A0 */	lfs f0, 0x11a0(r31)
/* 801D4D30  EC 01 00 2A */	fadds f0, f1, f0
/* 801D4D34  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 801D4D38  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 801D4D3C  40 80 00 0C */	bge lbl_801D4D48
/* 801D4D40  EC 02 08 28 */	fsubs f0, f2, f1
/* 801D4D44  D0 1F 11 A0 */	stfs f0, 0x11a0(r31)
lbl_801D4D48:
/* 801D4D48  C0 3F 11 90 */	lfs f1, 0x1190(r31)
/* 801D4D4C  C0 1F 11 A0 */	lfs f0, 0x11a0(r31)
/* 801D4D50  EC 01 00 2A */	fadds f0, f1, f0
/* 801D4D54  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 801D4D58  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 801D4D5C  40 81 00 0C */	ble lbl_801D4D68
/* 801D4D60  EC 02 08 28 */	fsubs f0, f2, f1
/* 801D4D64  D0 1F 11 A0 */	stfs f0, 0x11a0(r31)
lbl_801D4D68:
/* 801D4D68  7F E3 FB 78 */	mr r3, r31
/* 801D4D6C  4B FF DC C9 */	bl calcRenderingScale__18dMenu_Fmap2DBack_cFv
/* 801D4D70  7F E3 FB 78 */	mr r3, r31
/* 801D4D74  4B FF DC 45 */	bl calcRenderingPos__18dMenu_Fmap2DBack_cFv
/* 801D4D78  7F E3 FB 78 */	mr r3, r31
/* 801D4D7C  C0 3F 11 8C */	lfs f1, 0x118c(r31)
/* 801D4D80  C0 1F 11 9C */	lfs f0, 0x119c(r31)
/* 801D4D84  EC 21 00 2A */	fadds f1, f1, f0
/* 801D4D88  C0 1F 0F C8 */	lfs f0, 0xfc8(r31)
/* 801D4D8C  EC 21 00 28 */	fsubs f1, f1, f0
/* 801D4D90  C0 5F 11 90 */	lfs f2, 0x1190(r31)
/* 801D4D94  C0 1F 11 A0 */	lfs f0, 0x11a0(r31)
/* 801D4D98  EC 42 00 2A */	fadds f2, f2, f0
/* 801D4D9C  C0 1F 0F CC */	lfs f0, 0xfcc(r31)
/* 801D4DA0  EC 42 00 28 */	fsubs f2, f2, f0
/* 801D4DA4  38 81 00 0C */	addi r4, r1, 0xc
/* 801D4DA8  38 A1 00 08 */	addi r5, r1, 8
/* 801D4DAC  4B FF BF 6D */	bl calcAllMapPos2D__18dMenu_Fmap2DBack_cFffPfPf
/* 801D4DB0  38 00 00 FF */	li r0, 0xff
/* 801D4DB4  98 1F 12 26 */	stb r0, 0x1226(r31)
/* 801D4DB8  8B BF 12 27 */	lbz r29, 0x1227(r31)
/* 801D4DBC  2C 1D 00 FF */	cmpwi r29, 0xff
/* 801D4DC0  41 82 00 88 */	beq lbl_801D4E48
/* 801D4DC4  2C 1D 00 07 */	cmpwi r29, 7
/* 801D4DC8  41 82 00 80 */	beq lbl_801D4E48
/* 801D4DCC  57 BE 10 3A */	slwi r30, r29, 2
/* 801D4DD0  7C 7F F2 14 */	add r3, r31, r30
/* 801D4DD4  80 63 0C B4 */	lwz r3, 0xcb4(r3)
/* 801D4DD8  38 80 00 00 */	li r4, 0
/* 801D4DDC  81 83 00 00 */	lwz r12, 0(r3)
/* 801D4DE0  81 8C 01 20 */	lwz r12, 0x120(r12)
/* 801D4DE4  7D 89 03 A6 */	mtctr r12
/* 801D4DE8  4E 80 04 21 */	bctrl 
/* 801D4DEC  80 63 00 20 */	lwz r3, 0x20(r3)
/* 801D4DF0  C0 DF 0F 9C */	lfs f6, 0xf9c(r31)
/* 801D4DF4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 801D4DF8  C0 41 00 08 */	lfs f2, 8(r1)
/* 801D4DFC  C0 9F 0F BC */	lfs f4, 0xfbc(r31)
/* 801D4E00  7C 9F F2 14 */	add r4, r31, r30
/* 801D4E04  C0 64 0E 8C */	lfs f3, 0xe8c(r4)
/* 801D4E08  C0 04 0F 0C */	lfs f0, 0xf0c(r4)
/* 801D4E0C  EC 03 00 2A */	fadds f0, f3, f0
/* 801D4E10  EC 64 00 2A */	fadds f3, f4, f0
/* 801D4E14  C0 BF 0F C0 */	lfs f5, 0xfc0(r31)
/* 801D4E18  C0 84 0E AC */	lfs f4, 0xeac(r4)
/* 801D4E1C  C0 04 0F 2C */	lfs f0, 0xf2c(r4)
/* 801D4E20  EC 04 00 2A */	fadds f0, f4, f0
/* 801D4E24  EC 85 00 2A */	fadds f4, f5, f0
/* 801D4E28  C0 04 0E CC */	lfs f0, 0xecc(r4)
/* 801D4E2C  EC A0 01 B2 */	fmuls f5, f0, f6
/* 801D4E30  C0 04 0E EC */	lfs f0, 0xeec(r4)
/* 801D4E34  EC C0 01 B2 */	fmuls f6, f0, f6
/* 801D4E38  48 04 94 D1 */	bl dMeter2Info_getPixel__FffffffPC7ResTIMG
/* 801D4E3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D4E40  41 82 00 08 */	beq lbl_801D4E48
/* 801D4E44  9B BF 12 26 */	stb r29, 0x1226(r31)
lbl_801D4E48:
/* 801D4E48  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 801D4E4C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 801D4E50  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 801D4E54  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 801D4E58  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 801D4E5C  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 801D4E60  E3 81 00 38 */	psq_l f28, 56(r1), 0, 0 /* qr0 */
/* 801D4E64  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 801D4E68  39 61 00 30 */	addi r11, r1, 0x30
/* 801D4E6C  48 18 D3 BD */	bl _restgpr_29
/* 801D4E70  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801D4E74  7C 08 03 A6 */	mtlr r0
/* 801D4E78  38 21 00 70 */	addi r1, r1, 0x70
/* 801D4E7C  4E 80 00 20 */	blr 
