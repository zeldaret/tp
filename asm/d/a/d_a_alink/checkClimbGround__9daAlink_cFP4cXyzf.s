lbl_800FED50:
/* 800FED50  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 800FED54  7C 08 02 A6 */	mflr r0
/* 800FED58  90 01 00 74 */	stw r0, 0x74(r1)
/* 800FED5C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 800FED60  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 800FED64  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 800FED68  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 800FED6C  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 800FED70  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 800FED74  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 800FED78  F3 81 00 38 */	psq_st f28, 56(r1), 0, 0 /* qr0 */
/* 800FED7C  DB 61 00 20 */	stfd f27, 0x20(r1)
/* 800FED80  F3 61 00 28 */	psq_st f27, 40(r1), 0, 0 /* qr0 */
/* 800FED84  39 61 00 20 */	addi r11, r1, 0x20
/* 800FED88  48 26 34 51 */	bl _savegpr_28
/* 800FED8C  7C 7C 1B 78 */	mr r28, r3
/* 800FED90  7C 9D 23 78 */	mr r29, r4
/* 800FED94  FF E0 08 90 */	fmr f31, f1
/* 800FED98  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 800FED9C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800FEDA0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800FEDA4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800FEDA8  7C 83 04 2E */	lfsx f4, r3, r0
/* 800FEDAC  7C 63 02 14 */	add r3, r3, r0
/* 800FEDB0  C0 A3 00 04 */	lfs f5, 4(r3)
/* 800FEDB4  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 800FEDB8  C0 42 95 48 */	lfs f2, lit_23416(r2)
/* 800FEDBC  EC 02 01 72 */	fmuls f0, f2, f5
/* 800FEDC0  EC 61 00 2A */	fadds f3, f1, f0
/* 800FEDC4  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 800FEDC8  EC 02 01 32 */	fmuls f0, f2, f4
/* 800FEDCC  EC 01 00 2A */	fadds f0, f1, f0
/* 800FEDD0  D0 04 00 00 */	stfs f0, 0(r4)
/* 800FEDD4  C0 02 93 00 */	lfs f0, lit_6895(r2)
/* 800FEDD8  EC 00 F8 2A */	fadds f0, f0, f31
/* 800FEDDC  D0 04 00 04 */	stfs f0, 4(r4)
/* 800FEDE0  D0 64 00 08 */	stfs f3, 8(r4)
/* 800FEDE4  3B C0 00 00 */	li r30, 0
/* 800FEDE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800FEDEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800FEDF0  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 800FEDF4  C0 02 93 2C */	lfs f0, lit_7624(r2)
/* 800FEDF8  EF 80 01 32 */	fmuls f28, f0, f4
/* 800FEDFC  EF 60 01 72 */	fmuls f27, f0, f5
/* 800FEE00  C3 C2 93 A4 */	lfs f30, lit_9138(r2)
lbl_800FEE04:
/* 800FEE04  38 7C 1D 08 */	addi r3, r28, 0x1d08
/* 800FEE08  7F A4 EB 78 */	mr r4, r29
/* 800FEE0C  48 16 8F 1D */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800FEE10  7F E3 FB 78 */	mr r3, r31
/* 800FEE14  38 9C 1D 08 */	addi r4, r28, 0x1d08
/* 800FEE18  4B F7 56 89 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 800FEE1C  FF A0 08 90 */	fmr f29, f1
/* 800FEE20  FC 1E E8 00 */	fcmpu cr0, f30, f29
/* 800FEE24  41 82 00 34 */	beq lbl_800FEE58
/* 800FEE28  38 7C 1D 1C */	addi r3, r28, 0x1d1c
/* 800FEE2C  4B F7 6F 51 */	bl dBgS_CheckBGroundPoly__FRC13cBgS_PolyInfo
/* 800FEE30  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FEE34  41 82 00 24 */	beq lbl_800FEE58
/* 800FEE38  C0 02 93 00 */	lfs f0, lit_6895(r2)
/* 800FEE3C  EC 1F 00 28 */	fsubs f0, f31, f0
/* 800FEE40  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 800FEE44  4C 41 13 82 */	cror 2, 1, 2
/* 800FEE48  40 82 00 10 */	bne lbl_800FEE58
/* 800FEE4C  D3 BD 00 04 */	stfs f29, 4(r29)
/* 800FEE50  38 60 00 01 */	li r3, 1
/* 800FEE54  48 00 00 2C */	b lbl_800FEE80
lbl_800FEE58:
/* 800FEE58  C0 1D 00 00 */	lfs f0, 0(r29)
/* 800FEE5C  EC 00 E0 2A */	fadds f0, f0, f28
/* 800FEE60  D0 1D 00 00 */	stfs f0, 0(r29)
/* 800FEE64  C0 1D 00 08 */	lfs f0, 8(r29)
/* 800FEE68  EC 00 D8 2A */	fadds f0, f0, f27
/* 800FEE6C  D0 1D 00 08 */	stfs f0, 8(r29)
/* 800FEE70  3B DE 00 01 */	addi r30, r30, 1
/* 800FEE74  2C 1E 00 03 */	cmpwi r30, 3
/* 800FEE78  41 80 FF 8C */	blt lbl_800FEE04
/* 800FEE7C  38 60 00 00 */	li r3, 0
lbl_800FEE80:
/* 800FEE80  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 800FEE84  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 800FEE88  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 800FEE8C  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 800FEE90  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 800FEE94  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 800FEE98  E3 81 00 38 */	psq_l f28, 56(r1), 0, 0 /* qr0 */
/* 800FEE9C  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 800FEEA0  E3 61 00 28 */	psq_l f27, 40(r1), 0, 0 /* qr0 */
/* 800FEEA4  CB 61 00 20 */	lfd f27, 0x20(r1)
/* 800FEEA8  39 61 00 20 */	addi r11, r1, 0x20
/* 800FEEAC  48 26 33 79 */	bl _restgpr_28
/* 800FEEB0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 800FEEB4  7C 08 03 A6 */	mtlr r0
/* 800FEEB8  38 21 00 70 */	addi r1, r1, 0x70
/* 800FEEBC  4E 80 00 20 */	blr 
