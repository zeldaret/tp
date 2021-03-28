lbl_802FAA5C:
/* 802FAA5C  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 802FAA60  7C 08 02 A6 */	mflr r0
/* 802FAA64  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 802FAA68  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 802FAA6C  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 802FAA70  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 802FAA74  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 802FAA78  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 802FAA7C  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 802FAA80  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 802FAA84  F3 81 00 88 */	psq_st f28, 136(r1), 0, 0 /* qr0 */
/* 802FAA88  DB 61 00 70 */	stfd f27, 0x70(r1)
/* 802FAA8C  F3 61 00 78 */	psq_st f27, 120(r1), 0, 0 /* qr0 */
/* 802FAA90  DB 41 00 60 */	stfd f26, 0x60(r1)
/* 802FAA94  F3 41 00 68 */	psq_st f26, 104(r1), 0, 0 /* qr0 */
/* 802FAA98  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 802FAA9C  93 C1 00 58 */	stw r30, 0x58(r1)
/* 802FAAA0  7C 7F 1B 78 */	mr r31, r3
/* 802FAAA4  7C 9E 23 78 */	mr r30, r4
/* 802FAAA8  C0 05 00 00 */	lfs f0, 0(r5)
/* 802FAAAC  D0 01 00 08 */	stfs f0, 8(r1)
/* 802FAAB0  C0 A5 00 04 */	lfs f5, 4(r5)
/* 802FAAB4  D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 802FAAB8  C0 85 00 08 */	lfs f4, 8(r5)
/* 802FAABC  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 802FAAC0  C0 65 00 0C */	lfs f3, 0xc(r5)
/* 802FAAC4  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 802FAAC8  C0 44 00 00 */	lfs f2, 0(r4)
/* 802FAACC  EC 00 10 2A */	fadds f0, f0, f2
/* 802FAAD0  D0 01 00 08 */	stfs f0, 8(r1)
/* 802FAAD4  C0 24 00 04 */	lfs f1, 4(r4)
/* 802FAAD8  EC 05 08 2A */	fadds f0, f5, f1
/* 802FAADC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802FAAE0  EC 04 10 2A */	fadds f0, f4, f2
/* 802FAAE4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802FAAE8  EC 03 08 2A */	fadds f0, f3, f1
/* 802FAAEC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802FAAF0  38 81 00 08 */	addi r4, r1, 8
/* 802FAAF4  81 83 00 00 */	lwz r12, 0(r3)
/* 802FAAF8  81 8C 00 C8 */	lwz r12, 0xc8(r12)
/* 802FAAFC  7D 89 03 A6 */	mtctr r12
/* 802FAB00  4E 80 04 21 */	bctrl 
/* 802FAB04  48 06 0A 89 */	bl GXClearVtxDesc
/* 802FAB08  38 60 00 09 */	li r3, 9
/* 802FAB0C  38 80 00 01 */	li r4, 1
/* 802FAB10  48 06 03 A9 */	bl GXSetVtxDesc
/* 802FAB14  38 60 00 0B */	li r3, 0xb
/* 802FAB18  38 80 00 01 */	li r4, 1
/* 802FAB1C  48 06 03 9D */	bl GXSetVtxDesc
/* 802FAB20  38 60 00 0D */	li r3, 0xd
/* 802FAB24  38 80 00 01 */	li r4, 1
/* 802FAB28  48 06 03 91 */	bl GXSetVtxDesc
/* 802FAB2C  38 60 00 01 */	li r3, 1
/* 802FAB30  48 06 12 CD */	bl GXSetNumTexGens
/* 802FAB34  80 9F 01 00 */	lwz r4, 0x100(r31)
/* 802FAB38  28 04 00 00 */	cmplwi r4, 0
/* 802FAB3C  41 82 03 18 */	beq lbl_802FAE54
/* 802FAB40  80 1F 01 04 */	lwz r0, 0x104(r31)
/* 802FAB44  28 00 00 00 */	cmplwi r0, 0
/* 802FAB48  41 82 03 0C */	beq lbl_802FAE54
/* 802FAB4C  80 1F 01 08 */	lwz r0, 0x108(r31)
/* 802FAB50  28 00 00 00 */	cmplwi r0, 0
/* 802FAB54  41 82 03 00 */	beq lbl_802FAE54
/* 802FAB58  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 802FAB5C  28 03 00 00 */	cmplwi r3, 0
/* 802FAB60  41 82 02 F4 */	beq lbl_802FAE54
/* 802FAB64  C3 FE 00 00 */	lfs f31, 0(r30)
/* 802FAB68  C3 DE 00 04 */	lfs f30, 4(r30)
/* 802FAB6C  80 A3 00 20 */	lwz r5, 0x20(r3)
/* 802FAB70  A0 05 00 02 */	lhz r0, 2(r5)
/* 802FAB74  C0 3E 00 08 */	lfs f1, 8(r30)
/* 802FAB78  C8 42 C8 40 */	lfd f2, lit_1971(r2)
/* 802FAB7C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FAB80  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802FAB84  3C 60 43 30 */	lis r3, 0x4330
/* 802FAB88  90 61 00 18 */	stw r3, 0x18(r1)
/* 802FAB8C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802FAB90  EC 00 10 28 */	fsubs f0, f0, f2
/* 802FAB94  EF A1 00 28 */	fsubs f29, f1, f0
/* 802FAB98  A0 05 00 04 */	lhz r0, 4(r5)
/* 802FAB9C  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 802FABA0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FABA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FABA8  90 61 00 20 */	stw r3, 0x20(r1)
/* 802FABAC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802FABB0  EC 00 10 28 */	fsubs f0, f0, f2
/* 802FABB4  EF 81 00 28 */	fsubs f28, f1, f0
/* 802FABB8  80 A4 00 20 */	lwz r5, 0x20(r4)
/* 802FABBC  A0 05 00 02 */	lhz r0, 2(r5)
/* 802FABC0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FABC4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802FABC8  90 61 00 28 */	stw r3, 0x28(r1)
/* 802FABCC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 802FABD0  EC 00 10 28 */	fsubs f0, f0, f2
/* 802FABD4  EF 7F 00 2A */	fadds f27, f31, f0
/* 802FABD8  A0 05 00 04 */	lhz r0, 4(r5)
/* 802FABDC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FABE0  90 01 00 34 */	stw r0, 0x34(r1)
/* 802FABE4  90 61 00 30 */	stw r3, 0x30(r1)
/* 802FABE8  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 802FABEC  EC 00 10 28 */	fsubs f0, f0, f2
/* 802FABF0  EF 5E 00 2A */	fadds f26, f30, f0
/* 802FABF4  88 1F 01 44 */	lbz r0, 0x144(r31)
/* 802FABF8  7F E3 FB 78 */	mr r3, r31
/* 802FABFC  FC 20 F8 90 */	fmr f1, f31
/* 802FAC00  FC 40 F0 90 */	fmr f2, f30
/* 802FAC04  54 05 CF FE */	rlwinm r5, r0, 0x19, 0x1f, 0x1f
/* 802FAC08  54 06 D7 FE */	rlwinm r6, r0, 0x1a, 0x1f, 0x1f
/* 802FAC0C  38 E0 00 01 */	li r7, 1
/* 802FAC10  48 00 0B B9 */	bl drawFrameTexture__9J2DWindowFP10JUTTextureffbbb
/* 802FAC14  88 1F 01 45 */	lbz r0, 0x145(r31)
/* 802FAC18  54 07 07 FE */	clrlwi r7, r0, 0x1f
/* 802FAC1C  88 1F 01 44 */	lbz r0, 0x144(r31)
/* 802FAC20  7F E3 FB 78 */	mr r3, r31
/* 802FAC24  80 9F 01 04 */	lwz r4, 0x104(r31)
/* 802FAC28  FC 20 E8 90 */	fmr f1, f29
/* 802FAC2C  FC 40 F0 90 */	fmr f2, f30
/* 802FAC30  54 05 DF FE */	rlwinm r5, r0, 0x1b, 0x1f, 0x1f
/* 802FAC34  54 06 E7 FE */	rlwinm r6, r0, 0x1c, 0x1f, 0x1f
/* 802FAC38  48 00 0B 91 */	bl drawFrameTexture__9J2DWindowFP10JUTTextureffbbb
/* 802FAC3C  88 9F 01 44 */	lbz r4, 0x144(r31)
/* 802FAC40  54 80 DF FE */	rlwinm r0, r4, 0x1b, 0x1f, 0x1f
/* 802FAC44  7C 00 00 D0 */	neg r0, r0
/* 802FAC48  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 802FAC4C  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 802FAC50  7C 65 00 38 */	and r5, r3, r0
/* 802FAC54  54 80 E7 FE */	rlwinm r0, r4, 0x1c, 0x1f, 0x1f
/* 802FAC58  7C 00 00 D0 */	neg r0, r0
/* 802FAC5C  7C 66 00 78 */	andc r6, r3, r0
/* 802FAC60  68 C0 80 00 */	xori r0, r6, 0x8000
/* 802FAC64  54 08 04 3E */	clrlwi r8, r0, 0x10
/* 802FAC68  80 9F 01 04 */	lwz r4, 0x104(r31)
/* 802FAC6C  80 64 00 20 */	lwz r3, 0x20(r4)
/* 802FAC70  A0 03 00 04 */	lhz r0, 4(r3)
/* 802FAC74  7F E3 FB 78 */	mr r3, r31
/* 802FAC78  FC 20 D8 90 */	fmr f1, f27
/* 802FAC7C  FC 40 F0 90 */	fmr f2, f30
/* 802FAC80  EF DD D8 28 */	fsubs f30, f29, f27
/* 802FAC84  FC 60 F0 90 */	fmr f3, f30
/* 802FAC88  C8 82 C8 40 */	lfd f4, lit_1971(r2)
/* 802FAC8C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FAC90  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802FAC94  3C 00 43 30 */	lis r0, 0x4330
/* 802FAC98  90 01 00 38 */	stw r0, 0x38(r1)
/* 802FAC9C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802FACA0  EC 80 20 28 */	fsubs f4, f0, f4
/* 802FACA4  7C A7 2B 78 */	mr r7, r5
/* 802FACA8  39 20 00 00 */	li r9, 0
/* 802FACAC  48 00 09 89 */	bl drawFrameTexture__9J2DWindowFP10JUTTextureffffUsUsUsUsb
/* 802FACB0  88 1F 01 45 */	lbz r0, 0x145(r31)
/* 802FACB4  54 07 FF FE */	rlwinm r7, r0, 0x1f, 0x1f, 0x1f
/* 802FACB8  88 1F 01 44 */	lbz r0, 0x144(r31)
/* 802FACBC  7F E3 FB 78 */	mr r3, r31
/* 802FACC0  80 9F 01 0C */	lwz r4, 0x10c(r31)
/* 802FACC4  FC 20 E8 90 */	fmr f1, f29
/* 802FACC8  FC 40 E0 90 */	fmr f2, f28
/* 802FACCC  54 05 FF FE */	rlwinm r5, r0, 0x1f, 0x1f, 0x1f
/* 802FACD0  54 06 07 FE */	clrlwi r6, r0, 0x1f
/* 802FACD4  48 00 0A F5 */	bl drawFrameTexture__9J2DWindowFP10JUTTextureffbbb
/* 802FACD8  88 9F 01 44 */	lbz r4, 0x144(r31)
/* 802FACDC  54 80 FF FE */	rlwinm r0, r4, 0x1f, 0x1f, 0x1f
/* 802FACE0  7C 00 00 D0 */	neg r0, r0
/* 802FACE4  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 802FACE8  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 802FACEC  7C 65 00 38 */	and r5, r3, r0
/* 802FACF0  54 80 07 FE */	clrlwi r0, r4, 0x1f
/* 802FACF4  7C 00 00 D0 */	neg r0, r0
/* 802FACF8  7C 66 00 78 */	andc r6, r3, r0
/* 802FACFC  68 C0 80 00 */	xori r0, r6, 0x8000
/* 802FAD00  54 08 04 3E */	clrlwi r8, r0, 0x10
/* 802FAD04  80 9F 01 0C */	lwz r4, 0x10c(r31)
/* 802FAD08  80 64 00 20 */	lwz r3, 0x20(r4)
/* 802FAD0C  A0 03 00 04 */	lhz r0, 4(r3)
/* 802FAD10  7F E3 FB 78 */	mr r3, r31
/* 802FAD14  FC 20 D8 90 */	fmr f1, f27
/* 802FAD18  FC 40 E0 90 */	fmr f2, f28
/* 802FAD1C  FC 60 F0 90 */	fmr f3, f30
/* 802FAD20  C8 82 C8 40 */	lfd f4, lit_1971(r2)
/* 802FAD24  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FAD28  90 01 00 44 */	stw r0, 0x44(r1)
/* 802FAD2C  3C 00 43 30 */	lis r0, 0x4330
/* 802FAD30  90 01 00 40 */	stw r0, 0x40(r1)
/* 802FAD34  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 802FAD38  EC 80 20 28 */	fsubs f4, f0, f4
/* 802FAD3C  7C A7 2B 78 */	mr r7, r5
/* 802FAD40  39 20 00 00 */	li r9, 0
/* 802FAD44  48 00 08 F1 */	bl drawFrameTexture__9J2DWindowFP10JUTTextureffffUsUsUsUsb
/* 802FAD48  88 9F 01 44 */	lbz r4, 0x144(r31)
/* 802FAD4C  54 80 FF FE */	rlwinm r0, r4, 0x1f, 0x1f, 0x1f
/* 802FAD50  7C 00 00 D0 */	neg r0, r0
/* 802FAD54  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 802FAD58  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 802FAD5C  7C 65 00 78 */	andc r5, r3, r0
/* 802FAD60  68 A0 80 00 */	xori r0, r5, 0x8000
/* 802FAD64  54 07 04 3E */	clrlwi r7, r0, 0x10
/* 802FAD68  54 80 07 FE */	clrlwi r0, r4, 0x1f
/* 802FAD6C  7C 00 00 D0 */	neg r0, r0
/* 802FAD70  7C 66 00 38 */	and r6, r3, r0
/* 802FAD74  80 9F 01 0C */	lwz r4, 0x10c(r31)
/* 802FAD78  80 64 00 20 */	lwz r3, 0x20(r4)
/* 802FAD7C  A0 03 00 02 */	lhz r0, 2(r3)
/* 802FAD80  7F E3 FB 78 */	mr r3, r31
/* 802FAD84  FC 20 E8 90 */	fmr f1, f29
/* 802FAD88  FC 40 D0 90 */	fmr f2, f26
/* 802FAD8C  C8 62 C8 40 */	lfd f3, lit_1971(r2)
/* 802FAD90  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FAD94  90 01 00 4C */	stw r0, 0x4c(r1)
/* 802FAD98  3C 00 43 30 */	lis r0, 0x4330
/* 802FAD9C  90 01 00 48 */	stw r0, 0x48(r1)
/* 802FADA0  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 802FADA4  EC 60 18 28 */	fsubs f3, f0, f3
/* 802FADA8  EF DC D0 28 */	fsubs f30, f28, f26
/* 802FADAC  FC 80 F0 90 */	fmr f4, f30
/* 802FADB0  7C C8 33 78 */	mr r8, r6
/* 802FADB4  39 20 00 00 */	li r9, 0
/* 802FADB8  48 00 08 7D */	bl drawFrameTexture__9J2DWindowFP10JUTTextureffffUsUsUsUsb
/* 802FADBC  88 1F 01 45 */	lbz r0, 0x145(r31)
/* 802FADC0  54 07 F7 FE */	rlwinm r7, r0, 0x1e, 0x1f, 0x1f
/* 802FADC4  88 1F 01 44 */	lbz r0, 0x144(r31)
/* 802FADC8  7F E3 FB 78 */	mr r3, r31
/* 802FADCC  80 9F 01 08 */	lwz r4, 0x108(r31)
/* 802FADD0  FC 20 F8 90 */	fmr f1, f31
/* 802FADD4  FC 40 E0 90 */	fmr f2, f28
/* 802FADD8  54 05 EF FE */	rlwinm r5, r0, 0x1d, 0x1f, 0x1f
/* 802FADDC  54 06 F7 FE */	rlwinm r6, r0, 0x1e, 0x1f, 0x1f
/* 802FADE0  48 00 09 E9 */	bl drawFrameTexture__9J2DWindowFP10JUTTextureffbbb
/* 802FADE4  88 9F 01 44 */	lbz r4, 0x144(r31)
/* 802FADE8  54 80 EF FE */	rlwinm r0, r4, 0x1d, 0x1f, 0x1f
/* 802FADEC  7C 00 00 D0 */	neg r0, r0
/* 802FADF0  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 802FADF4  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 802FADF8  7C 65 00 78 */	andc r5, r3, r0
/* 802FADFC  68 A0 80 00 */	xori r0, r5, 0x8000
/* 802FAE00  54 07 04 3E */	clrlwi r7, r0, 0x10
/* 802FAE04  54 80 F7 FE */	rlwinm r0, r4, 0x1e, 0x1f, 0x1f
/* 802FAE08  7C 00 00 D0 */	neg r0, r0
/* 802FAE0C  7C 66 00 38 */	and r6, r3, r0
/* 802FAE10  80 9F 01 08 */	lwz r4, 0x108(r31)
/* 802FAE14  80 64 00 20 */	lwz r3, 0x20(r4)
/* 802FAE18  A0 03 00 02 */	lhz r0, 2(r3)
/* 802FAE1C  7F E3 FB 78 */	mr r3, r31
/* 802FAE20  FC 20 F8 90 */	fmr f1, f31
/* 802FAE24  FC 40 D0 90 */	fmr f2, f26
/* 802FAE28  C8 62 C8 40 */	lfd f3, lit_1971(r2)
/* 802FAE2C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FAE30  90 01 00 54 */	stw r0, 0x54(r1)
/* 802FAE34  3C 00 43 30 */	lis r0, 0x4330
/* 802FAE38  90 01 00 50 */	stw r0, 0x50(r1)
/* 802FAE3C  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 802FAE40  EC 60 18 28 */	fsubs f3, f0, f3
/* 802FAE44  FC 80 F0 90 */	fmr f4, f30
/* 802FAE48  7C C8 33 78 */	mr r8, r6
/* 802FAE4C  39 20 00 00 */	li r9, 0
/* 802FAE50  48 00 07 E5 */	bl drawFrameTexture__9J2DWindowFP10JUTTextureffffUsUsUsUsb
lbl_802FAE54:
/* 802FAE54  38 60 00 00 */	li r3, 0
/* 802FAE58  38 80 00 04 */	li r4, 4
/* 802FAE5C  48 06 43 3D */	bl GXSetTevOp
/* 802FAE60  38 60 00 00 */	li r3, 0
/* 802FAE64  38 80 00 FF */	li r4, 0xff
/* 802FAE68  38 A0 00 FF */	li r5, 0xff
/* 802FAE6C  38 C0 00 04 */	li r6, 4
/* 802FAE70  48 06 48 85 */	bl GXSetTevOrder
/* 802FAE74  38 60 00 00 */	li r3, 0
/* 802FAE78  48 06 0F 85 */	bl GXSetNumTexGens
/* 802FAE7C  38 60 00 0D */	li r3, 0xd
/* 802FAE80  38 80 00 00 */	li r4, 0
/* 802FAE84  48 06 00 35 */	bl GXSetVtxDesc
/* 802FAE88  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 802FAE8C  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 802FAE90  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 802FAE94  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 802FAE98  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 802FAE9C  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 802FAEA0  E3 81 00 88 */	psq_l f28, 136(r1), 0, 0 /* qr0 */
/* 802FAEA4  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 802FAEA8  E3 61 00 78 */	psq_l f27, 120(r1), 0, 0 /* qr0 */
/* 802FAEAC  CB 61 00 70 */	lfd f27, 0x70(r1)
/* 802FAEB0  E3 41 00 68 */	psq_l f26, 104(r1), 0, 0 /* qr0 */
/* 802FAEB4  CB 41 00 60 */	lfd f26, 0x60(r1)
/* 802FAEB8  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 802FAEBC  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 802FAEC0  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 802FAEC4  7C 08 03 A6 */	mtlr r0
/* 802FAEC8  38 21 00 C0 */	addi r1, r1, 0xc0
/* 802FAECC  4E 80 00 20 */	blr 
