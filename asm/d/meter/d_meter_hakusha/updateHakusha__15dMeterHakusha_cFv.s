lbl_8020CD6C:
/* 8020CD6C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8020CD70  7C 08 02 A6 */	mflr r0
/* 8020CD74  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8020CD78  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 8020CD7C  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 8020CD80  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 8020CD84  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 8020CD88  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 8020CD8C  F3 A1 00 78 */	psq_st f29, 120(r1), 0, 0 /* qr0 */
/* 8020CD90  DB 81 00 60 */	stfd f28, 0x60(r1)
/* 8020CD94  F3 81 00 68 */	psq_st f28, 104(r1), 0, 0 /* qr0 */
/* 8020CD98  39 61 00 60 */	addi r11, r1, 0x60
/* 8020CD9C  48 15 54 35 */	bl _savegpr_26
/* 8020CDA0  7C 7C 1B 78 */	mr r28, r3
/* 8020CDA4  80 83 00 14 */	lwz r4, 0x14(r3)
/* 8020CDA8  38 61 00 14 */	addi r3, r1, 0x14
/* 8020CDAC  80 A4 00 04 */	lwz r5, 4(r4)
/* 8020CDB0  38 C0 00 00 */	li r6, 0
/* 8020CDB4  38 E0 00 00 */	li r7, 0
/* 8020CDB8  48 04 81 05 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 8020CDBC  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8020CDC0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8020CDC4  90 61 00 2C */	stw r3, 0x2c(r1)
/* 8020CDC8  90 01 00 30 */	stw r0, 0x30(r1)
/* 8020CDCC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8020CDD0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8020CDD4  80 9C 00 28 */	lwz r4, 0x28(r28)
/* 8020CDD8  38 61 00 08 */	addi r3, r1, 8
/* 8020CDDC  80 A4 00 04 */	lwz r5, 4(r4)
/* 8020CDE0  38 C0 00 00 */	li r6, 0
/* 8020CDE4  38 E0 00 00 */	li r7, 0
/* 8020CDE8  48 04 80 D5 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 8020CDEC  80 61 00 08 */	lwz r3, 8(r1)
/* 8020CDF0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8020CDF4  90 61 00 20 */	stw r3, 0x20(r1)
/* 8020CDF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8020CDFC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8020CE00  90 01 00 28 */	stw r0, 0x28(r1)
/* 8020CE04  C3 C1 00 2C */	lfs f30, 0x2c(r1)
/* 8020CE08  C3 A1 00 30 */	lfs f29, 0x30(r1)
/* 8020CE0C  7F 83 E3 78 */	mr r3, r28
/* 8020CE10  48 00 06 71 */	bl getHakushaNum__15dMeterHakusha_cFv
/* 8020CE14  C8 22 AE 18 */	lfd f1, lit_4098(r2)
/* 8020CE18  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8020CE1C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8020CE20  3C 00 43 30 */	lis r0, 0x4330
/* 8020CE24  90 01 00 38 */	stw r0, 0x38(r1)
/* 8020CE28  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8020CE2C  EC 40 08 28 */	fsubs f2, f0, f1
/* 8020CE30  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8020CE34  FC 00 F0 90 */	fmr f0, f30
/* 8020CE38  EC 01 00 28 */	fsubs f0, f1, f0
/* 8020CE3C  EF 80 10 24 */	fdivs f28, f0, f2
/* 8020CE40  A8 DC 01 08 */	lha r6, 0x108(r28)
/* 8020CE44  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8020CE48  3B C3 01 88 */	addi r30, r3, g_meter2_info@l /* 0x80430188@l */
/* 8020CE4C  A8 1E 00 96 */	lha r0, 0x96(r30)
/* 8020CE50  7C 06 00 00 */	cmpw r6, r0
/* 8020CE54  41 82 00 8C */	beq lbl_8020CEE0
/* 8020CE58  40 81 00 38 */	ble lbl_8020CE90
/* 8020CE5C  C0 22 AE 0C */	lfs f1, lit_4094(r2)
/* 8020CE60  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020CE64  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020CE68  C0 03 04 40 */	lfs f0, 0x440(r3)
/* 8020CE6C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8020CE70  54 00 10 3A */	slwi r0, r0, 2
/* 8020CE74  7C 7C 02 14 */	add r3, r28, r0
/* 8020CE78  D0 03 00 C8 */	stfs f0, 0xc8(r3)
/* 8020CE7C  38 80 00 00 */	li r4, 0
/* 8020CE80  A8 1E 00 96 */	lha r0, 0x96(r30)
/* 8020CE84  7C 7C 02 14 */	add r3, r28, r0
/* 8020CE88  98 83 01 0A */	stb r4, 0x10a(r3)
/* 8020CE8C  48 00 00 4C */	b lbl_8020CED8
lbl_8020CE90:
/* 8020CE90  40 80 00 48 */	bge lbl_8020CED8
/* 8020CE94  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020CE98  38 A3 EB C8 */	addi r5, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020CE9C  C0 22 AE 0C */	lfs f1, lit_4094(r2)
/* 8020CEA0  38 80 00 01 */	li r4, 1
/* 8020CEA4  54 C3 10 3A */	slwi r3, r6, 2
/* 8020CEA8  48 00 00 24 */	b lbl_8020CECC
lbl_8020CEAC:
/* 8020CEAC  C0 05 04 54 */	lfs f0, 0x454(r5)
/* 8020CEB0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8020CEB4  38 03 00 C8 */	addi r0, r3, 0xc8
/* 8020CEB8  7C 1C 05 2E */	stfsx f0, r28, r0
/* 8020CEBC  38 06 01 0A */	addi r0, r6, 0x10a
/* 8020CEC0  7C 9C 01 AE */	stbx r4, r28, r0
/* 8020CEC4  38 C6 00 01 */	addi r6, r6, 1
/* 8020CEC8  38 63 00 04 */	addi r3, r3, 4
lbl_8020CECC:
/* 8020CECC  A8 1E 00 96 */	lha r0, 0x96(r30)
/* 8020CED0  7C 06 00 00 */	cmpw r6, r0
/* 8020CED4  41 80 FF D8 */	blt lbl_8020CEAC
lbl_8020CED8:
/* 8020CED8  A8 1E 00 96 */	lha r0, 0x96(r30)
/* 8020CEDC  B0 1C 01 08 */	sth r0, 0x108(r28)
lbl_8020CEE0:
/* 8020CEE0  3B A0 00 00 */	li r29, 0
/* 8020CEE4  3B 60 00 00 */	li r27, 0
/* 8020CEE8  3B 40 00 00 */	li r26, 0
/* 8020CEEC  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020CEF0  3B E3 EB C8 */	addi r31, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020CEF4  C3 E2 AE 00 */	lfs f31, lit_3793(r2)
/* 8020CEF8  48 00 01 BC */	b lbl_8020D0B4
lbl_8020CEFC:
/* 8020CEFC  38 BA 00 C8 */	addi r5, r26, 0xc8
/* 8020CF00  7C 3C 2C 2E */	lfsx f1, r28, r5
/* 8020CF04  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8020CF08  40 81 00 48 */	ble lbl_8020CF50
/* 8020CF0C  38 1D 01 0A */	addi r0, r29, 0x10a
/* 8020CF10  7C 1C 00 AE */	lbzx r0, r28, r0
/* 8020CF14  28 00 00 00 */	cmplwi r0, 0
/* 8020CF18  40 82 00 14 */	bne lbl_8020CF2C
/* 8020CF1C  C0 1F 04 40 */	lfs f0, 0x440(r31)
/* 8020CF20  EC 01 00 2A */	fadds f0, f1, f0
/* 8020CF24  7C 1C 2D 2E */	stfsx f0, r28, r5
/* 8020CF28  48 00 00 10 */	b lbl_8020CF38
lbl_8020CF2C:
/* 8020CF2C  C0 1F 04 54 */	lfs f0, 0x454(r31)
/* 8020CF30  EC 01 00 2A */	fadds f0, f1, f0
/* 8020CF34  7C 1C 2D 2E */	stfsx f0, r28, r5
lbl_8020CF38:
/* 8020CF38  7C 3C 2C 2E */	lfsx f1, r28, r5
/* 8020CF3C  C0 02 AE 10 */	lfs f0, lit_4095(r2)
/* 8020CF40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8020CF44  40 81 00 0C */	ble lbl_8020CF50
/* 8020CF48  C0 02 AE 00 */	lfs f0, lit_3793(r2)
/* 8020CF4C  7C 1C 2D 2E */	stfsx f0, r28, r5
lbl_8020CF50:
/* 8020CF50  7C 7C DA 14 */	add r3, r28, r27
/* 8020CF54  D3 C3 00 38 */	stfs f30, 0x38(r3)
/* 8020CF58  D3 A3 00 3C */	stfs f29, 0x3c(r3)
/* 8020CF5C  80 9C 00 2C */	lwz r4, 0x2c(r28)
/* 8020CF60  80 84 00 04 */	lwz r4, 4(r4)
/* 8020CF64  88 04 00 B2 */	lbz r0, 0xb2(r4)
/* 8020CF68  28 00 00 00 */	cmplwi r0, 0
/* 8020CF6C  40 82 00 14 */	bne lbl_8020CF80
/* 8020CF70  88 03 00 40 */	lbz r0, 0x40(r3)
/* 8020CF74  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 8020CF78  98 03 00 40 */	stb r0, 0x40(r3)
/* 8020CF7C  48 00 00 84 */	b lbl_8020D000
lbl_8020CF80:
/* 8020CF80  A8 1E 00 96 */	lha r0, 0x96(r30)
/* 8020CF84  7C 1D 00 00 */	cmpw r29, r0
/* 8020CF88  41 80 00 5C */	blt lbl_8020CFE4
/* 8020CF8C  C0 02 AE 00 */	lfs f0, lit_3793(r2)
/* 8020CF90  7C 3C 2C 2E */	lfsx f1, r28, r5
/* 8020CF94  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8020CF98  41 82 00 24 */	beq lbl_8020CFBC
/* 8020CF9C  C0 02 AE 14 */	lfs f0, lit_4096(r2)
/* 8020CFA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8020CFA4  4C 40 13 82 */	cror 2, 0, 2
/* 8020CFA8  40 82 00 14 */	bne lbl_8020CFBC
/* 8020CFAC  38 1D 01 0A */	addi r0, r29, 0x10a
/* 8020CFB0  7C 1C 00 AE */	lbzx r0, r28, r0
/* 8020CFB4  28 00 00 00 */	cmplwi r0, 0
/* 8020CFB8  41 82 00 2C */	beq lbl_8020CFE4
lbl_8020CFBC:
/* 8020CFBC  C0 02 AE 00 */	lfs f0, lit_3793(r2)
/* 8020CFC0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8020CFC4  41 82 00 30 */	beq lbl_8020CFF4
/* 8020CFC8  C0 02 AE 14 */	lfs f0, lit_4096(r2)
/* 8020CFCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8020CFD0  40 81 00 24 */	ble lbl_8020CFF4
/* 8020CFD4  38 1D 01 0A */	addi r0, r29, 0x10a
/* 8020CFD8  7C 1C 00 AE */	lbzx r0, r28, r0
/* 8020CFDC  28 00 00 01 */	cmplwi r0, 1
/* 8020CFE0  40 82 00 14 */	bne lbl_8020CFF4
lbl_8020CFE4:
/* 8020CFE4  88 03 00 40 */	lbz r0, 0x40(r3)
/* 8020CFE8  60 00 00 01 */	ori r0, r0, 1
/* 8020CFEC  98 03 00 40 */	stb r0, 0x40(r3)
/* 8020CFF0  48 00 00 10 */	b lbl_8020D000
lbl_8020CFF4:
/* 8020CFF4  88 03 00 40 */	lbz r0, 0x40(r3)
/* 8020CFF8  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 8020CFFC  98 03 00 40 */	stb r0, 0x40(r3)
lbl_8020D000:
/* 8020D000  80 9C 00 30 */	lwz r4, 0x30(r28)
/* 8020D004  80 84 00 04 */	lwz r4, 4(r4)
/* 8020D008  88 04 00 B2 */	lbz r0, 0xb2(r4)
/* 8020D00C  28 00 00 00 */	cmplwi r0, 0
/* 8020D010  40 82 00 14 */	bne lbl_8020D024
/* 8020D014  88 03 00 40 */	lbz r0, 0x40(r3)
/* 8020D018  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8020D01C  98 03 00 40 */	stb r0, 0x40(r3)
/* 8020D020  48 00 00 84 */	b lbl_8020D0A4
lbl_8020D024:
/* 8020D024  A8 1E 00 96 */	lha r0, 0x96(r30)
/* 8020D028  7C 1D 00 00 */	cmpw r29, r0
/* 8020D02C  41 80 00 5C */	blt lbl_8020D088
/* 8020D030  C0 02 AE 00 */	lfs f0, lit_3793(r2)
/* 8020D034  7C 3C 2C 2E */	lfsx f1, r28, r5
/* 8020D038  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8020D03C  41 82 00 24 */	beq lbl_8020D060
/* 8020D040  C0 02 AE 14 */	lfs f0, lit_4096(r2)
/* 8020D044  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8020D048  4C 40 13 82 */	cror 2, 0, 2
/* 8020D04C  40 82 00 14 */	bne lbl_8020D060
/* 8020D050  38 1D 01 0A */	addi r0, r29, 0x10a
/* 8020D054  7C 1C 00 AE */	lbzx r0, r28, r0
/* 8020D058  28 00 00 00 */	cmplwi r0, 0
/* 8020D05C  41 82 00 2C */	beq lbl_8020D088
lbl_8020D060:
/* 8020D060  C0 02 AE 00 */	lfs f0, lit_3793(r2)
/* 8020D064  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8020D068  41 82 00 30 */	beq lbl_8020D098
/* 8020D06C  C0 02 AE 14 */	lfs f0, lit_4096(r2)
/* 8020D070  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8020D074  40 81 00 24 */	ble lbl_8020D098
/* 8020D078  38 1D 01 0A */	addi r0, r29, 0x10a
/* 8020D07C  7C 1C 00 AE */	lbzx r0, r28, r0
/* 8020D080  28 00 00 01 */	cmplwi r0, 1
/* 8020D084  40 82 00 14 */	bne lbl_8020D098
lbl_8020D088:
/* 8020D088  88 03 00 40 */	lbz r0, 0x40(r3)
/* 8020D08C  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8020D090  98 03 00 40 */	stb r0, 0x40(r3)
/* 8020D094  48 00 00 10 */	b lbl_8020D0A4
lbl_8020D098:
/* 8020D098  88 03 00 40 */	lbz r0, 0x40(r3)
/* 8020D09C  60 00 00 02 */	ori r0, r0, 2
/* 8020D0A0  98 03 00 40 */	stb r0, 0x40(r3)
lbl_8020D0A4:
/* 8020D0A4  EF DE E0 2A */	fadds f30, f30, f28
/* 8020D0A8  3B BD 00 01 */	addi r29, r29, 1
/* 8020D0AC  3B 7B 00 0C */	addi r27, r27, 0xc
/* 8020D0B0  3B 5A 00 04 */	addi r26, r26, 4
lbl_8020D0B4:
/* 8020D0B4  7F 83 E3 78 */	mr r3, r28
/* 8020D0B8  48 00 03 C9 */	bl getHakushaNum__15dMeterHakusha_cFv
/* 8020D0BC  7C 1D 18 00 */	cmpw r29, r3
/* 8020D0C0  41 80 FE 3C */	blt lbl_8020CEFC
/* 8020D0C4  C0 1C 01 00 */	lfs f0, 0x100(r28)
/* 8020D0C8  EC 1E 00 2A */	fadds f0, f30, f0
/* 8020D0CC  D0 1C 00 F8 */	stfs f0, 0xf8(r28)
/* 8020D0D0  C0 1C 01 04 */	lfs f0, 0x104(r28)
/* 8020D0D4  EC 1D 00 2A */	fadds f0, f29, f0
/* 8020D0D8  D0 1C 00 FC */	stfs f0, 0xfc(r28)
/* 8020D0DC  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020D0E0  3B 43 EB C8 */	addi r26, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020D0E4  88 1A 04 2E */	lbz r0, 0x42e(r26)
/* 8020D0E8  28 00 00 00 */	cmplwi r0, 0
/* 8020D0EC  41 82 01 34 */	beq lbl_8020D220
/* 8020D0F0  C0 1A 03 B8 */	lfs f0, 0x3b8(r26)
/* 8020D0F4  D0 1C 01 00 */	stfs f0, 0x100(r28)
/* 8020D0F8  C0 1A 03 BC */	lfs f0, 0x3bc(r26)
/* 8020D0FC  D0 1C 01 04 */	stfs f0, 0x104(r28)
/* 8020D100  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8020D104  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8020D108  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8020D10C  3C 80 80 3A */	lis r4, d_meter_d_meter_hakusha__stringBase0@ha /* 0x803981B0@ha */
/* 8020D110  38 84 81 B0 */	addi r4, r4, d_meter_d_meter_hakusha__stringBase0@l /* 0x803981B0@l */
/* 8020D114  38 84 00 46 */	addi r4, r4, 0x46
/* 8020D118  48 15 B8 7D */	bl strcmp
/* 8020D11C  2C 03 00 00 */	cmpwi r3, 0
/* 8020D120  40 82 00 28 */	bne lbl_8020D148
/* 8020D124  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 8020D128  C0 22 AE 04 */	lfs f1, lit_3794(r2)
/* 8020D12C  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020D130  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020D134  C0 04 03 B0 */	lfs f0, 0x3b0(r4)
/* 8020D138  EC 21 00 2A */	fadds f1, f1, f0
/* 8020D13C  C0 44 03 B4 */	lfs f2, 0x3b4(r4)
/* 8020D140  48 04 74 71 */	bl paneTrans__8CPaneMgrFff
/* 8020D144  48 00 00 1C */	b lbl_8020D160
lbl_8020D148:
/* 8020D148  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 8020D14C  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020D150  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020D154  C0 24 03 B0 */	lfs f1, 0x3b0(r4)
/* 8020D158  C0 44 03 B4 */	lfs f2, 0x3b4(r4)
/* 8020D15C  48 04 74 55 */	bl paneTrans__8CPaneMgrFff
lbl_8020D160:
/* 8020D160  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020D164  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020D168  C0 03 03 AC */	lfs f0, 0x3ac(r3)
/* 8020D16C  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 8020D170  80 63 00 04 */	lwz r3, 4(r3)
/* 8020D174  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8020D178  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 8020D17C  81 83 00 00 */	lwz r12, 0(r3)
/* 8020D180  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8020D184  7D 89 03 A6 */	mtctr r12
/* 8020D188  4E 80 04 21 */	bctrl 
/* 8020D18C  80 7C 00 34 */	lwz r3, 0x34(r28)
/* 8020D190  C0 3A 03 B8 */	lfs f1, 0x3b8(r26)
/* 8020D194  C0 5A 03 BC */	lfs f2, 0x3bc(r26)
/* 8020D198  48 04 74 19 */	bl paneTrans__8CPaneMgrFff
/* 8020D19C  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020D1A0  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020D1A4  C0 03 03 C0 */	lfs f0, 0x3c0(r3)
/* 8020D1A8  80 7C 00 34 */	lwz r3, 0x34(r28)
/* 8020D1AC  80 63 00 04 */	lwz r3, 4(r3)
/* 8020D1B0  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8020D1B4  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 8020D1B8  81 83 00 00 */	lwz r12, 0(r3)
/* 8020D1BC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8020D1C0  7D 89 03 A6 */	mtctr r12
/* 8020D1C4  4E 80 04 21 */	bctrl 
/* 8020D1C8  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020D1CC  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020D1D0  C0 03 03 9C */	lfs f0, 0x39c(r3)
/* 8020D1D4  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 8020D1D8  80 63 00 04 */	lwz r3, 4(r3)
/* 8020D1DC  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8020D1E0  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 8020D1E4  81 83 00 00 */	lwz r12, 0(r3)
/* 8020D1E8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8020D1EC  7D 89 03 A6 */	mtctr r12
/* 8020D1F0  4E 80 04 21 */	bctrl 
/* 8020D1F4  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020D1F8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020D1FC  C0 03 03 A4 */	lfs f0, 0x3a4(r3)
/* 8020D200  80 7C 00 30 */	lwz r3, 0x30(r28)
/* 8020D204  80 63 00 04 */	lwz r3, 4(r3)
/* 8020D208  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8020D20C  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 8020D210  81 83 00 00 */	lwz r12, 0(r3)
/* 8020D214  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8020D218  7D 89 03 A6 */	mtctr r12
/* 8020D21C  4E 80 04 21 */	bctrl 
lbl_8020D220:
/* 8020D220  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 8020D224  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 8020D228  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 8020D22C  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 8020D230  E3 A1 00 78 */	psq_l f29, 120(r1), 0, 0 /* qr0 */
/* 8020D234  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 8020D238  E3 81 00 68 */	psq_l f28, 104(r1), 0, 0 /* qr0 */
/* 8020D23C  CB 81 00 60 */	lfd f28, 0x60(r1)
/* 8020D240  39 61 00 60 */	addi r11, r1, 0x60
/* 8020D244  48 15 4F D9 */	bl _restgpr_26
/* 8020D248  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8020D24C  7C 08 03 A6 */	mtlr r0
/* 8020D250  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8020D254  4E 80 00 20 */	blr 
