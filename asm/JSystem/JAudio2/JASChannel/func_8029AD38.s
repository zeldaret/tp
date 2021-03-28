lbl_8029AD38:
/* 8029AD38  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8029AD3C  7C 08 02 A6 */	mflr r0
/* 8029AD40  90 01 00 94 */	stw r0, 0x94(r1)
/* 8029AD44  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8029AD48  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8029AD4C  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8029AD50  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 8029AD54  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 8029AD58  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 8029AD5C  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 8029AD60  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 8029AD64  39 61 00 50 */	addi r11, r1, 0x50
/* 8029AD68  48 0C 74 71 */	bl _savegpr_28
/* 8029AD6C  7C 7C 1B 78 */	mr r28, r3
/* 8029AD70  7C 9D 23 78 */	mr r29, r4
/* 8029AD74  7C BE 2B 78 */	mr r30, r5
/* 8029AD78  7C DF 33 78 */	mr r31, r6
/* 8029AD7C  C0 03 00 C0 */	lfs f0, 0xc0(r3)
/* 8029AD80  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8029AD84  C0 03 00 A8 */	lfs f0, 0xa8(r3)
/* 8029AD88  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8029AD8C  C0 06 00 08 */	lfs f0, 8(r6)
/* 8029AD90  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8029AD94  C0 03 00 B8 */	lfs f0, 0xb8(r3)
/* 8029AD98  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8029AD9C  C0 03 00 AC */	lfs f0, 0xac(r3)
/* 8029ADA0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8029ADA4  C0 06 00 0C */	lfs f0, 0xc(r6)
/* 8029ADA8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8029ADAC  C0 03 00 C4 */	lfs f0, 0xc4(r3)
/* 8029ADB0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8029ADB4  C0 03 00 B0 */	lfs f0, 0xb0(r3)
/* 8029ADB8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8029ADBC  C0 06 00 10 */	lfs f0, 0x10(r6)
/* 8029ADC0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8029ADC4  C3 E2 BC 88 */	lfs f31, lit_546(r2)
/* 8029ADC8  C3 C2 BC 84 */	lfs f30, lit_545(r2)
/* 8029ADCC  48 00 33 B5 */	bl getOutputMode__9JASDriverFv
/* 8029ADD0  2C 03 00 01 */	cmpwi r3, 1
/* 8029ADD4  41 82 00 18 */	beq lbl_8029ADEC
/* 8029ADD8  40 80 00 08 */	bge lbl_8029ADE0
/* 8029ADDC  48 00 00 38 */	b lbl_8029AE14
lbl_8029ADE0:
/* 8029ADE0  2C 03 00 03 */	cmpwi r3, 3
/* 8029ADE4  40 80 00 30 */	bge lbl_8029AE14
/* 8029ADE8  48 00 00 14 */	b lbl_8029ADFC
lbl_8029ADEC:
/* 8029ADEC  38 61 00 20 */	addi r3, r1, 0x20
/* 8029ADF0  4B FF FD D1 */	bl calcPan__10JASChannelFPCQ210JASChannel9PanVector
/* 8029ADF4  FF E0 08 90 */	fmr f31, f1
/* 8029ADF8  48 00 00 1C */	b lbl_8029AE14
lbl_8029ADFC:
/* 8029ADFC  38 61 00 20 */	addi r3, r1, 0x20
/* 8029AE00  4B FF FD C1 */	bl calcPan__10JASChannelFPCQ210JASChannel9PanVector
/* 8029AE04  FF E0 08 90 */	fmr f31, f1
/* 8029AE08  38 61 00 08 */	addi r3, r1, 8
/* 8029AE0C  4B FF FD 9D */	bl calcEffect__10JASChannelFPCQ210JASChannel9PanVector
/* 8029AE10  FF C0 08 90 */	fmr f30, f1
lbl_8029AE14:
/* 8029AE14  38 61 00 14 */	addi r3, r1, 0x14
/* 8029AE18  4B FF FD 91 */	bl calcEffect__10JASChannelFPCQ210JASChannel9PanVector
/* 8029AE1C  FF A0 08 90 */	fmr f29, f1
/* 8029AE20  A0 1C 00 CA */	lhz r0, 0xca(r28)
/* 8029AE24  C8 22 BC A8 */	lfd f1, lit_714(r2)
/* 8029AE28  90 01 00 34 */	stw r0, 0x34(r1)
/* 8029AE2C  3C 00 43 30 */	lis r0, 0x4330
/* 8029AE30  90 01 00 30 */	stw r0, 0x30(r1)
/* 8029AE34  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8029AE38  EC 20 08 28 */	fsubs f1, f0, f1
/* 8029AE3C  C0 02 BC A0 */	lfs f0, lit_711(r2)
/* 8029AE40  EF 81 00 24 */	fdivs f28, f1, f0
/* 8029AE44  EF 9C 07 32 */	fmuls f28, f28, f28
/* 8029AE48  38 7C 00 74 */	addi r3, r28, 0x74
/* 8029AE4C  48 00 0E F9 */	bl getValue__6JASLfoCFv
/* 8029AE50  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8029AE54  EC 20 00 72 */	fmuls f1, f0, f1
/* 8029AE58  C0 02 BC 80 */	lfs f0, lit_544(r2)
/* 8029AE5C  EC 60 08 2A */	fadds f3, f0, f1
/* 8029AE60  C0 5C 00 9C */	lfs f2, 0x9c(r28)
/* 8029AE64  C0 3C 00 B4 */	lfs f1, 0xb4(r28)
/* 8029AE68  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8029AE6C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8029AE70  EC 02 00 32 */	fmuls f0, f2, f0
/* 8029AE74  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8029AE78  EF 9C 00 32 */	fmuls f28, f28, f0
/* 8029AE7C  C0 02 BC 84 */	lfs f0, lit_545(r2)
/* 8029AE80  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 8029AE84  40 80 00 08 */	bge lbl_8029AE8C
/* 8029AE88  FF 80 00 90 */	fmr f28, f0
lbl_8029AE8C:
/* 8029AE8C  C0 42 BC 84 */	lfs f2, lit_545(r2)
/* 8029AE90  FC 1F 10 40 */	fcmpo cr0, f31, f2
/* 8029AE94  4C 40 13 82 */	cror 2, 0, 2
/* 8029AE98  40 82 00 08 */	bne lbl_8029AEA0
/* 8029AE9C  48 00 00 1C */	b lbl_8029AEB8
lbl_8029AEA0:
/* 8029AEA0  C0 42 BC 80 */	lfs f2, lit_544(r2)
/* 8029AEA4  FC 1F 10 40 */	fcmpo cr0, f31, f2
/* 8029AEA8  4C 41 13 82 */	cror 2, 1, 2
/* 8029AEAC  40 82 00 08 */	bne lbl_8029AEB4
/* 8029AEB0  48 00 00 08 */	b lbl_8029AEB8
lbl_8029AEB4:
/* 8029AEB4  FC 40 F8 90 */	fmr f2, f31
lbl_8029AEB8:
/* 8029AEB8  C0 62 BC 84 */	lfs f3, lit_545(r2)
/* 8029AEBC  FC 1D 18 40 */	fcmpo cr0, f29, f3
/* 8029AEC0  4C 40 13 82 */	cror 2, 0, 2
/* 8029AEC4  40 82 00 08 */	bne lbl_8029AECC
/* 8029AEC8  48 00 00 1C */	b lbl_8029AEE4
lbl_8029AECC:
/* 8029AECC  C0 62 BC 80 */	lfs f3, lit_544(r2)
/* 8029AED0  FC 1D 18 40 */	fcmpo cr0, f29, f3
/* 8029AED4  4C 41 13 82 */	cror 2, 1, 2
/* 8029AED8  40 82 00 08 */	bne lbl_8029AEE0
/* 8029AEDC  48 00 00 08 */	b lbl_8029AEE4
lbl_8029AEE0:
/* 8029AEE0  FC 60 E8 90 */	fmr f3, f29
lbl_8029AEE4:
/* 8029AEE4  C0 82 BC 84 */	lfs f4, lit_545(r2)
/* 8029AEE8  FC 1E 20 40 */	fcmpo cr0, f30, f4
/* 8029AEEC  4C 40 13 82 */	cror 2, 0, 2
/* 8029AEF0  40 82 00 08 */	bne lbl_8029AEF8
/* 8029AEF4  48 00 00 1C */	b lbl_8029AF10
lbl_8029AEF8:
/* 8029AEF8  C0 82 BC 80 */	lfs f4, lit_544(r2)
/* 8029AEFC  FC 1E 20 40 */	fcmpo cr0, f30, f4
/* 8029AF00  4C 41 13 82 */	cror 2, 1, 2
/* 8029AF04  40 82 00 08 */	bne lbl_8029AF0C
/* 8029AF08  48 00 00 08 */	b lbl_8029AF10
lbl_8029AF0C:
/* 8029AF0C  FC 80 F0 90 */	fmr f4, f30
lbl_8029AF10:
/* 8029AF10  A0 1C 00 8C */	lhz r0, 0x8c(r28)
/* 8029AF14  28 00 FF FF */	cmplwi r0, 0xffff
/* 8029AF18  40 82 00 18 */	bne lbl_8029AF30
/* 8029AF1C  7F 83 E3 78 */	mr r3, r28
/* 8029AF20  7F A4 EB 78 */	mr r4, r29
/* 8029AF24  FC 20 E0 90 */	fmr f1, f28
/* 8029AF28  48 00 07 79 */	bl updateAutoMixer__10JASChannelFPQ26JASDsp8TChannelffff
/* 8029AF2C  48 00 00 14 */	b lbl_8029AF40
lbl_8029AF30:
/* 8029AF30  7F 83 E3 78 */	mr r3, r28
/* 8029AF34  FC 20 E0 90 */	fmr f1, f28
/* 8029AF38  7F C4 F3 78 */	mr r4, r30
/* 8029AF3C  48 00 08 9D */	bl updateMixer__10JASChannelFffffPUs
lbl_8029AF40:
/* 8029AF40  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8029AF44  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8029AF48  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 8029AF4C  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8029AF50  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 8029AF54  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 8029AF58  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 8029AF5C  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 8029AF60  39 61 00 50 */	addi r11, r1, 0x50
/* 8029AF64  48 0C 72 C1 */	bl _restgpr_28
/* 8029AF68  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8029AF6C  7C 08 03 A6 */	mtlr r0
/* 8029AF70  38 21 00 90 */	addi r1, r1, 0x90
/* 8029AF74  4E 80 00 20 */	blr 
