lbl_801D1AA4:
/* 801D1AA4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801D1AA8  7C 08 02 A6 */	mflr r0
/* 801D1AAC  90 01 00 84 */	stw r0, 0x84(r1)
/* 801D1AB0  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 801D1AB4  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 801D1AB8  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 801D1ABC  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 801D1AC0  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 801D1AC4  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 801D1AC8  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 801D1ACC  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 801D1AD0  DB 61 00 30 */	stfd f27, 0x30(r1)
/* 801D1AD4  F3 61 00 38 */	psq_st f27, 56(r1), 0, 0 /* qr0 */
/* 801D1AD8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801D1ADC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801D1AE0  7C 7E 1B 78 */	mr r30, r3
/* 801D1AE4  FF 60 08 90 */	fmr f27, f1
/* 801D1AE8  88 83 12 27 */	lbz r4, 0x1227(r3)
/* 801D1AEC  54 9F 10 3A */	slwi r31, r4, 2
/* 801D1AF0  48 00 10 75 */	bl getRegionMapZoomRate__18dMenu_Fmap2DBack_cFi
/* 801D1AF4  FC A0 08 90 */	fmr f5, f1
/* 801D1AF8  7F C3 F3 78 */	mr r3, r30
/* 801D1AFC  C0 3E 11 8C */	lfs f1, 0x118c(r30)
/* 801D1B00  C0 1E 11 9C */	lfs f0, 0x119c(r30)
/* 801D1B04  EC 21 00 2A */	fadds f1, f1, f0
/* 801D1B08  C0 5E 11 90 */	lfs f2, 0x1190(r30)
/* 801D1B0C  C0 1E 11 A0 */	lfs f0, 0x11a0(r30)
/* 801D1B10  EC 42 00 2A */	fadds f2, f2, f0
/* 801D1B14  38 81 00 1C */	addi r4, r1, 0x1c
/* 801D1B18  38 A1 00 18 */	addi r5, r1, 0x18
/* 801D1B1C  7C DE FA 14 */	add r6, r30, r31
/* 801D1B20  C0 66 0F 4C */	lfs f3, 0xf4c(r6)
/* 801D1B24  C0 86 0F 6C */	lfs f4, 0xf6c(r6)
/* 801D1B28  4B FF F2 D9 */	bl calcAllMapPos2D__18dMenu_Fmap2DBack_cFffPfPffff
/* 801D1B2C  7F C3 F3 78 */	mr r3, r30
/* 801D1B30  48 00 0B 49 */	bl getMapAreaGlobalCenterPosX__18dMenu_Fmap2DBack_cFv
/* 801D1B34  FF C0 08 90 */	fmr f30, f1
/* 801D1B38  7F C3 F3 78 */	mr r3, r30
/* 801D1B3C  48 00 0B 8D */	bl getMapAreaGlobalCenterPosY__18dMenu_Fmap2DBack_cFv
/* 801D1B40  FF E0 08 90 */	fmr f31, f1
/* 801D1B44  7F C3 F3 78 */	mr r3, r30
/* 801D1B48  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 801D1B4C  EC 1E 08 28 */	fsubs f0, f30, f1
/* 801D1B50  EC 1B 00 32 */	fmuls f0, f27, f0
/* 801D1B54  EC 21 00 2A */	fadds f1, f1, f0
/* 801D1B58  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 801D1B5C  EC 1F 10 28 */	fsubs f0, f31, f2
/* 801D1B60  EC 1B 00 32 */	fmuls f0, f27, f0
/* 801D1B64  EC 42 00 2A */	fadds f2, f2, f0
/* 801D1B68  38 81 00 14 */	addi r4, r1, 0x14
/* 801D1B6C  38 A1 00 10 */	addi r5, r1, 0x10
/* 801D1B70  4B FF F4 0D */	bl calcAllMapPosWorld__18dMenu_Fmap2DBack_cFffPfPf
/* 801D1B74  C0 3E 11 8C */	lfs f1, 0x118c(r30)
/* 801D1B78  C0 1E 11 9C */	lfs f0, 0x119c(r30)
/* 801D1B7C  EC 21 00 2A */	fadds f1, f1, f0
/* 801D1B80  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801D1B84  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D1B88  D0 1E 0F C8 */	stfs f0, 0xfc8(r30)
/* 801D1B8C  C0 3E 11 90 */	lfs f1, 0x1190(r30)
/* 801D1B90  C0 1E 11 A0 */	lfs f0, 0x11a0(r30)
/* 801D1B94  EC 21 00 2A */	fadds f1, f1, f0
/* 801D1B98  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801D1B9C  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D1BA0  D0 1E 0F CC */	stfs f0, 0xfcc(r30)
/* 801D1BA4  C0 1E 0F C8 */	lfs f0, 0xfc8(r30)
/* 801D1BA8  D0 1E 11 AC */	stfs f0, 0x11ac(r30)
/* 801D1BAC  C0 1E 0F CC */	lfs f0, 0xfcc(r30)
/* 801D1BB0  D0 1E 11 B0 */	stfs f0, 0x11b0(r30)
/* 801D1BB4  C0 22 A7 D0 */	lfs f1, lit_3970(r2)
/* 801D1BB8  C0 5E 11 A4 */	lfs f2, 0x11a4(r30)
/* 801D1BBC  FC 01 10 00 */	fcmpu cr0, f1, f2
/* 801D1BC0  40 82 00 10 */	bne lbl_801D1BD0
/* 801D1BC4  C0 1E 11 A8 */	lfs f0, 0x11a8(r30)
/* 801D1BC8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801D1BCC  41 82 01 00 */	beq lbl_801D1CCC
lbl_801D1BD0:
/* 801D1BD0  C0 3E 0F A0 */	lfs f1, 0xfa0(r30)
/* 801D1BD4  C0 02 A7 D4 */	lfs f0, lit_3971(r2)
/* 801D1BD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801D1BDC  40 81 00 F0 */	ble lbl_801D1CCC
/* 801D1BE0  C0 02 A7 EC */	lfs f0, lit_4203(r2)
/* 801D1BE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801D1BE8  40 80 00 E4 */	bge lbl_801D1CCC
/* 801D1BEC  EC 60 08 28 */	fsubs f3, f0, f1
/* 801D1BF0  C0 02 A7 D0 */	lfs f0, lit_3970(r2)
/* 801D1BF4  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 801D1BF8  41 82 00 08 */	beq lbl_801D1C00
/* 801D1BFC  EF A2 00 F2 */	fmuls f29, f2, f3
lbl_801D1C00:
/* 801D1C00  C0 02 A7 D0 */	lfs f0, lit_3970(r2)
/* 801D1C04  C0 3E 11 A8 */	lfs f1, 0x11a8(r30)
/* 801D1C08  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801D1C0C  41 82 00 08 */	beq lbl_801D1C14
/* 801D1C10  EF 81 00 F2 */	fmuls f28, f1, f3
lbl_801D1C14:
/* 801D1C14  88 9E 12 27 */	lbz r4, 0x1227(r30)
/* 801D1C18  54 9F 10 3A */	slwi r31, r4, 2
/* 801D1C1C  7F C3 F3 78 */	mr r3, r30
/* 801D1C20  48 00 0F 45 */	bl getRegionMapZoomRate__18dMenu_Fmap2DBack_cFi
/* 801D1C24  FC A0 08 90 */	fmr f5, f1
/* 801D1C28  7F C3 F3 78 */	mr r3, r30
/* 801D1C2C  C0 3E 11 8C */	lfs f1, 0x118c(r30)
/* 801D1C30  C0 1E 11 9C */	lfs f0, 0x119c(r30)
/* 801D1C34  EC 01 00 2A */	fadds f0, f1, f0
/* 801D1C38  EC 3D 00 2A */	fadds f1, f29, f0
/* 801D1C3C  C0 5E 11 90 */	lfs f2, 0x1190(r30)
/* 801D1C40  C0 1E 11 A0 */	lfs f0, 0x11a0(r30)
/* 801D1C44  EC 02 00 2A */	fadds f0, f2, f0
/* 801D1C48  EC 5C 00 2A */	fadds f2, f28, f0
/* 801D1C4C  38 81 00 1C */	addi r4, r1, 0x1c
/* 801D1C50  38 A1 00 18 */	addi r5, r1, 0x18
/* 801D1C54  7C DE FA 14 */	add r6, r30, r31
/* 801D1C58  C0 66 0F 4C */	lfs f3, 0xf4c(r6)
/* 801D1C5C  C0 86 0F 6C */	lfs f4, 0xf6c(r6)
/* 801D1C60  4B FF F1 A1 */	bl calcAllMapPos2D__18dMenu_Fmap2DBack_cFffPfPffff
/* 801D1C64  7F C3 F3 78 */	mr r3, r30
/* 801D1C68  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 801D1C6C  EC 1E 08 28 */	fsubs f0, f30, f1
/* 801D1C70  EC 1B 00 32 */	fmuls f0, f27, f0
/* 801D1C74  EC 21 00 2A */	fadds f1, f1, f0
/* 801D1C78  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 801D1C7C  EC 1F 10 28 */	fsubs f0, f31, f2
/* 801D1C80  EC 1B 00 32 */	fmuls f0, f27, f0
/* 801D1C84  EC 42 00 2A */	fadds f2, f2, f0
/* 801D1C88  38 81 00 0C */	addi r4, r1, 0xc
/* 801D1C8C  38 A1 00 08 */	addi r5, r1, 8
/* 801D1C90  4B FF F2 ED */	bl calcAllMapPosWorld__18dMenu_Fmap2DBack_cFffPfPf
/* 801D1C94  C0 3E 11 8C */	lfs f1, 0x118c(r30)
/* 801D1C98  C0 1E 11 9C */	lfs f0, 0x119c(r30)
/* 801D1C9C  EC 01 00 2A */	fadds f0, f1, f0
/* 801D1CA0  EC 3D 00 2A */	fadds f1, f29, f0
/* 801D1CA4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801D1CA8  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D1CAC  D0 1E 11 AC */	stfs f0, 0x11ac(r30)
/* 801D1CB0  C0 3E 11 90 */	lfs f1, 0x1190(r30)
/* 801D1CB4  C0 1E 11 A0 */	lfs f0, 0x11a0(r30)
/* 801D1CB8  EC 01 00 2A */	fadds f0, f1, f0
/* 801D1CBC  EC 3C 00 2A */	fadds f1, f28, f0
/* 801D1CC0  C0 01 00 08 */	lfs f0, 8(r1)
/* 801D1CC4  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D1CC8  D0 1E 11 B0 */	stfs f0, 0x11b0(r30)
lbl_801D1CCC:
/* 801D1CCC  C0 02 A7 D0 */	lfs f0, lit_3970(r2)
/* 801D1CD0  FC 00 D8 00 */	fcmpu cr0, f0, f27
/* 801D1CD4  40 82 00 18 */	bne lbl_801D1CEC
/* 801D1CD8  D0 1E 0F D4 */	stfs f0, 0xfd4(r30)
/* 801D1CDC  D0 1E 0F D0 */	stfs f0, 0xfd0(r30)
/* 801D1CE0  D0 1E 0F DC */	stfs f0, 0xfdc(r30)
/* 801D1CE4  D0 1E 0F D8 */	stfs f0, 0xfd8(r30)
/* 801D1CE8  48 00 00 20 */	b lbl_801D1D08
lbl_801D1CEC:
/* 801D1CEC  C0 02 A7 D4 */	lfs f0, lit_3971(r2)
/* 801D1CF0  FC 00 D8 00 */	fcmpu cr0, f0, f27
/* 801D1CF4  40 82 00 14 */	bne lbl_801D1D08
/* 801D1CF8  C0 1E 0F C8 */	lfs f0, 0xfc8(r30)
/* 801D1CFC  D0 1E 0F D0 */	stfs f0, 0xfd0(r30)
/* 801D1D00  C0 1E 0F CC */	lfs f0, 0xfcc(r30)
/* 801D1D04  D0 1E 0F D4 */	stfs f0, 0xfd4(r30)
lbl_801D1D08:
/* 801D1D08  7F C3 F3 78 */	mr r3, r30
/* 801D1D0C  48 00 0C AD */	bl calcRenderingPos__18dMenu_Fmap2DBack_cFv
/* 801D1D10  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 801D1D14  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 801D1D18  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 801D1D1C  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 801D1D20  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 801D1D24  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 801D1D28  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 801D1D2C  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 801D1D30  E3 61 00 38 */	psq_l f27, 56(r1), 0, 0 /* qr0 */
/* 801D1D34  CB 61 00 30 */	lfd f27, 0x30(r1)
/* 801D1D38  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801D1D3C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801D1D40  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801D1D44  7C 08 03 A6 */	mtlr r0
/* 801D1D48  38 21 00 80 */	addi r1, r1, 0x80
/* 801D1D4C  4E 80 00 20 */	blr 
