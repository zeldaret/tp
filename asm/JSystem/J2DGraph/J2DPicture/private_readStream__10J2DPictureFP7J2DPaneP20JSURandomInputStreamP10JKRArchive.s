lbl_802FC8E8:
/* 802FC8E8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 802FC8EC  7C 08 02 A6 */	mflr r0
/* 802FC8F0  90 01 00 84 */	stw r0, 0x84(r1)
/* 802FC8F4  39 61 00 80 */	addi r11, r1, 0x80
/* 802FC8F8  48 06 58 C9 */	bl _savegpr_22
/* 802FC8FC  7C 78 1B 78 */	mr r24, r3
/* 802FC900  7C 97 23 78 */	mr r23, r4
/* 802FC904  7C B9 2B 78 */	mr r25, r5
/* 802FC908  7C D6 33 78 */	mr r22, r6
/* 802FC90C  7F 23 CB 78 */	mr r3, r25
/* 802FC910  81 99 00 00 */	lwz r12, 0(r25)
/* 802FC914  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802FC918  7D 89 03 A6 */	mtctr r12
/* 802FC91C  4E 80 04 21 */	bctrl 
/* 802FC920  7C 7F 1B 78 */	mr r31, r3
/* 802FC924  7F 23 CB 78 */	mr r3, r25
/* 802FC928  38 81 00 4C */	addi r4, r1, 0x4c
/* 802FC92C  38 A0 00 08 */	li r5, 8
/* 802FC930  4B FD F9 69 */	bl read__14JSUInputStreamFPvl
/* 802FC934  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 802FC938  90 18 00 08 */	stw r0, 8(r24)
/* 802FC93C  7F 03 C3 78 */	mr r3, r24
/* 802FC940  7E E4 BB 78 */	mr r4, r23
/* 802FC944  7F 25 CB 78 */	mr r5, r25
/* 802FC948  4B FF 97 7D */	bl makePaneStream__7J2DPaneFP7J2DPaneP20JSURandomInputStream
/* 802FC94C  3B 60 00 00 */	li r27, 0
/* 802FC950  7F 23 CB 78 */	mr r3, r25
/* 802FC954  38 81 00 0B */	addi r4, r1, 0xb
/* 802FC958  38 A0 00 01 */	li r5, 1
/* 802FC95C  4B FD F9 3D */	bl read__14JSUInputStreamFPvl
/* 802FC960  8B 41 00 0B */	lbz r26, 0xb(r1)
/* 802FC964  7F 03 C3 78 */	mr r3, r24
/* 802FC968  7F 24 CB 78 */	mr r4, r25
/* 802FC96C  3C A0 54 49 */	lis r5, 0x5449 /* 0x54494D47@ha */
/* 802FC970  38 A5 4D 47 */	addi r5, r5, 0x4D47 /* 0x54494D47@l */
/* 802FC974  7E C6 B3 78 */	mr r6, r22
/* 802FC978  4B FF B4 41 */	bl getPointer__7J2DPaneFP20JSURandomInputStreamUlP10JKRArchive
/* 802FC97C  7C 7D 1B 78 */	mr r29, r3
/* 802FC980  7F 03 C3 78 */	mr r3, r24
/* 802FC984  7F 24 CB 78 */	mr r4, r25
/* 802FC988  3C A0 54 4C */	lis r5, 0x544C /* 0x544C5554@ha */
/* 802FC98C  38 A5 55 54 */	addi r5, r5, 0x5554 /* 0x544C5554@l */
/* 802FC990  7E C6 B3 78 */	mr r6, r22
/* 802FC994  4B FF B4 25 */	bl getPointer__7J2DPaneFP20JSURandomInputStreamUlP10JKRArchive
/* 802FC998  7C 7C 1B 78 */	mr r28, r3
/* 802FC99C  7F 23 CB 78 */	mr r3, r25
/* 802FC9A0  38 81 00 0A */	addi r4, r1, 0xa
/* 802FC9A4  38 A0 00 01 */	li r5, 1
/* 802FC9A8  4B FD F8 F1 */	bl read__14JSUInputStreamFPvl
/* 802FC9AC  8B C1 00 0A */	lbz r30, 0xa(r1)
/* 802FC9B0  3B 5A FF FD */	addi r26, r26, -3
/* 802FC9B4  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 802FC9B8  41 82 00 1C */	beq lbl_802FC9D4
/* 802FC9BC  7F 23 CB 78 */	mr r3, r25
/* 802FC9C0  38 81 00 09 */	addi r4, r1, 9
/* 802FC9C4  38 A0 00 01 */	li r5, 1
/* 802FC9C8  4B FD F8 D1 */	bl read__14JSUInputStreamFPvl
/* 802FC9CC  8B 61 00 09 */	lbz r27, 9(r1)
/* 802FC9D0  3B 5A FF FF */	addi r26, r26, -1
lbl_802FC9D4:
/* 802FC9D4  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 802FC9D8  41 82 00 18 */	beq lbl_802FC9F0
/* 802FC9DC  7F 23 CB 78 */	mr r3, r25
/* 802FC9E0  38 81 00 08 */	addi r4, r1, 8
/* 802FC9E4  38 A0 00 01 */	li r5, 1
/* 802FC9E8  4B FD F8 B1 */	bl read__14JSUInputStreamFPvl
/* 802FC9EC  3B 5A FF FF */	addi r26, r26, -1
lbl_802FC9F0:
/* 802FC9F0  38 00 00 00 */	li r0, 0
/* 802FC9F4  90 01 00 48 */	stw r0, 0x48(r1)
/* 802FC9F8  88 01 00 48 */	lbz r0, 0x48(r1)
/* 802FC9FC  98 18 01 34 */	stb r0, 0x134(r24)
/* 802FCA00  88 01 00 49 */	lbz r0, 0x49(r1)
/* 802FCA04  98 18 01 35 */	stb r0, 0x135(r24)
/* 802FCA08  88 01 00 4A */	lbz r0, 0x4a(r1)
/* 802FCA0C  98 18 01 36 */	stb r0, 0x136(r24)
/* 802FCA10  88 01 00 4B */	lbz r0, 0x4b(r1)
/* 802FCA14  98 18 01 37 */	stb r0, 0x137(r24)
/* 802FCA18  38 00 FF FF */	li r0, -1
/* 802FCA1C  90 01 00 44 */	stw r0, 0x44(r1)
/* 802FCA20  88 01 00 44 */	lbz r0, 0x44(r1)
/* 802FCA24  98 18 01 30 */	stb r0, 0x130(r24)
/* 802FCA28  88 01 00 45 */	lbz r0, 0x45(r1)
/* 802FCA2C  98 18 01 31 */	stb r0, 0x131(r24)
/* 802FCA30  88 01 00 46 */	lbz r0, 0x46(r1)
/* 802FCA34  98 18 01 32 */	stb r0, 0x132(r24)
/* 802FCA38  88 01 00 47 */	lbz r0, 0x47(r1)
/* 802FCA3C  98 18 01 33 */	stb r0, 0x133(r24)
/* 802FCA40  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 802FCA44  41 82 00 40 */	beq lbl_802FCA84
/* 802FCA48  7F 23 CB 78 */	mr r3, r25
/* 802FCA4C  38 81 00 14 */	addi r4, r1, 0x14
/* 802FCA50  38 A0 00 04 */	li r5, 4
/* 802FCA54  4B FD F8 45 */	bl read__14JSUInputStreamFPvl
/* 802FCA58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FCA5C  90 01 00 40 */	stw r0, 0x40(r1)
/* 802FCA60  88 01 00 40 */	lbz r0, 0x40(r1)
/* 802FCA64  98 18 01 34 */	stb r0, 0x134(r24)
/* 802FCA68  88 01 00 41 */	lbz r0, 0x41(r1)
/* 802FCA6C  98 18 01 35 */	stb r0, 0x135(r24)
/* 802FCA70  88 01 00 42 */	lbz r0, 0x42(r1)
/* 802FCA74  98 18 01 36 */	stb r0, 0x136(r24)
/* 802FCA78  88 01 00 43 */	lbz r0, 0x43(r1)
/* 802FCA7C  98 18 01 37 */	stb r0, 0x137(r24)
/* 802FCA80  3B 5A FF FF */	addi r26, r26, -1
lbl_802FCA84:
/* 802FCA84  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 802FCA88  41 82 00 40 */	beq lbl_802FCAC8
/* 802FCA8C  7F 23 CB 78 */	mr r3, r25
/* 802FCA90  38 81 00 10 */	addi r4, r1, 0x10
/* 802FCA94  38 A0 00 04 */	li r5, 4
/* 802FCA98  4B FD F8 01 */	bl read__14JSUInputStreamFPvl
/* 802FCA9C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 802FCAA0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802FCAA4  88 01 00 3C */	lbz r0, 0x3c(r1)
/* 802FCAA8  98 18 01 30 */	stb r0, 0x130(r24)
/* 802FCAAC  88 01 00 3D */	lbz r0, 0x3d(r1)
/* 802FCAB0  98 18 01 31 */	stb r0, 0x131(r24)
/* 802FCAB4  88 01 00 3E */	lbz r0, 0x3e(r1)
/* 802FCAB8  98 18 01 32 */	stb r0, 0x132(r24)
/* 802FCABC  88 01 00 3F */	lbz r0, 0x3f(r1)
/* 802FCAC0  98 18 01 33 */	stb r0, 0x133(r24)
/* 802FCAC4  3B 5A FF FF */	addi r26, r26, -1
lbl_802FCAC8:
/* 802FCAC8  38 00 FF FF */	li r0, -1
/* 802FCACC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802FCAD0  90 01 00 20 */	stw r0, 0x20(r1)
/* 802FCAD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FCAD8  90 01 00 28 */	stw r0, 0x28(r1)
/* 802FCADC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802FCAE0  90 01 00 30 */	stw r0, 0x30(r1)
/* 802FCAE4  90 01 00 34 */	stw r0, 0x34(r1)
/* 802FCAE8  90 01 00 38 */	stw r0, 0x38(r1)
/* 802FCAEC  88 01 00 38 */	lbz r0, 0x38(r1)
/* 802FCAF0  98 18 01 38 */	stb r0, 0x138(r24)
/* 802FCAF4  88 01 00 39 */	lbz r0, 0x39(r1)
/* 802FCAF8  98 18 01 39 */	stb r0, 0x139(r24)
/* 802FCAFC  88 01 00 3A */	lbz r0, 0x3a(r1)
/* 802FCB00  98 18 01 3A */	stb r0, 0x13a(r24)
/* 802FCB04  88 01 00 3B */	lbz r0, 0x3b(r1)
/* 802FCB08  98 18 01 3B */	stb r0, 0x13b(r24)
/* 802FCB0C  88 01 00 30 */	lbz r0, 0x30(r1)
/* 802FCB10  98 18 01 3C */	stb r0, 0x13c(r24)
/* 802FCB14  88 01 00 31 */	lbz r0, 0x31(r1)
/* 802FCB18  98 18 01 3D */	stb r0, 0x13d(r24)
/* 802FCB1C  88 01 00 32 */	lbz r0, 0x32(r1)
/* 802FCB20  98 18 01 3E */	stb r0, 0x13e(r24)
/* 802FCB24  88 01 00 33 */	lbz r0, 0x33(r1)
/* 802FCB28  98 18 01 3F */	stb r0, 0x13f(r24)
/* 802FCB2C  88 01 00 28 */	lbz r0, 0x28(r1)
/* 802FCB30  98 18 01 40 */	stb r0, 0x140(r24)
/* 802FCB34  88 01 00 29 */	lbz r0, 0x29(r1)
/* 802FCB38  98 18 01 41 */	stb r0, 0x141(r24)
/* 802FCB3C  88 01 00 2A */	lbz r0, 0x2a(r1)
/* 802FCB40  98 18 01 42 */	stb r0, 0x142(r24)
/* 802FCB44  88 01 00 2B */	lbz r0, 0x2b(r1)
/* 802FCB48  98 18 01 43 */	stb r0, 0x143(r24)
/* 802FCB4C  88 01 00 20 */	lbz r0, 0x20(r1)
/* 802FCB50  98 18 01 44 */	stb r0, 0x144(r24)
/* 802FCB54  88 01 00 21 */	lbz r0, 0x21(r1)
/* 802FCB58  98 18 01 45 */	stb r0, 0x145(r24)
/* 802FCB5C  88 01 00 22 */	lbz r0, 0x22(r1)
/* 802FCB60  98 18 01 46 */	stb r0, 0x146(r24)
/* 802FCB64  88 01 00 23 */	lbz r0, 0x23(r1)
/* 802FCB68  98 18 01 47 */	stb r0, 0x147(r24)
/* 802FCB6C  3A C0 00 00 */	li r22, 0
/* 802FCB70  3A E0 00 00 */	li r23, 0
/* 802FCB74  48 00 00 4C */	b lbl_802FCBC0
lbl_802FCB78:
/* 802FCB78  7F 23 CB 78 */	mr r3, r25
/* 802FCB7C  38 81 00 0C */	addi r4, r1, 0xc
/* 802FCB80  38 A0 00 04 */	li r5, 4
/* 802FCB84  4B FD F7 15 */	bl read__14JSUInputStreamFPvl
/* 802FCB88  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802FCB8C  90 01 00 18 */	stw r0, 0x18(r1)
/* 802FCB90  88 01 00 18 */	lbz r0, 0x18(r1)
/* 802FCB94  7C 78 BA 14 */	add r3, r24, r23
/* 802FCB98  98 03 01 38 */	stb r0, 0x138(r3)
/* 802FCB9C  88 01 00 19 */	lbz r0, 0x19(r1)
/* 802FCBA0  98 03 01 39 */	stb r0, 0x139(r3)
/* 802FCBA4  88 01 00 1A */	lbz r0, 0x1a(r1)
/* 802FCBA8  98 03 01 3A */	stb r0, 0x13a(r3)
/* 802FCBAC  88 01 00 1B */	lbz r0, 0x1b(r1)
/* 802FCBB0  98 03 01 3B */	stb r0, 0x13b(r3)
/* 802FCBB4  3B 5A FF FF */	addi r26, r26, -1
/* 802FCBB8  3A D6 00 01 */	addi r22, r22, 1
/* 802FCBBC  3A F7 00 04 */	addi r23, r23, 4
lbl_802FCBC0:
/* 802FCBC0  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 802FCBC4  41 82 00 0C */	beq lbl_802FCBD0
/* 802FCBC8  2C 16 00 04 */	cmpwi r22, 4
/* 802FCBCC  41 80 FF AC */	blt lbl_802FCB78
lbl_802FCBD0:
/* 802FCBD0  7F 23 CB 78 */	mr r3, r25
/* 802FCBD4  80 01 00 50 */	lwz r0, 0x50(r1)
/* 802FCBD8  7C 9F 02 14 */	add r4, r31, r0
/* 802FCBDC  38 A0 00 00 */	li r5, 0
/* 802FCBE0  4B FD F8 FD */	bl seek__20JSURandomInputStreamFl17JSUStreamSeekFrom
/* 802FCBE4  38 60 00 00 */	li r3, 0
/* 802FCBE8  38 80 00 00 */	li r4, 0
/* 802FCBEC  38 00 00 02 */	li r0, 2
/* 802FCBF0  7C 09 03 A6 */	mtctr r0
lbl_802FCBF4:
/* 802FCBF4  38 03 01 00 */	addi r0, r3, 0x100
/* 802FCBF8  7C 98 01 2E */	stwx r4, r24, r0
/* 802FCBFC  38 63 00 04 */	addi r3, r3, 4
/* 802FCC00  42 00 FF F4 */	bdnz lbl_802FCBF4
/* 802FCC04  38 00 00 00 */	li r0, 0
/* 802FCC08  98 18 01 08 */	stb r0, 0x108(r24)
/* 802FCC0C  38 00 00 01 */	li r0, 1
/* 802FCC10  98 18 01 09 */	stb r0, 0x109(r24)
/* 802FCC14  28 1D 00 00 */	cmplwi r29, 0
/* 802FCC18  41 82 00 44 */	beq lbl_802FCC5C
/* 802FCC1C  38 60 00 40 */	li r3, 0x40
/* 802FCC20  4B FD 20 2D */	bl __nw__FUl
/* 802FCC24  7C 77 1B 79 */	or. r23, r3, r3
/* 802FCC28  41 82 00 24 */	beq lbl_802FCC4C
/* 802FCC2C  38 00 00 00 */	li r0, 0
/* 802FCC30  90 17 00 28 */	stw r0, 0x28(r23)
/* 802FCC34  7F A4 EB 78 */	mr r4, r29
/* 802FCC38  38 A0 00 00 */	li r5, 0
/* 802FCC3C  4B FE 16 6D */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802FCC40  88 17 00 3B */	lbz r0, 0x3b(r23)
/* 802FCC44  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 802FCC48  98 17 00 3B */	stb r0, 0x3b(r23)
lbl_802FCC4C:
/* 802FCC4C  92 F8 01 00 */	stw r23, 0x100(r24)
/* 802FCC50  88 78 01 08 */	lbz r3, 0x108(r24)
/* 802FCC54  38 03 00 01 */	addi r0, r3, 1
/* 802FCC58  98 18 01 08 */	stb r0, 0x108(r24)
lbl_802FCC5C:
/* 802FCC5C  28 1C 00 00 */	cmplwi r28, 0
/* 802FCC60  41 82 00 30 */	beq lbl_802FCC90
/* 802FCC64  38 60 00 18 */	li r3, 0x18
/* 802FCC68  4B FD 1F E5 */	bl __nw__FUl
/* 802FCC6C  7C 77 1B 79 */	or. r23, r3, r3
/* 802FCC70  41 82 00 10 */	beq lbl_802FCC80
/* 802FCC74  38 80 00 00 */	li r4, 0
/* 802FCC78  7F 85 E3 78 */	mr r5, r28
/* 802FCC7C  4B FE 1C 15 */	bl storeTLUT__10JUTPaletteF7_GXTlutP7ResTLUT
lbl_802FCC80:
/* 802FCC80  92 F8 01 2C */	stw r23, 0x12c(r24)
/* 802FCC84  80 78 01 00 */	lwz r3, 0x100(r24)
/* 802FCC88  80 98 01 2C */	lwz r4, 0x12c(r24)
/* 802FCC8C  4B FE 19 25 */	bl attachPalette__10JUTTextureFP10JUTPalette
lbl_802FCC90:
/* 802FCC90  7F 03 C3 78 */	mr r3, r24
/* 802FCC94  80 98 01 00 */	lwz r4, 0x100(r24)
/* 802FCC98  7F C5 F3 78 */	mr r5, r30
/* 802FCC9C  57 66 07 BE */	clrlwi r6, r27, 0x1e
/* 802FCCA0  57 67 F7 FE */	rlwinm r7, r27, 0x1e, 0x1f, 0x1f
/* 802FCCA4  48 00 20 A1 */	bl setTexCoord__10J2DPictureFPC10JUTTexture10J2DBinding9J2DMirrorb
/* 802FCCA8  7F 03 C3 78 */	mr r3, r24
/* 802FCCAC  C0 22 C8 68 */	lfs f1, lit_1767(r2)
/* 802FCCB0  FC 40 08 90 */	fmr f2, f1
/* 802FCCB4  81 98 00 00 */	lwz r12, 0(r24)
/* 802FCCB8  81 8C 01 04 */	lwz r12, 0x104(r12)
/* 802FCCBC  7D 89 03 A6 */	mtctr r12
/* 802FCCC0  4E 80 04 21 */	bctrl 
/* 802FCCC4  39 61 00 80 */	addi r11, r1, 0x80
/* 802FCCC8  48 06 55 45 */	bl _restgpr_22
/* 802FCCCC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 802FCCD0  7C 08 03 A6 */	mtlr r0
/* 802FCCD4  38 21 00 80 */	addi r1, r1, 0x80
/* 802FCCD8  4E 80 00 20 */	blr 
