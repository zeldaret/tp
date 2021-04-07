lbl_801D1DC4:
/* 801D1DC4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801D1DC8  7C 08 02 A6 */	mflr r0
/* 801D1DCC  90 01 00 64 */	stw r0, 0x64(r1)
/* 801D1DD0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 801D1DD4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 801D1DD8  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 801D1DDC  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 801D1DE0  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 801D1DE4  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 801D1DE8  39 61 00 30 */	addi r11, r1, 0x30
/* 801D1DEC  48 19 03 ED */	bl _savegpr_28
/* 801D1DF0  7C 7F 1B 78 */	mr r31, r3
/* 801D1DF4  7C 9C 23 78 */	mr r28, r4
/* 801D1DF8  48 00 09 99 */	bl getMapScissorAreaLY__18dMenu_Fmap2DBack_cFv
/* 801D1DFC  FF C0 08 90 */	fmr f30, f1
/* 801D1E00  7F E3 FB 78 */	mr r3, r31
/* 801D1E04  48 00 09 35 */	bl getMapScissorAreaLX__18dMenu_Fmap2DBack_cFv
/* 801D1E08  7F E3 FB 78 */	mr r3, r31
/* 801D1E0C  FC 40 F0 90 */	fmr f2, f30
/* 801D1E10  38 81 00 1C */	addi r4, r1, 0x1c
/* 801D1E14  38 A1 00 18 */	addi r5, r1, 0x18
/* 801D1E18  4B FF F1 65 */	bl calcAllMapPosWorld__18dMenu_Fmap2DBack_cFffPfPf
/* 801D1E1C  7F E3 FB 78 */	mr r3, r31
/* 801D1E20  48 00 0B 79 */	bl getMapScissorAreaSizeRealY__18dMenu_Fmap2DBack_cFv
/* 801D1E24  FF C0 08 90 */	fmr f30, f1
/* 801D1E28  7F E3 FB 78 */	mr r3, r31
/* 801D1E2C  48 00 09 65 */	bl getMapScissorAreaLY__18dMenu_Fmap2DBack_cFv
/* 801D1E30  EF C1 F0 2A */	fadds f30, f1, f30
/* 801D1E34  7F E3 FB 78 */	mr r3, r31
/* 801D1E38  48 00 0A 29 */	bl getMapScissorAreaSizeRealX__18dMenu_Fmap2DBack_cFv
/* 801D1E3C  FF E0 08 90 */	fmr f31, f1
/* 801D1E40  7F E3 FB 78 */	mr r3, r31
/* 801D1E44  48 00 08 F5 */	bl getMapScissorAreaLX__18dMenu_Fmap2DBack_cFv
/* 801D1E48  EC 21 F8 2A */	fadds f1, f1, f31
/* 801D1E4C  7F E3 FB 78 */	mr r3, r31
/* 801D1E50  FC 40 F0 90 */	fmr f2, f30
/* 801D1E54  38 81 00 14 */	addi r4, r1, 0x14
/* 801D1E58  38 A1 00 10 */	addi r5, r1, 0x10
/* 801D1E5C  4B FF F1 21 */	bl calcAllMapPosWorld__18dMenu_Fmap2DBack_cFffPfPf
/* 801D1E60  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D1E64  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D1E68  C3 A3 00 E0 */	lfs f29, 0xe0(r3)
/* 801D1E6C  C0 03 00 E4 */	lfs f0, 0xe4(r3)
/* 801D1E70  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 801D1E74  40 80 00 0C */	bge lbl_801D1E80
/* 801D1E78  FF C0 E8 90 */	fmr f30, f29
/* 801D1E7C  48 00 00 08 */	b lbl_801D1E84
lbl_801D1E80:
/* 801D1E80  FF C0 00 90 */	fmr f30, f0
lbl_801D1E84:
/* 801D1E84  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 801D1E88  40 81 00 08 */	ble lbl_801D1E90
/* 801D1E8C  48 00 00 08 */	b lbl_801D1E94
lbl_801D1E90:
/* 801D1E90  FF A0 00 90 */	fmr f29, f0
lbl_801D1E94:
/* 801D1E94  7F 83 E3 78 */	mr r3, r28
/* 801D1E98  81 9C 00 00 */	lwz r12, 0(r28)
/* 801D1E9C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801D1EA0  7D 89 03 A6 */	mtctr r12
/* 801D1EA4  4E 80 04 21 */	bctrl 
/* 801D1EA8  FF E0 08 90 */	fmr f31, f1
/* 801D1EAC  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 801D1EB0  4C 41 13 82 */	cror 2, 1, 2
/* 801D1EB4  40 82 00 9C */	bne lbl_801D1F50
/* 801D1EB8  7F 83 E3 78 */	mr r3, r28
/* 801D1EBC  81 9C 00 00 */	lwz r12, 0(r28)
/* 801D1EC0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801D1EC4  7D 89 03 A6 */	mtctr r12
/* 801D1EC8  4E 80 04 21 */	bctrl 
/* 801D1ECC  7C 7E 1B 78 */	mr r30, r3
/* 801D1ED0  C0 3F 0F E8 */	lfs f1, 0xfe8(r31)
/* 801D1ED4  C0 1F 0F E0 */	lfs f0, 0xfe0(r31)
/* 801D1ED8  EF C1 00 28 */	fsubs f30, f1, f0
/* 801D1EDC  7F E3 FB 78 */	mr r3, r31
/* 801D1EE0  48 00 0C 7D */	bl getAllMapZoomRate__18dMenu_Fmap2DBack_cFv
/* 801D1EE4  EC 5E 08 24 */	fdivs f2, f30, f1
/* 801D1EE8  FC 1F E8 40 */	fcmpo cr0, f31, f29
/* 801D1EEC  40 80 00 14 */	bge lbl_801D1F00
/* 801D1EF0  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D1EF4  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D1EF8  C0 23 00 D8 */	lfs f1, 0xd8(r3)
/* 801D1EFC  48 00 00 10 */	b lbl_801D1F0C
lbl_801D1F00:
/* 801D1F00  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D1F04  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D1F08  C0 23 00 C8 */	lfs f1, 0xc8(r3)
lbl_801D1F0C:
/* 801D1F0C  C0 02 A8 00 */	lfs f0, lit_4260(r2)
/* 801D1F10  EC 01 00 24 */	fdivs f0, f1, f0
/* 801D1F14  EC 40 00 B2 */	fmuls f2, f0, f2
/* 801D1F18  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 801D1F1C  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 801D1F20  57 C0 04 38 */	rlwinm r0, r30, 0, 0x10, 0x1c
/* 801D1F24  7C 64 02 14 */	add r3, r4, r0
/* 801D1F28  C0 03 00 04 */	lfs f0, 4(r3)
/* 801D1F2C  EC 62 00 32 */	fmuls f3, f2, f0
/* 801D1F30  C0 3F 11 9C */	lfs f1, 0x119c(r31)
/* 801D1F34  7C 04 04 2E */	lfsx f0, r4, r0
/* 801D1F38  EC 02 00 32 */	fmuls f0, f2, f0
/* 801D1F3C  EC 01 00 2A */	fadds f0, f1, f0
/* 801D1F40  D0 1F 11 9C */	stfs f0, 0x119c(r31)
/* 801D1F44  C0 1F 11 A0 */	lfs f0, 0x11a0(r31)
/* 801D1F48  EC 00 18 2A */	fadds f0, f0, f3
/* 801D1F4C  D0 1F 11 A0 */	stfs f0, 0x11a0(r31)
lbl_801D1F50:
/* 801D1F50  C0 3F 11 8C */	lfs f1, 0x118c(r31)
/* 801D1F54  C0 1F 11 9C */	lfs f0, 0x119c(r31)
/* 801D1F58  EC 01 00 2A */	fadds f0, f1, f0
/* 801D1F5C  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 801D1F60  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 801D1F64  40 80 00 0C */	bge lbl_801D1F70
/* 801D1F68  EC 02 08 28 */	fsubs f0, f2, f1
/* 801D1F6C  D0 1F 11 9C */	stfs f0, 0x119c(r31)
lbl_801D1F70:
/* 801D1F70  C0 3F 11 8C */	lfs f1, 0x118c(r31)
/* 801D1F74  C0 1F 11 9C */	lfs f0, 0x119c(r31)
/* 801D1F78  EC 01 00 2A */	fadds f0, f1, f0
/* 801D1F7C  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 801D1F80  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 801D1F84  40 81 00 0C */	ble lbl_801D1F90
/* 801D1F88  EC 02 08 28 */	fsubs f0, f2, f1
/* 801D1F8C  D0 1F 11 9C */	stfs f0, 0x119c(r31)
lbl_801D1F90:
/* 801D1F90  C0 3F 11 90 */	lfs f1, 0x1190(r31)
/* 801D1F94  C0 1F 11 A0 */	lfs f0, 0x11a0(r31)
/* 801D1F98  EC 01 00 2A */	fadds f0, f1, f0
/* 801D1F9C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 801D1FA0  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 801D1FA4  40 80 00 0C */	bge lbl_801D1FB0
/* 801D1FA8  EC 02 08 28 */	fsubs f0, f2, f1
/* 801D1FAC  D0 1F 11 A0 */	stfs f0, 0x11a0(r31)
lbl_801D1FB0:
/* 801D1FB0  C0 3F 11 90 */	lfs f1, 0x1190(r31)
/* 801D1FB4  C0 1F 11 A0 */	lfs f0, 0x11a0(r31)
/* 801D1FB8  EC 01 00 2A */	fadds f0, f1, f0
/* 801D1FBC  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 801D1FC0  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 801D1FC4  40 81 00 0C */	ble lbl_801D1FD0
/* 801D1FC8  EC 02 08 28 */	fsubs f0, f2, f1
/* 801D1FCC  D0 1F 11 A0 */	stfs f0, 0x11a0(r31)
lbl_801D1FD0:
/* 801D1FD0  7F E3 FB 78 */	mr r3, r31
/* 801D1FD4  48 00 0A 61 */	bl calcRenderingScale__18dMenu_Fmap2DBack_cFv
/* 801D1FD8  7F E3 FB 78 */	mr r3, r31
/* 801D1FDC  48 00 09 DD */	bl calcRenderingPos__18dMenu_Fmap2DBack_cFv
/* 801D1FE0  7F E3 FB 78 */	mr r3, r31
/* 801D1FE4  4B FF EA E5 */	bl calcAllMapPos__18dMenu_Fmap2DBack_cFv
/* 801D1FE8  7F E3 FB 78 */	mr r3, r31
/* 801D1FEC  C0 3F 11 8C */	lfs f1, 0x118c(r31)
/* 801D1FF0  C0 1F 11 9C */	lfs f0, 0x119c(r31)
/* 801D1FF4  EC 21 00 2A */	fadds f1, f1, f0
/* 801D1FF8  C0 1F 0F C8 */	lfs f0, 0xfc8(r31)
/* 801D1FFC  EC 21 00 28 */	fsubs f1, f1, f0
/* 801D2000  C0 5F 11 90 */	lfs f2, 0x1190(r31)
/* 801D2004  C0 1F 11 A0 */	lfs f0, 0x11a0(r31)
/* 801D2008  EC 42 00 2A */	fadds f2, f2, f0
/* 801D200C  C0 1F 0F CC */	lfs f0, 0xfcc(r31)
/* 801D2010  EC 42 00 28 */	fsubs f2, f2, f0
/* 801D2014  38 81 00 0C */	addi r4, r1, 0xc
/* 801D2018  38 A1 00 08 */	addi r5, r1, 8
/* 801D201C  4B FF EC FD */	bl calcAllMapPos2D__18dMenu_Fmap2DBack_cFffPfPf
/* 801D2020  38 00 00 FF */	li r0, 0xff
/* 801D2024  98 1F 12 26 */	stb r0, 0x1226(r31)
/* 801D2028  3B A0 00 07 */	li r29, 7
lbl_801D202C:
/* 801D202C  38 1D 12 30 */	addi r0, r29, 0x1230
/* 801D2030  7F 9F 00 AE */	lbzx r28, r31, r0
/* 801D2034  2C 1C 00 FF */	cmpwi r28, 0xff
/* 801D2038  41 82 00 84 */	beq lbl_801D20BC
/* 801D203C  2C 1C 00 07 */	cmpwi r28, 7
/* 801D2040  41 82 00 7C */	beq lbl_801D20BC
/* 801D2044  57 80 10 3A */	slwi r0, r28, 2
/* 801D2048  7F DF 02 14 */	add r30, r31, r0
/* 801D204C  80 7E 0C B4 */	lwz r3, 0xcb4(r30)
/* 801D2050  38 80 00 00 */	li r4, 0
/* 801D2054  81 83 00 00 */	lwz r12, 0(r3)
/* 801D2058  81 8C 01 20 */	lwz r12, 0x120(r12)
/* 801D205C  7D 89 03 A6 */	mtctr r12
/* 801D2060  4E 80 04 21 */	bctrl 
/* 801D2064  80 63 00 20 */	lwz r3, 0x20(r3)
/* 801D2068  C0 DF 0F 9C */	lfs f6, 0xf9c(r31)
/* 801D206C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 801D2070  C0 41 00 08 */	lfs f2, 8(r1)
/* 801D2074  C0 9F 0F BC */	lfs f4, 0xfbc(r31)
/* 801D2078  C0 7E 0E 8C */	lfs f3, 0xe8c(r30)
/* 801D207C  C0 1E 0F 0C */	lfs f0, 0xf0c(r30)
/* 801D2080  EC 03 00 2A */	fadds f0, f3, f0
/* 801D2084  EC 64 00 2A */	fadds f3, f4, f0
/* 801D2088  C0 BF 0F C0 */	lfs f5, 0xfc0(r31)
/* 801D208C  C0 9E 0E AC */	lfs f4, 0xeac(r30)
/* 801D2090  C0 1E 0F 2C */	lfs f0, 0xf2c(r30)
/* 801D2094  EC 04 00 2A */	fadds f0, f4, f0
/* 801D2098  EC 85 00 2A */	fadds f4, f5, f0
/* 801D209C  C0 1E 0E CC */	lfs f0, 0xecc(r30)
/* 801D20A0  EC A0 01 B2 */	fmuls f5, f0, f6
/* 801D20A4  C0 1E 0E EC */	lfs f0, 0xeec(r30)
/* 801D20A8  EC C0 01 B2 */	fmuls f6, f0, f6
/* 801D20AC  48 04 C2 5D */	bl dMeter2Info_getPixel__FffffffPC7ResTIMG
/* 801D20B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D20B4  41 82 00 08 */	beq lbl_801D20BC
/* 801D20B8  9B 9F 12 26 */	stb r28, 0x1226(r31)
lbl_801D20BC:
/* 801D20BC  88 1F 12 26 */	lbz r0, 0x1226(r31)
/* 801D20C0  28 00 00 FF */	cmplwi r0, 0xff
/* 801D20C4  40 82 00 0C */	bne lbl_801D20D0
/* 801D20C8  37 BD FF FF */	addic. r29, r29, -1
/* 801D20CC  40 80 FF 60 */	bge lbl_801D202C
lbl_801D20D0:
/* 801D20D0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 801D20D4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 801D20D8  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 801D20DC  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 801D20E0  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 801D20E4  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 801D20E8  39 61 00 30 */	addi r11, r1, 0x30
/* 801D20EC  48 19 01 39 */	bl _restgpr_28
/* 801D20F0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801D20F4  7C 08 03 A6 */	mtlr r0
/* 801D20F8  38 21 00 60 */	addi r1, r1, 0x60
/* 801D20FC  4E 80 00 20 */	blr 
