lbl_802FB868:
/* 802FB868  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 802FB86C  7C 08 02 A6 */	mflr r0
/* 802FB870  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 802FB874  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 802FB878  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 802FB87C  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 802FB880  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 802FB884  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 802FB888  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 802FB88C  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 802FB890  F3 81 00 88 */	psq_st f28, 136(r1), 0, 0 /* qr0 */
/* 802FB894  DB 61 00 70 */	stfd f27, 0x70(r1)
/* 802FB898  F3 61 00 78 */	psq_st f27, 120(r1), 0, 0 /* qr0 */
/* 802FB89C  DB 41 00 60 */	stfd f26, 0x60(r1)
/* 802FB8A0  F3 41 00 68 */	psq_st f26, 104(r1), 0, 0 /* qr0 */
/* 802FB8A4  DB 21 00 50 */	stfd f25, 0x50(r1)
/* 802FB8A8  F3 21 00 58 */	psq_st f25, 88(r1), 0, 0 /* qr0 */
/* 802FB8AC  DB 01 00 40 */	stfd f24, 0x40(r1)
/* 802FB8B0  F3 01 00 48 */	psq_st f24, 72(r1), 0, 0 /* qr0 */
/* 802FB8B4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802FB8B8  7C 7F 1B 78 */	mr r31, r3
/* 802FB8BC  FF C0 08 90 */	fmr f30, f1
/* 802FB8C0  FF E0 10 90 */	fmr f31, f2
/* 802FB8C4  EF BE 18 2A */	fadds f29, f30, f3
/* 802FB8C8  EF 9F 20 2A */	fadds f28, f31, f4
/* 802FB8CC  80 63 01 10 */	lwz r3, 0x110(r3)
/* 802FB8D0  80 83 00 20 */	lwz r4, 0x20(r3)
/* 802FB8D4  A0 04 00 02 */	lhz r0, 2(r4)
/* 802FB8D8  C8 22 C8 40 */	lfd f1, lit_1971(r2)
/* 802FB8DC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FB8E0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802FB8E4  3C 60 43 30 */	lis r3, 0x4330
/* 802FB8E8  90 61 00 28 */	stw r3, 0x28(r1)
/* 802FB8EC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 802FB8F0  EC 40 08 28 */	fsubs f2, f0, f1
/* 802FB8F4  A0 04 00 04 */	lhz r0, 4(r4)
/* 802FB8F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FB8FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 802FB900  90 61 00 30 */	stw r3, 0x30(r1)
/* 802FB904  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 802FB908  EC A0 08 28 */	fsubs f5, f0, f1
/* 802FB90C  EC 63 10 24 */	fdivs f3, f3, f2
/* 802FB910  C0 42 C8 54 */	lfs f2, lit_2984(r2)
/* 802FB914  EC 03 10 28 */	fsubs f0, f3, f2
/* 802FB918  FC 00 00 50 */	fneg f0, f0
/* 802FB91C  C0 22 C8 58 */	lfs f1, lit_2985(r2)
/* 802FB920  EF 60 00 72 */	fmuls f27, f0, f1
/* 802FB924  EC 84 28 24 */	fdivs f4, f4, f5
/* 802FB928  EC 04 10 28 */	fsubs f0, f4, f2
/* 802FB92C  FC 00 00 50 */	fneg f0, f0
/* 802FB930  EF 40 00 72 */	fmuls f26, f0, f1
/* 802FB934  EF 3B 18 2A */	fadds f25, f27, f3
/* 802FB938  EF 1A 20 2A */	fadds f24, f26, f4
/* 802FB93C  38 00 FF FF */	li r0, -1
/* 802FB940  90 01 00 18 */	stw r0, 0x18(r1)
/* 802FB944  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802FB948  90 01 00 20 */	stw r0, 0x20(r1)
/* 802FB94C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FB950  88 1F 01 28 */	lbz r0, 0x128(r31)
/* 802FB954  98 01 00 18 */	stb r0, 0x18(r1)
/* 802FB958  88 1F 01 29 */	lbz r0, 0x129(r31)
/* 802FB95C  98 01 00 19 */	stb r0, 0x19(r1)
/* 802FB960  88 1F 01 2A */	lbz r0, 0x12a(r31)
/* 802FB964  98 01 00 1A */	stb r0, 0x1a(r1)
/* 802FB968  88 7F 01 2B */	lbz r3, 0x12b(r31)
/* 802FB96C  98 61 00 1B */	stb r3, 0x1b(r1)
/* 802FB970  88 1F 01 2C */	lbz r0, 0x12c(r31)
/* 802FB974  98 01 00 1C */	stb r0, 0x1c(r1)
/* 802FB978  88 1F 01 2D */	lbz r0, 0x12d(r31)
/* 802FB97C  98 01 00 1D */	stb r0, 0x1d(r1)
/* 802FB980  88 1F 01 2E */	lbz r0, 0x12e(r31)
/* 802FB984  98 01 00 1E */	stb r0, 0x1e(r1)
/* 802FB988  88 DF 01 2F */	lbz r6, 0x12f(r31)
/* 802FB98C  98 C1 00 1F */	stb r6, 0x1f(r1)
/* 802FB990  88 1F 01 30 */	lbz r0, 0x130(r31)
/* 802FB994  98 01 00 20 */	stb r0, 0x20(r1)
/* 802FB998  88 1F 01 31 */	lbz r0, 0x131(r31)
/* 802FB99C  98 01 00 21 */	stb r0, 0x21(r1)
/* 802FB9A0  88 1F 01 32 */	lbz r0, 0x132(r31)
/* 802FB9A4  98 01 00 22 */	stb r0, 0x22(r1)
/* 802FB9A8  88 BF 01 33 */	lbz r5, 0x133(r31)
/* 802FB9AC  98 A1 00 23 */	stb r5, 0x23(r1)
/* 802FB9B0  88 1F 01 34 */	lbz r0, 0x134(r31)
/* 802FB9B4  98 01 00 24 */	stb r0, 0x24(r1)
/* 802FB9B8  88 1F 01 35 */	lbz r0, 0x135(r31)
/* 802FB9BC  98 01 00 25 */	stb r0, 0x25(r1)
/* 802FB9C0  88 1F 01 36 */	lbz r0, 0x136(r31)
/* 802FB9C4  98 01 00 26 */	stb r0, 0x26(r1)
/* 802FB9C8  88 9F 01 37 */	lbz r4, 0x137(r31)
/* 802FB9CC  98 81 00 27 */	stb r4, 0x27(r1)
/* 802FB9D0  88 FF 00 B3 */	lbz r7, 0xb3(r31)
/* 802FB9D4  28 07 00 FF */	cmplwi r7, 0xff
/* 802FB9D8  41 82 00 38 */	beq lbl_802FBA10
/* 802FB9DC  7C 03 39 D6 */	mullw r0, r3, r7
/* 802FB9E0  38 60 00 FF */	li r3, 0xff
/* 802FB9E4  7C 00 1B D6 */	divw r0, r0, r3
/* 802FB9E8  98 01 00 1B */	stb r0, 0x1b(r1)
/* 802FB9EC  7C 06 39 D6 */	mullw r0, r6, r7
/* 802FB9F0  7C 00 1B D6 */	divw r0, r0, r3
/* 802FB9F4  98 01 00 1F */	stb r0, 0x1f(r1)
/* 802FB9F8  7C 05 39 D6 */	mullw r0, r5, r7
/* 802FB9FC  7C 00 1B D6 */	divw r0, r0, r3
/* 802FBA00  98 01 00 23 */	stb r0, 0x23(r1)
/* 802FBA04  7C 04 39 D6 */	mullw r0, r4, r7
/* 802FBA08  7C 00 1B D6 */	divw r0, r0, r3
/* 802FBA0C  98 01 00 27 */	stb r0, 0x27(r1)
lbl_802FBA10:
/* 802FBA10  80 7F 01 10 */	lwz r3, 0x110(r31)
/* 802FBA14  38 80 00 00 */	li r4, 0
/* 802FBA18  4B FE 2E 29 */	bl load__10JUTTextureF11_GXTexMapID
/* 802FBA1C  38 00 FF FF */	li r0, -1
/* 802FBA20  90 01 00 08 */	stw r0, 8(r1)
/* 802FBA24  90 01 00 0C */	stw r0, 0xc(r1)
/* 802FBA28  38 00 00 00 */	li r0, 0
/* 802FBA2C  90 01 00 10 */	stw r0, 0x10(r1)
/* 802FBA30  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FBA34  7F E3 FB 78 */	mr r3, r31
/* 802FBA38  80 9F 01 10 */	lwz r4, 0x110(r31)
/* 802FBA3C  38 A1 00 14 */	addi r5, r1, 0x14
/* 802FBA40  38 C1 00 0C */	addi r6, r1, 0xc
/* 802FBA44  48 00 01 4D */	bl setTevMode__9J2DWindowFP10JUTTextureQ28JUtility6TColorQ28JUtility6TColor
/* 802FBA48  38 60 00 00 */	li r3, 0
/* 802FBA4C  38 80 00 0D */	li r4, 0xd
/* 802FBA50  38 A0 00 01 */	li r5, 1
/* 802FBA54  38 C0 00 04 */	li r6, 4
/* 802FBA58  38 E0 00 00 */	li r7, 0
/* 802FBA5C  48 05 FB 69 */	bl GXSetVtxAttrFmt
/* 802FBA60  38 60 00 00 */	li r3, 0
/* 802FBA64  38 80 00 09 */	li r4, 9
/* 802FBA68  38 A0 00 01 */	li r5, 1
/* 802FBA6C  38 C0 00 04 */	li r6, 4
/* 802FBA70  38 E0 00 00 */	li r7, 0
/* 802FBA74  48 05 FB 51 */	bl GXSetVtxAttrFmt
/* 802FBA78  38 60 00 80 */	li r3, 0x80
/* 802FBA7C  38 80 00 00 */	li r4, 0
/* 802FBA80  38 A0 00 04 */	li r5, 4
/* 802FBA84  48 06 0C E1 */	bl GXBegin
/* 802FBA88  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 802FBA8C  D3 C3 80 00 */	stfs f30, 0x8000(r3)
/* 802FBA90  D3 E3 80 00 */	stfs f31, -0x8000(r3)
/* 802FBA94  C0 02 C8 50 */	lfs f0, lit_2156(r2)
/* 802FBA98  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802FBA9C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 802FBAA0  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802FBAA4  D3 63 80 00 */	stfs f27, -0x8000(r3)
/* 802FBAA8  D3 43 80 00 */	stfs f26, -0x8000(r3)
/* 802FBAAC  D3 A3 80 00 */	stfs f29, -0x8000(r3)
/* 802FBAB0  D3 E3 80 00 */	stfs f31, -0x8000(r3)
/* 802FBAB4  C0 02 C8 50 */	lfs f0, lit_2156(r2)
/* 802FBAB8  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802FBABC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802FBAC0  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802FBAC4  D3 23 80 00 */	stfs f25, -0x8000(r3)
/* 802FBAC8  D3 43 80 00 */	stfs f26, -0x8000(r3)
/* 802FBACC  D3 A3 80 00 */	stfs f29, -0x8000(r3)
/* 802FBAD0  D3 83 80 00 */	stfs f28, -0x8000(r3)
/* 802FBAD4  C0 02 C8 50 */	lfs f0, lit_2156(r2)
/* 802FBAD8  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802FBADC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FBAE0  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802FBAE4  D3 23 80 00 */	stfs f25, -0x8000(r3)
/* 802FBAE8  D3 03 80 00 */	stfs f24, -0x8000(r3)
/* 802FBAEC  D3 C3 80 00 */	stfs f30, -0x8000(r3)
/* 802FBAF0  D3 83 80 00 */	stfs f28, -0x8000(r3)
/* 802FBAF4  C0 02 C8 50 */	lfs f0, lit_2156(r2)
/* 802FBAF8  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802FBAFC  80 01 00 20 */	lwz r0, 0x20(r1)
/* 802FBB00  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802FBB04  D3 63 80 00 */	stfs f27, -0x8000(r3)
/* 802FBB08  D3 03 80 00 */	stfs f24, -0x8000(r3)
/* 802FBB0C  38 60 00 00 */	li r3, 0
/* 802FBB10  38 80 00 0D */	li r4, 0xd
/* 802FBB14  38 A0 00 01 */	li r5, 1
/* 802FBB18  38 C0 00 02 */	li r6, 2
/* 802FBB1C  38 E0 00 0F */	li r7, 0xf
/* 802FBB20  48 05 FA A5 */	bl GXSetVtxAttrFmt
/* 802FBB24  38 60 00 00 */	li r3, 0
/* 802FBB28  38 80 00 09 */	li r4, 9
/* 802FBB2C  38 A0 00 01 */	li r5, 1
/* 802FBB30  38 C0 00 03 */	li r6, 3
/* 802FBB34  38 E0 00 00 */	li r7, 0
/* 802FBB38  48 05 FA 8D */	bl GXSetVtxAttrFmt
/* 802FBB3C  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 802FBB40  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 802FBB44  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 802FBB48  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 802FBB4C  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 802FBB50  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 802FBB54  E3 81 00 88 */	psq_l f28, 136(r1), 0, 0 /* qr0 */
/* 802FBB58  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 802FBB5C  E3 61 00 78 */	psq_l f27, 120(r1), 0, 0 /* qr0 */
/* 802FBB60  CB 61 00 70 */	lfd f27, 0x70(r1)
/* 802FBB64  E3 41 00 68 */	psq_l f26, 104(r1), 0, 0 /* qr0 */
/* 802FBB68  CB 41 00 60 */	lfd f26, 0x60(r1)
/* 802FBB6C  E3 21 00 58 */	psq_l f25, 88(r1), 0, 0 /* qr0 */
/* 802FBB70  CB 21 00 50 */	lfd f25, 0x50(r1)
/* 802FBB74  E3 01 00 48 */	psq_l f24, 72(r1), 0, 0 /* qr0 */
/* 802FBB78  CB 01 00 40 */	lfd f24, 0x40(r1)
/* 802FBB7C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802FBB80  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 802FBB84  7C 08 03 A6 */	mtlr r0
/* 802FBB88  38 21 00 C0 */	addi r1, r1, 0xc0
/* 802FBB8C  4E 80 00 20 */	blr 
