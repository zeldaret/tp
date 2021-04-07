lbl_8005CF78:
/* 8005CF78  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 8005CF7C  7C 08 02 A6 */	mflr r0
/* 8005CF80  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8005CF84  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 8005CF88  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 8005CF8C  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8005CF90  48 30 52 49 */	bl _savegpr_28
/* 8005CF94  7C 7D 1B 78 */	mr r29, r3
/* 8005CF98  FF E0 08 90 */	fmr f31, f1
/* 8005CF9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8005CFA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8005CFA4  83 E3 5D 74 */	lwz r31, 0x5d74(r3)
/* 8005CFA8  3B C0 00 00 */	li r30, 0
/* 8005CFAC  3B 81 00 70 */	addi r28, r1, 0x70
/* 8005CFB0  7F 83 E3 78 */	mr r3, r28
/* 8005CFB4  48 01 A5 C9 */	bl __ct__11dBgS_GndChkFv
/* 8005CFB8  3C 60 80 3A */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x803A382C@ha */
/* 8005CFBC  38 63 38 2C */	addi r3, r3, __vt__14dBgS_ObjGndChk@l /* 0x803A382C@l */
/* 8005CFC0  90 61 00 80 */	stw r3, 0x80(r1)
/* 8005CFC4  38 03 00 0C */	addi r0, r3, 0xc
/* 8005CFC8  90 01 00 90 */	stw r0, 0x90(r1)
/* 8005CFCC  38 03 00 18 */	addi r0, r3, 0x18
/* 8005CFD0  90 01 00 AC */	stw r0, 0xac(r1)
/* 8005CFD4  38 03 00 24 */	addi r0, r3, 0x24
/* 8005CFD8  90 01 00 BC */	stw r0, 0xbc(r1)
/* 8005CFDC  38 7C 00 3C */	addi r3, r28, 0x3c
/* 8005CFE0  48 01 BE 89 */	bl SetObj__16dBgS_PolyPassChkFv
/* 8005CFE4  3C 60 80 3B */	lis r3, __vt__18dBgS_ObjGndChk_All@ha /* 0x803AB6E8@ha */
/* 8005CFE8  38 63 B6 E8 */	addi r3, r3, __vt__18dBgS_ObjGndChk_All@l /* 0x803AB6E8@l */
/* 8005CFEC  90 61 00 80 */	stw r3, 0x80(r1)
/* 8005CFF0  38 03 00 0C */	addi r0, r3, 0xc
/* 8005CFF4  90 01 00 90 */	stw r0, 0x90(r1)
/* 8005CFF8  38 03 00 18 */	addi r0, r3, 0x18
/* 8005CFFC  90 01 00 AC */	stw r0, 0xac(r1)
/* 8005D000  38 03 00 24 */	addi r0, r3, 0x24
/* 8005D004  90 01 00 BC */	stw r0, 0xbc(r1)
/* 8005D008  80 01 00 C0 */	lwz r0, 0xc0(r1)
/* 8005D00C  60 00 00 03 */	ori r0, r0, 3
/* 8005D010  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 8005D014  38 61 00 20 */	addi r3, r1, 0x20
/* 8005D018  48 01 BF DD */	bl __ct__12dBgS_RoofChkFv
/* 8005D01C  38 7F 00 D8 */	addi r3, r31, 0xd8
/* 8005D020  38 9F 00 E4 */	addi r4, r31, 0xe4
/* 8005D024  38 A1 00 08 */	addi r5, r1, 8
/* 8005D028  4B FF E7 39 */	bl dKyr_get_vectle_calc__FP4cXyzP4cXyzP4cXyz
/* 8005D02C  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 8005D030  C0 01 00 08 */	lfs f0, 8(r1)
/* 8005D034  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8005D038  EC 61 00 2A */	fadds f3, f1, f0
/* 8005D03C  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 8005D040  C0 5F 00 DC */	lfs f2, 0xdc(r31)
/* 8005D044  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8005D048  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8005D04C  EC 02 00 2A */	fadds f0, f2, f0
/* 8005D050  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8005D054  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 8005D058  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8005D05C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8005D060  EC 01 00 2A */	fadds f0, f1, f0
/* 8005D064  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8005D068  C0 02 88 7C */	lfs f0, lit_4467(r2)
/* 8005D06C  EC 00 10 2A */	fadds f0, f0, f2
/* 8005D070  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8005D074  D0 7D 00 00 */	stfs f3, 0(r29)
/* 8005D078  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8005D07C  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8005D080  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8005D084  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8005D088  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8005D08C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8005D090  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8005D094  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8005D098  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8005D09C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8005D0A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8005D0A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8005D0A8  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 8005D0AC  7F A3 EB 78 */	mr r3, r29
/* 8005D0B0  38 81 00 20 */	addi r4, r1, 0x20
/* 8005D0B4  48 01 83 E9 */	bl RoofChk__4dBgSFP12dBgS_RoofChk
/* 8005D0B8  C0 02 88 30 */	lfs f0, lit_4361(r2)
/* 8005D0BC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8005D0C0  41 82 00 50 */	beq lbl_8005D110
/* 8005D0C4  3B C0 00 01 */	li r30, 1
/* 8005D0C8  38 7D 3E C8 */	addi r3, r29, 0x3ec8
/* 8005D0CC  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 8005D0D0  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 8005D0D4  38 84 00 17 */	addi r4, r4, 0x17
/* 8005D0D8  48 30 B8 BD */	bl strcmp
/* 8005D0DC  2C 03 00 00 */	cmpwi r3, 0
/* 8005D0E0  40 82 00 30 */	bne lbl_8005D110
/* 8005D0E4  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 8005D0E8  2C 00 00 11 */	cmpwi r0, 0x11
/* 8005D0EC  40 82 00 24 */	bne lbl_8005D110
/* 8005D0F0  38 61 00 20 */	addi r3, r1, 0x20
/* 8005D0F4  38 80 FF FF */	li r4, -1
/* 8005D0F8  48 01 BF 99 */	bl __dt__12dBgS_RoofChkFv
/* 8005D0FC  7F 83 E3 78 */	mr r3, r28
/* 8005D100  38 80 FF FF */	li r4, -1
/* 8005D104  48 01 A7 E5 */	bl __dt__18dBgS_ObjGndChk_AllFv
/* 8005D108  38 60 00 00 */	li r3, 0
/* 8005D10C  48 00 00 60 */	b lbl_8005D16C
lbl_8005D110:
/* 8005D110  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8005D114  C0 02 88 80 */	lfs f0, lit_4468(r2)
/* 8005D118  EC 01 00 2A */	fadds f0, f1, f0
/* 8005D11C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8005D120  38 61 00 70 */	addi r3, r1, 0x70
/* 8005D124  38 81 00 14 */	addi r4, r1, 0x14
/* 8005D128  48 20 AC 01 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8005D12C  7F A3 EB 78 */	mr r3, r29
/* 8005D130  38 81 00 70 */	addi r4, r1, 0x70
/* 8005D134  48 01 73 6D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8005D138  C0 42 88 7C */	lfs f2, lit_4467(r2)
/* 8005D13C  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 8005D140  EC 02 00 2A */	fadds f0, f2, f0
/* 8005D144  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005D148  40 81 00 08 */	ble lbl_8005D150
/* 8005D14C  3B C0 00 01 */	li r30, 1
lbl_8005D150:
/* 8005D150  38 61 00 20 */	addi r3, r1, 0x20
/* 8005D154  38 80 FF FF */	li r4, -1
/* 8005D158  48 01 BF 39 */	bl __dt__12dBgS_RoofChkFv
/* 8005D15C  38 61 00 70 */	addi r3, r1, 0x70
/* 8005D160  38 80 FF FF */	li r4, -1
/* 8005D164  48 01 A7 85 */	bl __dt__18dBgS_ObjGndChk_AllFv
/* 8005D168  7F C3 F3 78 */	mr r3, r30
lbl_8005D16C:
/* 8005D16C  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 8005D170  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 8005D174  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8005D178  48 30 50 AD */	bl _restgpr_28
/* 8005D17C  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8005D180  7C 08 03 A6 */	mtlr r0
/* 8005D184  38 21 00 F0 */	addi r1, r1, 0xf0
/* 8005D188  4E 80 00 20 */	blr 
