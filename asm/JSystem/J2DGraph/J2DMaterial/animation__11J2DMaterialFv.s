lbl_802EAC78:
/* 802EAC78  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 802EAC7C  7C 08 02 A6 */	mflr r0
/* 802EAC80  90 01 01 14 */	stw r0, 0x114(r1)
/* 802EAC84  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 802EAC88  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 802EAC8C  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 802EAC90  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, 0 /* qr0 */
/* 802EAC94  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 802EAC98  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, 0 /* qr0 */
/* 802EAC9C  DB 81 00 D0 */	stfd f28, 0xd0(r1)
/* 802EACA0  F3 81 00 D8 */	psq_st f28, 216(r1), 0, 0 /* qr0 */
/* 802EACA4  DB 61 00 C0 */	stfd f27, 0xc0(r1)
/* 802EACA8  F3 61 00 C8 */	psq_st f27, 200(r1), 0, 0 /* qr0 */
/* 802EACAC  39 61 00 C0 */	addi r11, r1, 0xc0
/* 802EACB0  48 07 75 21 */	bl _savegpr_26
/* 802EACB4  7C 7F 1B 78 */	mr r31, r3
/* 802EACB8  80 83 00 84 */	lwz r4, 0x84(r3)
/* 802EACBC  28 04 00 00 */	cmplwi r4, 0
/* 802EACC0  41 82 03 F4 */	beq lbl_802EB0B4
/* 802EACC4  80 64 00 00 */	lwz r3, 0(r4)
/* 802EACC8  28 03 00 00 */	cmplwi r3, 0
/* 802EACCC  41 82 00 74 */	beq lbl_802EAD40
/* 802EACD0  A0 84 00 10 */	lhz r4, 0x10(r4)
/* 802EACD4  28 04 FF FF */	cmplwi r4, 0xffff
/* 802EACD8  41 82 00 68 */	beq lbl_802EAD40
/* 802EACDC  38 A1 00 20 */	addi r5, r1, 0x20
/* 802EACE0  81 83 00 00 */	lwz r12, 0(r3)
/* 802EACE4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802EACE8  7D 89 03 A6 */	mtctr r12
/* 802EACEC  4E 80 04 21 */	bctrl 
/* 802EACF0  80 01 00 20 */	lwz r0, 0x20(r1)
/* 802EACF4  90 01 00 0C */	stw r0, 0xc(r1)
/* 802EACF8  88 01 00 0C */	lbz r0, 0xc(r1)
/* 802EACFC  98 01 00 14 */	stb r0, 0x14(r1)
/* 802EAD00  88 01 00 0D */	lbz r0, 0xd(r1)
/* 802EAD04  98 01 00 15 */	stb r0, 0x15(r1)
/* 802EAD08  88 01 00 0E */	lbz r0, 0xe(r1)
/* 802EAD0C  98 01 00 16 */	stb r0, 0x16(r1)
/* 802EAD10  88 01 00 0F */	lbz r0, 0xf(r1)
/* 802EAD14  98 01 00 17 */	stb r0, 0x17(r1)
/* 802EAD18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EAD1C  90 01 00 18 */	stw r0, 0x18(r1)
/* 802EAD20  88 01 00 18 */	lbz r0, 0x18(r1)
/* 802EAD24  98 1F 00 10 */	stb r0, 0x10(r31)
/* 802EAD28  88 01 00 19 */	lbz r0, 0x19(r1)
/* 802EAD2C  98 1F 00 11 */	stb r0, 0x11(r31)
/* 802EAD30  88 01 00 1A */	lbz r0, 0x1a(r1)
/* 802EAD34  98 1F 00 12 */	stb r0, 0x12(r31)
/* 802EAD38  88 01 00 1B */	lbz r0, 0x1b(r1)
/* 802EAD3C  98 1F 00 13 */	stb r0, 0x13(r31)
lbl_802EAD40:
/* 802EAD40  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 802EAD44  80 03 00 04 */	lwz r0, 4(r3)
/* 802EAD48  28 00 00 00 */	cmplwi r0, 0
/* 802EAD4C  41 82 01 38 */	beq lbl_802EAE84
/* 802EAD50  3B 80 00 00 */	li r28, 0
/* 802EAD54  3B 60 00 00 */	li r27, 0
/* 802EAD58  3C 60 80 3A */	lis r3, j2dDefaultTexMtxInfo@ha
/* 802EAD5C  3B C3 1B A0 */	addi r30, r3, j2dDefaultTexMtxInfo@l
/* 802EAD60  48 00 01 18 */	b lbl_802EAE78
lbl_802EAD64:
/* 802EAD64  80 BF 00 84 */	lwz r5, 0x84(r31)
/* 802EAD68  57 9D 06 3E */	clrlwi r29, r28, 0x18
/* 802EAD6C  57 83 0D FC */	rlwinm r3, r28, 1, 0x17, 0x1e
/* 802EAD70  38 03 00 12 */	addi r0, r3, 0x12
/* 802EAD74  7C 85 02 2E */	lhzx r4, r5, r0
/* 802EAD78  28 04 FF FF */	cmplwi r4, 0xffff
/* 802EAD7C  41 82 00 F4 */	beq lbl_802EAE70
/* 802EAD80  80 65 00 04 */	lwz r3, 4(r5)
/* 802EAD84  C0 23 00 08 */	lfs f1, 8(r3)
/* 802EAD88  38 A1 00 34 */	addi r5, r1, 0x34
/* 802EAD8C  48 02 0C 65 */	bl calcTransform__19J2DAnmTextureSRTKeyCFfUsP17J3DTextureSRTInfo
/* 802EAD90  C3 E1 00 34 */	lfs f31, 0x34(r1)
/* 802EAD94  C3 C1 00 38 */	lfs f30, 0x38(r1)
/* 802EAD98  C0 42 C7 B0 */	lfs f2, lit_1943(r2)
/* 802EAD9C  A8 01 00 3C */	lha r0, 0x3c(r1)
/* 802EADA0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 802EADA4  C8 22 C7 B8 */	lfd f1, lit_1946(r2)
/* 802EADA8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 802EADAC  3C 00 43 30 */	lis r0, 0x4330
/* 802EADB0  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 802EADB4  C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 802EADB8  EC 00 08 28 */	fsubs f0, f0, f1
/* 802EADBC  EC 22 00 32 */	fmuls f1, f2, f0
/* 802EADC0  C0 02 C7 B4 */	lfs f0, lit_1944(r2)
/* 802EADC4  EF A1 00 24 */	fdivs f29, f1, f0
/* 802EADC8  C3 81 00 40 */	lfs f28, 0x40(r1)
/* 802EADCC  C3 61 00 44 */	lfs f27, 0x44(r1)
/* 802EADD0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 802EADD4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 802EADD8  C0 1E 00 08 */	lfs f0, 8(r30)
/* 802EADDC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 802EADE0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 802EADE4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 802EADE8  3C 60 80 3A */	lis r3, j2dDefaultTexMtxInfo@ha
/* 802EADEC  88 03 1B A0 */	lbz r0, j2dDefaultTexMtxInfo@l(r3)
/* 802EADF0  98 01 00 48 */	stb r0, 0x48(r1)
/* 802EADF4  88 1E 00 01 */	lbz r0, 1(r30)
/* 802EADF8  98 01 00 49 */	stb r0, 0x49(r1)
/* 802EADFC  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 802EAE00  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 802EAE04  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 802EAE08  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 802EAE0C  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 802EAE10  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 802EAE14  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 802EAE18  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 802EAE1C  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 802EAE20  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 802EAE24  38 7F 00 28 */	addi r3, r31, 0x28
/* 802EAE28  7F A4 EB 78 */	mr r4, r29
/* 802EAE2C  38 A1 00 48 */	addi r5, r1, 0x48
/* 802EAE30  48 00 09 B1 */	bl getTexMtx__14J2DTexGenBlockFUlR9J2DTexMtx
/* 802EAE34  D3 E1 00 58 */	stfs f31, 0x58(r1)
/* 802EAE38  D3 C1 00 5C */	stfs f30, 0x5c(r1)
/* 802EAE3C  D3 A1 00 60 */	stfs f29, 0x60(r1)
/* 802EAE40  D3 81 00 64 */	stfs f28, 0x64(r1)
/* 802EAE44  D3 61 00 68 */	stfs f27, 0x68(r1)
/* 802EAE48  38 7F 00 28 */	addi r3, r31, 0x28
/* 802EAE4C  7F A4 EB 78 */	mr r4, r29
/* 802EAE50  38 A1 00 48 */	addi r5, r1, 0x48
/* 802EAE54  48 00 08 51 */	bl setTexMtx__14J2DTexGenBlockFUlR9J2DTexMtx
/* 802EAE58  38 1F 00 28 */	addi r0, r31, 0x28
/* 802EAE5C  57 A3 10 3A */	slwi r3, r29, 2
/* 802EAE60  38 63 00 04 */	addi r3, r3, 4
/* 802EAE64  7C 60 1A 14 */	add r3, r0, r3
/* 802EAE68  38 1B 00 1E */	addi r0, r27, 0x1e
/* 802EAE6C  98 03 00 02 */	stb r0, 2(r3)
lbl_802EAE70:
/* 802EAE70  3B 9C 00 01 */	addi r28, r28, 1
/* 802EAE74  3B 7B 00 03 */	addi r27, r27, 3
lbl_802EAE78:
/* 802EAE78  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 802EAE7C  28 00 00 08 */	cmplwi r0, 8
/* 802EAE80  41 80 FE E4 */	blt lbl_802EAD64
lbl_802EAE84:
/* 802EAE84  80 1F 00 70 */	lwz r0, 0x70(r31)
/* 802EAE88  28 00 00 00 */	cmplwi r0, 0
/* 802EAE8C  41 82 01 20 */	beq lbl_802EAFAC
/* 802EAE90  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 802EAE94  80 03 00 08 */	lwz r0, 8(r3)
/* 802EAE98  28 00 00 00 */	cmplwi r0, 0
/* 802EAE9C  41 82 01 10 */	beq lbl_802EAFAC
/* 802EAEA0  3B 80 00 00 */	li r28, 0
/* 802EAEA4  48 00 00 FC */	b lbl_802EAFA0
lbl_802EAEA8:
/* 802EAEA8  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 802EAEAC  57 9B 06 3E */	clrlwi r27, r28, 0x18
/* 802EAEB0  57 9E 0D FC */	rlwinm r30, r28, 1, 0x17, 0x1e
/* 802EAEB4  38 1E 00 22 */	addi r0, r30, 0x22
/* 802EAEB8  7C 03 02 2E */	lhzx r0, r3, r0
/* 802EAEBC  28 00 FF FF */	cmplwi r0, 0xffff
/* 802EAEC0  41 82 00 DC */	beq lbl_802EAF9C
/* 802EAEC4  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 802EAEC8  7F 64 DB 78 */	mr r4, r27
/* 802EAECC  81 83 00 00 */	lwz r12, 0(r3)
/* 802EAED0  81 8C 00 A0 */	lwz r12, 0xa0(r12)
/* 802EAED4  7D 89 03 A6 */	mtctr r12
/* 802EAED8  4E 80 04 21 */	bctrl 
/* 802EAEDC  7C 7D 1B 79 */	or. r29, r3, r3
/* 802EAEE0  41 82 00 BC */	beq lbl_802EAF9C
/* 802EAEE4  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 802EAEE8  38 1E 00 22 */	addi r0, r30, 0x22
/* 802EAEEC  7F 43 02 2E */	lhzx r26, r3, r0
/* 802EAEF0  80 63 00 08 */	lwz r3, 8(r3)
/* 802EAEF4  7F 44 D3 78 */	mr r4, r26
/* 802EAEF8  38 A1 00 08 */	addi r5, r1, 8
/* 802EAEFC  48 02 0F ED */	bl getTexNo__16J2DAnmTexPatternCFUsPUs
/* 802EAF00  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 802EAF04  7F 64 DB 78 */	mr r4, r27
/* 802EAF08  A0 A1 00 08 */	lhz r5, 8(r1)
/* 802EAF0C  81 83 00 00 */	lwz r12, 0(r3)
/* 802EAF10  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802EAF14  7D 89 03 A6 */	mtctr r12
/* 802EAF18  4E 80 04 21 */	bctrl 
/* 802EAF1C  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 802EAF20  80 63 00 08 */	lwz r3, 8(r3)
/* 802EAF24  7F 44 D3 78 */	mr r4, r26
/* 802EAF28  48 02 10 75 */	bl getResTIMG__16J2DAnmTexPatternCFUs
/* 802EAF2C  7C 7E 1B 78 */	mr r30, r3
/* 802EAF30  80 1D 00 20 */	lwz r0, 0x20(r29)
/* 802EAF34  7C 00 F0 40 */	cmplw r0, r30
/* 802EAF38  41 82 00 64 */	beq lbl_802EAF9C
/* 802EAF3C  38 A0 00 00 */	li r5, 0
/* 802EAF40  38 C0 00 00 */	li r6, 0
/* 802EAF44  88 1E 00 08 */	lbz r0, 8(r30)
/* 802EAF48  28 00 00 00 */	cmplwi r0, 0
/* 802EAF4C  41 82 00 44 */	beq lbl_802EAF90
/* 802EAF50  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 802EAF54  80 63 00 08 */	lwz r3, 8(r3)
/* 802EAF58  7F 44 D3 78 */	mr r4, r26
/* 802EAF5C  48 02 10 95 */	bl getPalette__16J2DAnmTexPatternCFUs
/* 802EAF60  7C 65 1B 78 */	mr r5, r3
/* 802EAF64  A0 03 00 14 */	lhz r0, 0x14(r3)
/* 802EAF68  28 00 01 00 */	cmplwi r0, 0x100
/* 802EAF6C  40 81 00 20 */	ble lbl_802EAF8C
/* 802EAF70  57 80 F0 02 */	slwi r0, r28, 0x1e
/* 802EAF74  57 63 0F FE */	srwi r3, r27, 0x1f
/* 802EAF78  7C 03 00 50 */	subf r0, r3, r0
/* 802EAF7C  54 00 10 3E */	rotlwi r0, r0, 2
/* 802EAF80  7C 60 1A 14 */	add r3, r0, r3
/* 802EAF84  38 C3 00 10 */	addi r6, r3, 0x10
/* 802EAF88  48 00 00 08 */	b lbl_802EAF90
lbl_802EAF8C:
/* 802EAF8C  7F 66 DB 78 */	mr r6, r27
lbl_802EAF90:
/* 802EAF90  7F A3 EB 78 */	mr r3, r29
/* 802EAF94  7F C4 F3 78 */	mr r4, r30
/* 802EAF98  4B FF 34 E9 */	bl storeTIMG__10JUTTextureFPC7ResTIMGP10JUTPalette7_GXTlut
lbl_802EAF9C:
/* 802EAF9C  3B 9C 00 01 */	addi r28, r28, 1
lbl_802EAFA0:
/* 802EAFA0  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 802EAFA4  28 00 00 08 */	cmplwi r0, 8
/* 802EAFA8  41 80 FF 00 */	blt lbl_802EAEA8
lbl_802EAFAC:
/* 802EAFAC  80 1F 00 70 */	lwz r0, 0x70(r31)
/* 802EAFB0  28 00 00 00 */	cmplwi r0, 0
/* 802EAFB4  41 82 01 00 */	beq lbl_802EB0B4
/* 802EAFB8  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 802EAFBC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 802EAFC0  28 00 00 00 */	cmplwi r0, 0
/* 802EAFC4  41 82 00 F0 */	beq lbl_802EB0B4
/* 802EAFC8  3B 40 00 00 */	li r26, 0
/* 802EAFCC  48 00 00 6C */	b lbl_802EB038
lbl_802EAFD0:
/* 802EAFD0  80 BF 00 84 */	lwz r5, 0x84(r31)
/* 802EAFD4  57 5B 06 3E */	clrlwi r27, r26, 0x18
/* 802EAFD8  57 43 0D FC */	rlwinm r3, r26, 1, 0x17, 0x1e
/* 802EAFDC  38 03 00 32 */	addi r0, r3, 0x32
/* 802EAFE0  7C 85 02 2E */	lhzx r4, r5, r0
/* 802EAFE4  28 04 FF FF */	cmplwi r4, 0xffff
/* 802EAFE8  41 82 00 4C */	beq lbl_802EB034
/* 802EAFEC  80 65 00 0C */	lwz r3, 0xc(r5)
/* 802EAFF0  38 A1 00 2C */	addi r5, r1, 0x2c
/* 802EAFF4  48 02 10 FD */	bl getTevColorReg__15J2DAnmTevRegKeyCFUsP11_GXColorS10
/* 802EAFF8  A8 01 00 2C */	lha r0, 0x2c(r1)
/* 802EAFFC  B0 01 00 24 */	sth r0, 0x24(r1)
/* 802EB000  A8 01 00 2E */	lha r0, 0x2e(r1)
/* 802EB004  B0 01 00 26 */	sth r0, 0x26(r1)
/* 802EB008  A8 01 00 30 */	lha r0, 0x30(r1)
/* 802EB00C  B0 01 00 28 */	sth r0, 0x28(r1)
/* 802EB010  A8 01 00 32 */	lha r0, 0x32(r1)
/* 802EB014  B0 01 00 2A */	sth r0, 0x2a(r1)
/* 802EB018  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 802EB01C  7F 64 DB 78 */	mr r4, r27
/* 802EB020  38 A1 00 24 */	addi r5, r1, 0x24
/* 802EB024  81 83 00 00 */	lwz r12, 0(r3)
/* 802EB028  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 802EB02C  7D 89 03 A6 */	mtctr r12
/* 802EB030  4E 80 04 21 */	bctrl 
lbl_802EB034:
/* 802EB034  3B 5A 00 01 */	addi r26, r26, 1
lbl_802EB038:
/* 802EB038  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 802EB03C  28 00 00 04 */	cmplwi r0, 4
/* 802EB040  41 80 FF 90 */	blt lbl_802EAFD0
/* 802EB044  3B 40 00 00 */	li r26, 0
/* 802EB048  48 00 00 60 */	b lbl_802EB0A8
lbl_802EB04C:
/* 802EB04C  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 802EB050  57 5B 06 3E */	clrlwi r27, r26, 0x18
/* 802EB054  57 43 0D FC */	rlwinm r3, r26, 1, 0x17, 0x1e
/* 802EB058  38 03 00 3A */	addi r0, r3, 0x3a
/* 802EB05C  7C 84 02 2E */	lhzx r4, r4, r0
/* 802EB060  28 04 FF FF */	cmplwi r4, 0xffff
/* 802EB064  41 82 00 40 */	beq lbl_802EB0A4
/* 802EB068  38 00 FF FF */	li r0, -1
/* 802EB06C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802EB070  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 802EB074  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802EB078  38 A1 00 1C */	addi r5, r1, 0x1c
/* 802EB07C  48 02 13 39 */	bl getTevKonstReg__15J2DAnmTevRegKeyCFUsP8_GXColor
/* 802EB080  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802EB084  90 01 00 10 */	stw r0, 0x10(r1)
/* 802EB088  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 802EB08C  7F 64 DB 78 */	mr r4, r27
/* 802EB090  38 A1 00 10 */	addi r5, r1, 0x10
/* 802EB094  81 83 00 00 */	lwz r12, 0(r3)
/* 802EB098  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802EB09C  7D 89 03 A6 */	mtctr r12
/* 802EB0A0  4E 80 04 21 */	bctrl 
lbl_802EB0A4:
/* 802EB0A4  3B 5A 00 01 */	addi r26, r26, 1
lbl_802EB0A8:
/* 802EB0A8  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 802EB0AC  28 00 00 04 */	cmplwi r0, 4
/* 802EB0B0  41 80 FF 9C */	blt lbl_802EB04C
lbl_802EB0B4:
/* 802EB0B4  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 802EB0B8  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 802EB0BC  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, 0 /* qr0 */
/* 802EB0C0  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 802EB0C4  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, 0 /* qr0 */
/* 802EB0C8  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 802EB0CC  E3 81 00 D8 */	psq_l f28, 216(r1), 0, 0 /* qr0 */
/* 802EB0D0  CB 81 00 D0 */	lfd f28, 0xd0(r1)
/* 802EB0D4  E3 61 00 C8 */	psq_l f27, 200(r1), 0, 0 /* qr0 */
/* 802EB0D8  CB 61 00 C0 */	lfd f27, 0xc0(r1)
/* 802EB0DC  39 61 00 C0 */	addi r11, r1, 0xc0
/* 802EB0E0  48 07 71 3D */	bl _restgpr_26
/* 802EB0E4  80 01 01 14 */	lwz r0, 0x114(r1)
/* 802EB0E8  7C 08 03 A6 */	mtlr r0
/* 802EB0EC  38 21 01 10 */	addi r1, r1, 0x110
/* 802EB0F0  4E 80 00 20 */	blr 
