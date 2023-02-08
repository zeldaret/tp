lbl_802BF994:
/* 802BF994  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 802BF998  7C 08 02 A6 */	mflr r0
/* 802BF99C  90 01 00 94 */	stw r0, 0x94(r1)
/* 802BF9A0  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 802BF9A4  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 802BF9A8  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 802BF9AC  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 802BF9B0  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 802BF9B4  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 802BF9B8  39 61 00 60 */	addi r11, r1, 0x60
/* 802BF9BC  48 0A 28 09 */	bl _savegpr_23
/* 802BF9C0  7C 77 1B 78 */	mr r23, r3
/* 802BF9C4  38 00 00 00 */	li r0, 0
/* 802BF9C8  98 03 00 1B */	stb r0, 0x1b(r3)
/* 802BF9CC  80 0D 8D E0 */	lwz r0, mLinkPtr__14Z2CreatureLink(r13)
/* 802BF9D0  28 00 00 00 */	cmplwi r0, 0
/* 802BF9D4  40 82 00 18 */	bne lbl_802BF9EC
/* 802BF9D8  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802BF9DC  38 80 00 01 */	li r4, 1
/* 802BF9E0  38 A0 00 01 */	li r5, 1
/* 802BF9E4  4B FF 58 21 */	bl stopBattleBgm__8Z2SeqMgrFUcUc
/* 802BF9E8  48 00 05 D4 */	b lbl_802BFFBC
lbl_802BF9EC:
/* 802BF9EC  3B C0 00 00 */	li r30, 0
/* 802BF9F0  3B A0 00 00 */	li r29, 0
/* 802BF9F4  3B 80 00 00 */	li r28, 0
/* 802BF9F8  80 8D 86 04 */	lwz r4, data_80450B84(r13)
/* 802BF9FC  80 64 00 00 */	lwz r3, 0(r4)
/* 802BFA00  28 03 00 00 */	cmplwi r3, 0
/* 802BFA04  41 82 00 10 */	beq lbl_802BFA14
/* 802BFA08  80 63 00 18 */	lwz r3, 0x18(r3)
/* 802BFA0C  90 61 00 10 */	stw r3, 0x10(r1)
/* 802BFA10  48 00 00 08 */	b lbl_802BFA18
lbl_802BFA14:
/* 802BFA14  38 60 FF FF */	li r3, -1
lbl_802BFA18:
/* 802BFA18  3C 03 FF 00 */	addis r0, r3, 0xff00
/* 802BFA1C  28 00 00 41 */	cmplwi r0, 0x41
/* 802BFA20  40 82 00 08 */	bne lbl_802BFA28
/* 802BFA24  3B 80 00 01 */	li r28, 1
lbl_802BFA28:
/* 802BFA28  3B 60 00 00 */	li r27, 0
/* 802BFA2C  80 A4 00 04 */	lwz r5, 4(r4)
/* 802BFA30  28 05 00 00 */	cmplwi r5, 0
/* 802BFA34  41 82 00 10 */	beq lbl_802BFA44
/* 802BFA38  80 65 00 18 */	lwz r3, 0x18(r5)
/* 802BFA3C  90 61 00 0C */	stw r3, 0xc(r1)
/* 802BFA40  48 00 00 08 */	b lbl_802BFA48
lbl_802BFA44:
/* 802BFA44  38 60 FF FF */	li r3, -1
lbl_802BFA48:
/* 802BFA48  3C 03 FF 00 */	addis r0, r3, 0xff00
/* 802BFA4C  28 00 00 04 */	cmplwi r0, 4
/* 802BFA50  40 82 00 0C */	bne lbl_802BFA5C
/* 802BFA54  3B 60 00 01 */	li r27, 1
/* 802BFA58  48 00 00 30 */	b lbl_802BFA88
lbl_802BFA5C:
/* 802BFA5C  28 05 00 00 */	cmplwi r5, 0
/* 802BFA60  41 82 00 14 */	beq lbl_802BFA74
/* 802BFA64  80 64 00 04 */	lwz r3, 4(r4)
/* 802BFA68  80 63 00 18 */	lwz r3, 0x18(r3)
/* 802BFA6C  90 61 00 08 */	stw r3, 8(r1)
/* 802BFA70  48 00 00 08 */	b lbl_802BFA78
lbl_802BFA74:
/* 802BFA74  38 60 FF FF */	li r3, -1
lbl_802BFA78:
/* 802BFA78  3C 03 FF 00 */	addis r0, r3, 0xff00
/* 802BFA7C  28 00 00 96 */	cmplwi r0, 0x96
/* 802BFA80  40 82 00 08 */	bne lbl_802BFA88
/* 802BFA84  3B 60 00 02 */	li r27, 2
lbl_802BFA88:
/* 802BFA88  38 00 00 00 */	li r0, 0
/* 802BFA8C  98 17 00 14 */	stb r0, 0x14(r23)
/* 802BFA90  98 17 00 15 */	stb r0, 0x15(r23)
/* 802BFA94  98 17 00 16 */	stb r0, 0x16(r23)
/* 802BFA98  98 17 00 17 */	stb r0, 0x17(r23)
/* 802BFA9C  98 17 00 1A */	stb r0, 0x1a(r23)
/* 802BFAA0  98 17 00 18 */	stb r0, 0x18(r23)
/* 802BFAA4  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 802BFAA8  88 03 00 C8 */	lbz r0, 0xc8(r3)
/* 802BFAAC  C8 22 C1 D0 */	lfd f1, lit_3703(r2)
/* 802BFAB0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802BFAB4  3C 00 43 30 */	lis r0, 0x4330
/* 802BFAB8  90 01 00 28 */	stw r0, 0x28(r1)
/* 802BFABC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 802BFAC0  EC 20 08 28 */	fsubs f1, f0, f1
/* 802BFAC4  C0 42 C1 B0 */	lfs f2, lit_3694(r2)
/* 802BFAC8  C0 62 C1 B4 */	lfs f3, lit_3695(r2)
/* 802BFACC  C0 82 C1 B8 */	lfs f4, lit_3696(r2)
/* 802BFAD0  C0 A2 C1 BC */	lfs f5, lit_3697(r2)
/* 802BFAD4  C0 C2 C1 C0 */	lfs f6, lit_3698(r2)
/* 802BFAD8  38 60 00 01 */	li r3, 1
/* 802BFADC  4B FE 9C 19 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802BFAE0  FF C0 08 90 */	fmr f30, f1
/* 802BFAE4  83 57 00 00 */	lwz r26, 0(r23)
/* 802BFAE8  C0 02 C1 C4 */	lfs f0, lit_3699(r2)
/* 802BFAEC  EF A0 07 B2 */	fmuls f29, f0, f30
/* 802BFAF0  48 00 03 54 */	b lbl_802BFE44
lbl_802BFAF4:
/* 802BFAF4  83 FA 00 00 */	lwz r31, 0(r26)
/* 802BFAF8  28 1F 00 00 */	cmplwi r31, 0
/* 802BFAFC  41 82 03 44 */	beq lbl_802BFE40
/* 802BFB00  88 1F 00 A1 */	lbz r0, 0xa1(r31)
/* 802BFB04  7C 00 07 74 */	extsb r0, r0
/* 802BFB08  2C 00 00 01 */	cmpwi r0, 1
/* 802BFB0C  41 80 03 34 */	blt lbl_802BFE40
/* 802BFB10  3B 20 00 00 */	li r25, 0
/* 802BFB14  8B 1F 00 A0 */	lbz r24, 0xa0(r31)
/* 802BFB18  38 18 FF F6 */	addi r0, r24, -10
/* 802BFB1C  28 00 00 2F */	cmplwi r0, 0x2f
/* 802BFB20  41 81 00 7C */	bgt lbl_802BFB9C
/* 802BFB24  3C 60 80 3D */	lis r3, lit_3704@ha /* 0x803CB170@ha */
/* 802BFB28  38 63 B1 70 */	addi r3, r3, lit_3704@l /* 0x803CB170@l */
/* 802BFB2C  54 00 10 3A */	slwi r0, r0, 2
/* 802BFB30  7C 03 00 2E */	lwzx r0, r3, r0
/* 802BFB34  7C 09 03 A6 */	mtctr r0
/* 802BFB38  4E 80 04 20 */	bctr 
/* 802BFB3C  80 6D 86 00 */	lwz r3, data_80450B80(r13)
/* 802BFB40  80 03 00 04 */	lwz r0, 4(r3)
/* 802BFB44  2C 00 00 1C */	cmpwi r0, 0x1c
/* 802BFB48  41 82 02 F8 */	beq lbl_802BFE40
/* 802BFB4C  48 00 00 50 */	b lbl_802BFB9C
/* 802BFB50  80 6D 86 00 */	lwz r3, data_80450B80(r13)
/* 802BFB54  80 03 00 04 */	lwz r0, 4(r3)
/* 802BFB58  2C 00 00 1E */	cmpwi r0, 0x1e
/* 802BFB5C  41 82 02 E4 */	beq lbl_802BFE40
/* 802BFB60  48 00 00 3C */	b lbl_802BFB9C
/* 802BFB64  3B 20 00 01 */	li r25, 1
/* 802BFB68  48 00 00 34 */	b lbl_802BFB9C
/* 802BFB6C  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 802BFB70  41 82 02 D0 */	beq lbl_802BFE40
/* 802BFB74  48 00 00 28 */	b lbl_802BFB9C
/* 802BFB78  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 802BFB7C  40 82 02 C4 */	bne lbl_802BFE40
/* 802BFB80  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 802BFB84  88 03 00 CB */	lbz r0, 0xcb(r3)
/* 802BFB88  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 802BFB8C  41 82 00 10 */	beq lbl_802BFB9C
/* 802BFB90  88 03 00 C8 */	lbz r0, 0xc8(r3)
/* 802BFB94  28 00 00 26 */	cmplwi r0, 0x26
/* 802BFB98  41 81 02 A8 */	bgt lbl_802BFE40
lbl_802BFB9C:
/* 802BFB9C  80 7F 00 04 */	lwz r3, 4(r31)
/* 802BFBA0  28 03 00 00 */	cmplwi r3, 0
/* 802BFBA4  41 82 02 9C */	beq lbl_802BFE40
/* 802BFBA8  80 8D 8D E0 */	lwz r4, mLinkPtr__14Z2CreatureLink(r13)
/* 802BFBAC  80 84 00 04 */	lwz r4, 4(r4)
/* 802BFBB0  28 04 00 00 */	cmplwi r4, 0
/* 802BFBB4  41 82 02 8C */	beq lbl_802BFE40
/* 802BFBB8  57 06 25 36 */	rlwinm r6, r24, 4, 0x14, 0x1b
/* 802BFBBC  3C A0 80 3D */	lis r5, mEnemyInfo@ha /* 0x803CAD70@ha */
/* 802BFBC0  38 05 AD 70 */	addi r0, r5, mEnemyInfo@l /* 0x803CAD70@l */
/* 802BFBC4  7C C0 32 14 */	add r6, r0, r6
/* 802BFBC8  80 A6 00 08 */	lwz r5, 8(r6)
/* 802BFBCC  80 06 00 0C */	lwz r0, 0xc(r6)
/* 802BFBD0  90 A1 00 14 */	stw r5, 0x14(r1)
/* 802BFBD4  90 01 00 18 */	stw r0, 0x18(r1)
/* 802BFBD8  88 17 00 1C */	lbz r0, 0x1c(r23)
/* 802BFBDC  28 00 00 00 */	cmplwi r0, 0
/* 802BFBE0  41 82 00 24 */	beq lbl_802BFC04
/* 802BFBE4  88 17 00 0C */	lbz r0, 0xc(r23)
/* 802BFBE8  98 01 00 14 */	stb r0, 0x14(r1)
/* 802BFBEC  A0 17 00 0E */	lhz r0, 0xe(r23)
/* 802BFBF0  B0 01 00 16 */	sth r0, 0x16(r1)
/* 802BFBF4  A0 17 00 10 */	lhz r0, 0x10(r23)
/* 802BFBF8  B0 01 00 18 */	sth r0, 0x18(r1)
/* 802BFBFC  A0 17 00 12 */	lhz r0, 0x12(r23)
/* 802BFC00  B0 01 00 1A */	sth r0, 0x1a(r1)
lbl_802BFC04:
/* 802BFC04  C3 E2 C1 C8 */	lfs f31, lit_3700(r2)
/* 802BFC08  88 01 00 14 */	lbz r0, 0x14(r1)
/* 802BFC0C  28 00 00 01 */	cmplwi r0, 1
/* 802BFC10  40 82 00 08 */	bne lbl_802BFC18
/* 802BFC14  C3 E2 C1 CC */	lfs f31, lit_3701(r2)
lbl_802BFC18:
/* 802BFC18  3C A0 80 3A */	lis r5, lit_3380@ha /* 0x8039C240@ha */
/* 802BFC1C  38 C5 C2 40 */	addi r6, r5, lit_3380@l /* 0x8039C240@l */
/* 802BFC20  80 A6 00 00 */	lwz r5, 0(r6)
/* 802BFC24  80 06 00 04 */	lwz r0, 4(r6)
/* 802BFC28  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 802BFC2C  90 01 00 20 */	stw r0, 0x20(r1)
/* 802BFC30  80 06 00 08 */	lwz r0, 8(r6)
/* 802BFC34  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BFC38  38 A1 00 1C */	addi r5, r1, 0x1c
/* 802BFC3C  48 08 74 79 */	bl PSVECSubtract
/* 802BFC40  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 802BFC44  EC 00 07 F2 */	fmuls f0, f0, f31
/* 802BFC48  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 802BFC4C  38 61 00 1C */	addi r3, r1, 0x1c
/* 802BFC50  48 08 75 01 */	bl PSVECMag
/* 802BFC54  FF E0 08 90 */	fmr f31, f1
/* 802BFC58  A0 01 00 1A */	lhz r0, 0x1a(r1)
/* 802BFC5C  C8 22 C1 D0 */	lfd f1, lit_3703(r2)
/* 802BFC60  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802BFC64  3C 80 43 30 */	lis r4, 0x4330
/* 802BFC68  90 81 00 28 */	stw r4, 0x28(r1)
/* 802BFC6C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 802BFC70  EC 00 08 28 */	fsubs f0, f0, f1
/* 802BFC74  EC 00 07 B2 */	fmuls f0, f0, f30
/* 802BFC78  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 802BFC7C  40 80 01 94 */	bge lbl_802BFE10
/* 802BFC80  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 802BFC84  41 82 00 AC */	beq lbl_802BFD30
/* 802BFC88  88 77 00 1A */	lbz r3, 0x1a(r23)
/* 802BFC8C  38 03 00 01 */	addi r0, r3, 1
/* 802BFC90  98 17 00 1A */	stb r0, 0x1a(r23)
/* 802BFC94  A0 01 00 18 */	lhz r0, 0x18(r1)
/* 802BFC98  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802BFC9C  90 81 00 28 */	stw r4, 0x28(r1)
/* 802BFCA0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 802BFCA4  EC 00 08 28 */	fsubs f0, f0, f1
/* 802BFCA8  EC 00 07 B2 */	fmuls f0, f0, f30
/* 802BFCAC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 802BFCB0  40 80 00 54 */	bge lbl_802BFD04
/* 802BFCB4  88 17 00 19 */	lbz r0, 0x19(r23)
/* 802BFCB8  60 00 00 01 */	ori r0, r0, 1
/* 802BFCBC  98 17 00 19 */	stb r0, 0x19(r23)
/* 802BFCC0  88 17 00 19 */	lbz r0, 0x19(r23)
/* 802BFCC4  28 00 00 10 */	cmplwi r0, 0x10
/* 802BFCC8  41 80 00 3C */	blt lbl_802BFD04
/* 802BFCCC  88 77 00 15 */	lbz r3, 0x15(r23)
/* 802BFCD0  38 03 00 01 */	addi r0, r3, 1
/* 802BFCD4  98 17 00 15 */	stb r0, 0x15(r23)
/* 802BFCD8  A0 01 00 16 */	lhz r0, 0x16(r1)
/* 802BFCDC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802BFCE0  90 81 00 28 */	stw r4, 0x28(r1)
/* 802BFCE4  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 802BFCE8  EC 00 08 28 */	fsubs f0, f0, f1
/* 802BFCEC  EC 00 07 B2 */	fmuls f0, f0, f30
/* 802BFCF0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 802BFCF4  40 80 00 10 */	bge lbl_802BFD04
/* 802BFCF8  88 77 00 14 */	lbz r3, 0x14(r23)
/* 802BFCFC  38 03 00 01 */	addi r0, r3, 1
/* 802BFD00  98 17 00 14 */	stb r0, 0x14(r23)
lbl_802BFD04:
/* 802BFD04  88 17 00 19 */	lbz r0, 0x19(r23)
/* 802BFD08  28 00 00 11 */	cmplwi r0, 0x11
/* 802BFD0C  41 80 01 04 */	blt lbl_802BFE10
/* 802BFD10  88 77 00 16 */	lbz r3, 0x16(r23)
/* 802BFD14  38 03 00 01 */	addi r0, r3, 1
/* 802BFD18  98 17 00 16 */	stb r0, 0x16(r23)
/* 802BFD1C  88 1F 00 A2 */	lbz r0, 0xa2(r31)
/* 802BFD20  28 00 00 00 */	cmplwi r0, 0
/* 802BFD24  41 82 00 EC */	beq lbl_802BFE10
/* 802BFD28  3B A0 00 01 */	li r29, 1
/* 802BFD2C  48 00 00 E4 */	b lbl_802BFE10
lbl_802BFD30:
/* 802BFD30  88 77 00 16 */	lbz r3, 0x16(r23)
/* 802BFD34  38 03 00 01 */	addi r0, r3, 1
/* 802BFD38  98 17 00 16 */	stb r0, 0x16(r23)
/* 802BFD3C  28 18 00 00 */	cmplwi r24, 0
/* 802BFD40  41 82 00 58 */	beq lbl_802BFD98
/* 802BFD44  28 18 00 09 */	cmplwi r24, 9
/* 802BFD48  40 80 00 50 */	bge lbl_802BFD98
/* 802BFD4C  88 17 00 1B */	lbz r0, 0x1b(r23)
/* 802BFD50  28 00 00 00 */	cmplwi r0, 0
/* 802BFD54  40 82 00 0C */	bne lbl_802BFD60
/* 802BFD58  38 00 00 01 */	li r0, 1
/* 802BFD5C  98 17 00 1B */	stb r0, 0x1b(r23)
lbl_802BFD60:
/* 802BFD60  28 18 00 01 */	cmplwi r24, 1
/* 802BFD64  41 82 00 0C */	beq lbl_802BFD70
/* 802BFD68  28 18 00 05 */	cmplwi r24, 5
/* 802BFD6C  40 82 00 0C */	bne lbl_802BFD78
lbl_802BFD70:
/* 802BFD70  38 00 00 02 */	li r0, 2
/* 802BFD74  98 17 00 1B */	stb r0, 0x1b(r23)
lbl_802BFD78:
/* 802BFD78  28 18 00 08 */	cmplwi r24, 8
/* 802BFD7C  40 82 00 10 */	bne lbl_802BFD8C
/* 802BFD80  38 00 00 02 */	li r0, 2
/* 802BFD84  98 17 00 1B */	stb r0, 0x1b(r23)
/* 802BFD88  48 00 00 10 */	b lbl_802BFD98
lbl_802BFD8C:
/* 802BFD8C  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802BFD90  88 97 00 1B */	lbz r4, 0x1b(r23)
/* 802BFD94  4B FF 20 61 */	bl changeSubBgmStatus__8Z2SeqMgrFl
lbl_802BFD98:
/* 802BFD98  28 18 00 2C */	cmplwi r24, 0x2c
/* 802BFD9C  41 82 00 14 */	beq lbl_802BFDB0
/* 802BFDA0  88 1F 00 A2 */	lbz r0, 0xa2(r31)
/* 802BFDA4  28 00 00 00 */	cmplwi r0, 0
/* 802BFDA8  41 82 00 08 */	beq lbl_802BFDB0
/* 802BFDAC  3B A0 00 01 */	li r29, 1
lbl_802BFDB0:
/* 802BFDB0  A0 01 00 18 */	lhz r0, 0x18(r1)
/* 802BFDB4  C8 22 C1 D0 */	lfd f1, lit_3703(r2)
/* 802BFDB8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802BFDBC  3C 80 43 30 */	lis r4, 0x4330
/* 802BFDC0  90 81 00 28 */	stw r4, 0x28(r1)
/* 802BFDC4  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 802BFDC8  EC 00 08 28 */	fsubs f0, f0, f1
/* 802BFDCC  EC 00 07 B2 */	fmuls f0, f0, f30
/* 802BFDD0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 802BFDD4  40 80 00 3C */	bge lbl_802BFE10
/* 802BFDD8  88 77 00 15 */	lbz r3, 0x15(r23)
/* 802BFDDC  38 03 00 01 */	addi r0, r3, 1
/* 802BFDE0  98 17 00 15 */	stb r0, 0x15(r23)
/* 802BFDE4  A0 01 00 16 */	lhz r0, 0x16(r1)
/* 802BFDE8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802BFDEC  90 81 00 28 */	stw r4, 0x28(r1)
/* 802BFDF0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 802BFDF4  EC 00 08 28 */	fsubs f0, f0, f1
/* 802BFDF8  EC 00 07 B2 */	fmuls f0, f0, f30
/* 802BFDFC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 802BFE00  40 80 00 10 */	bge lbl_802BFE10
/* 802BFE04  88 77 00 14 */	lbz r3, 0x14(r23)
/* 802BFE08  38 03 00 01 */	addi r0, r3, 1
/* 802BFE0C  98 17 00 14 */	stb r0, 0x14(r23)
lbl_802BFE10:
/* 802BFE10  FC 1F E8 40 */	fcmpo cr0, f31, f29
/* 802BFE14  40 80 00 10 */	bge lbl_802BFE24
/* 802BFE18  88 77 00 17 */	lbz r3, 0x17(r23)
/* 802BFE1C  38 03 00 01 */	addi r0, r3, 1
/* 802BFE20  98 17 00 17 */	stb r0, 0x17(r23)
lbl_802BFE24:
/* 802BFE24  88 1F 00 A3 */	lbz r0, 0xa3(r31)
/* 802BFE28  28 00 00 00 */	cmplwi r0, 0
/* 802BFE2C  41 82 00 14 */	beq lbl_802BFE40
/* 802BFE30  3B C0 00 01 */	li r30, 1
/* 802BFE34  88 77 00 18 */	lbz r3, 0x18(r23)
/* 802BFE38  38 03 00 01 */	addi r0, r3, 1
/* 802BFE3C  98 17 00 18 */	stb r0, 0x18(r23)
lbl_802BFE40:
/* 802BFE40  83 5A 00 0C */	lwz r26, 0xc(r26)
lbl_802BFE44:
/* 802BFE44  28 1A 00 00 */	cmplwi r26, 0
/* 802BFE48  40 82 FC AC */	bne lbl_802BFAF4
/* 802BFE4C  88 17 00 19 */	lbz r0, 0x19(r23)
/* 802BFE50  28 00 00 11 */	cmplwi r0, 0x11
/* 802BFE54  40 82 00 34 */	bne lbl_802BFE88
/* 802BFE58  88 77 00 1A */	lbz r3, 0x1a(r23)
/* 802BFE5C  88 17 00 16 */	lbz r0, 0x16(r23)
/* 802BFE60  7C 03 00 40 */	cmplw r3, r0
/* 802BFE64  41 80 00 14 */	blt lbl_802BFE78
/* 802BFE68  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802BFE6C  38 80 00 00 */	li r4, 0
/* 802BFE70  4B FF 45 71 */	bl setBattleGhostMute__8Z2SeqMgrFb
/* 802BFE74  48 00 00 34 */	b lbl_802BFEA8
lbl_802BFE78:
/* 802BFE78  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802BFE7C  38 80 00 01 */	li r4, 1
/* 802BFE80  4B FF 45 61 */	bl setBattleGhostMute__8Z2SeqMgrFb
/* 802BFE84  48 00 00 24 */	b lbl_802BFEA8
lbl_802BFE88:
/* 802BFE88  28 00 00 20 */	cmplwi r0, 0x20
/* 802BFE8C  40 80 00 1C */	bge lbl_802BFEA8
/* 802BFE90  88 17 00 1A */	lbz r0, 0x1a(r23)
/* 802BFE94  28 00 00 00 */	cmplwi r0, 0
/* 802BFE98  40 82 00 10 */	bne lbl_802BFEA8
/* 802BFE9C  7E E3 BB 78 */	mr r3, r23
/* 802BFEA0  38 80 00 00 */	li r4, 0
/* 802BFEA4  48 00 01 49 */	bl setGhostEnemyState__13Z2SoundObjMgrFUc
lbl_802BFEA8:
/* 802BFEA8  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 802BFEAC  28 00 00 01 */	cmplwi r0, 1
/* 802BFEB0  40 82 00 30 */	bne lbl_802BFEE0
/* 802BFEB4  88 17 00 14 */	lbz r0, 0x14(r23)
/* 802BFEB8  28 00 00 00 */	cmplwi r0, 0
/* 802BFEBC  41 82 00 14 */	beq lbl_802BFED0
/* 802BFEC0  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802BFEC4  38 80 00 01 */	li r4, 1
/* 802BFEC8  4B FF 1F 2D */	bl changeSubBgmStatus__8Z2SeqMgrFl
/* 802BFECC  48 00 00 F0 */	b lbl_802BFFBC
lbl_802BFED0:
/* 802BFED0  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802BFED4  38 80 00 00 */	li r4, 0
/* 802BFED8  4B FF 1F 1D */	bl changeSubBgmStatus__8Z2SeqMgrFl
/* 802BFEDC  48 00 00 E0 */	b lbl_802BFFBC
lbl_802BFEE0:
/* 802BFEE0  28 00 00 02 */	cmplwi r0, 2
/* 802BFEE4  40 82 00 30 */	bne lbl_802BFF14
/* 802BFEE8  88 17 00 15 */	lbz r0, 0x15(r23)
/* 802BFEEC  28 00 00 00 */	cmplwi r0, 0
/* 802BFEF0  41 82 00 14 */	beq lbl_802BFF04
/* 802BFEF4  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802BFEF8  38 80 00 01 */	li r4, 1
/* 802BFEFC  4B FF 1E F9 */	bl changeSubBgmStatus__8Z2SeqMgrFl
/* 802BFF00  48 00 00 BC */	b lbl_802BFFBC
lbl_802BFF04:
/* 802BFF04  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802BFF08  38 80 00 00 */	li r4, 0
/* 802BFF0C  4B FF 1E E9 */	bl changeSubBgmStatus__8Z2SeqMgrFl
/* 802BFF10  48 00 00 AC */	b lbl_802BFFBC
lbl_802BFF14:
/* 802BFF14  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 802BFF18  41 82 00 30 */	beq lbl_802BFF48
/* 802BFF1C  88 17 00 16 */	lbz r0, 0x16(r23)
/* 802BFF20  28 00 00 00 */	cmplwi r0, 0
/* 802BFF24  41 82 00 14 */	beq lbl_802BFF38
/* 802BFF28  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802BFF2C  38 80 00 01 */	li r4, 1
/* 802BFF30  4B FF 00 5D */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802BFF34  48 00 00 88 */	b lbl_802BFFBC
lbl_802BFF38:
/* 802BFF38  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802BFF3C  38 80 00 00 */	li r4, 0
/* 802BFF40  4B FF 00 4D */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802BFF44  48 00 00 78 */	b lbl_802BFFBC
lbl_802BFF48:
/* 802BFF48  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 802BFF4C  40 82 00 70 */	bne lbl_802BFFBC
/* 802BFF50  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802BFF54  7F A4 EB 78 */	mr r4, r29
/* 802BFF58  4B FF 42 C5 */	bl setBattleSearched__8Z2SeqMgrFb
/* 802BFF5C  88 17 00 14 */	lbz r0, 0x14(r23)
/* 802BFF60  28 00 00 00 */	cmplwi r0, 0
/* 802BFF64  41 82 00 14 */	beq lbl_802BFF78
/* 802BFF68  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802BFF6C  38 80 00 00 */	li r4, 0
/* 802BFF70  4B FF 45 29 */	bl setBattleDistState__8Z2SeqMgrFUc
/* 802BFF74  48 00 00 48 */	b lbl_802BFFBC
lbl_802BFF78:
/* 802BFF78  88 17 00 15 */	lbz r0, 0x15(r23)
/* 802BFF7C  28 00 00 00 */	cmplwi r0, 0
/* 802BFF80  41 82 00 14 */	beq lbl_802BFF94
/* 802BFF84  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802BFF88  38 80 00 01 */	li r4, 1
/* 802BFF8C  4B FF 45 0D */	bl setBattleDistState__8Z2SeqMgrFUc
/* 802BFF90  48 00 00 2C */	b lbl_802BFFBC
lbl_802BFF94:
/* 802BFF94  88 17 00 16 */	lbz r0, 0x16(r23)
/* 802BFF98  28 00 00 00 */	cmplwi r0, 0
/* 802BFF9C  41 82 00 14 */	beq lbl_802BFFB0
/* 802BFFA0  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802BFFA4  38 80 00 02 */	li r4, 2
/* 802BFFA8  4B FF 44 F1 */	bl setBattleDistState__8Z2SeqMgrFUc
/* 802BFFAC  48 00 00 10 */	b lbl_802BFFBC
lbl_802BFFB0:
/* 802BFFB0  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802BFFB4  38 80 00 03 */	li r4, 3
/* 802BFFB8  4B FF 44 E1 */	bl setBattleDistState__8Z2SeqMgrFUc
lbl_802BFFBC:
/* 802BFFBC  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 802BFFC0  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 802BFFC4  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 802BFFC8  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 802BFFCC  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 802BFFD0  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 802BFFD4  39 61 00 60 */	addi r11, r1, 0x60
/* 802BFFD8  48 0A 22 39 */	bl _restgpr_23
/* 802BFFDC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 802BFFE0  7C 08 03 A6 */	mtlr r0
/* 802BFFE4  38 21 00 90 */	addi r1, r1, 0x90
/* 802BFFE8  4E 80 00 20 */	blr 
