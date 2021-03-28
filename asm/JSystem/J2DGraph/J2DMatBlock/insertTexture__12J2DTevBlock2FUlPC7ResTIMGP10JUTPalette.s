lbl_802ECAE8:
/* 802ECAE8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802ECAEC  7C 08 02 A6 */	mflr r0
/* 802ECAF0  90 01 00 34 */	stw r0, 0x34(r1)
/* 802ECAF4  39 61 00 30 */	addi r11, r1, 0x30
/* 802ECAF8  48 07 56 D5 */	bl _savegpr_25
/* 802ECAFC  7C 7A 1B 78 */	mr r26, r3
/* 802ECB00  7C 9B 23 78 */	mr r27, r4
/* 802ECB04  7C BC 2B 78 */	mr r28, r5
/* 802ECB08  7C DD 33 78 */	mr r29, r6
/* 802ECB0C  28 1B 00 02 */	cmplwi r27, 2
/* 802ECB10  40 80 00 0C */	bge lbl_802ECB1C
/* 802ECB14  28 1C 00 00 */	cmplwi r28, 0
/* 802ECB18  40 82 00 0C */	bne lbl_802ECB24
lbl_802ECB1C:
/* 802ECB1C  38 60 00 00 */	li r3, 0
/* 802ECB20  48 00 02 B0 */	b lbl_802ECDD0
lbl_802ECB24:
/* 802ECB24  3B C0 00 00 */	li r30, 0
/* 802ECB28  48 00 00 28 */	b lbl_802ECB50
lbl_802ECB2C:
/* 802ECB2C  57 C3 15 BA */	rlwinm r3, r30, 2, 0x16, 0x1d
/* 802ECB30  38 03 00 64 */	addi r0, r3, 0x64
/* 802ECB34  7C 7A 00 2E */	lwzx r3, r26, r0
/* 802ECB38  28 03 00 00 */	cmplwi r3, 0
/* 802ECB3C  41 82 00 20 */	beq lbl_802ECB5C
/* 802ECB40  80 03 00 20 */	lwz r0, 0x20(r3)
/* 802ECB44  28 00 00 00 */	cmplwi r0, 0
/* 802ECB48  41 82 00 14 */	beq lbl_802ECB5C
/* 802ECB4C  3B DE 00 01 */	addi r30, r30, 1
lbl_802ECB50:
/* 802ECB50  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802ECB54  28 00 00 02 */	cmplwi r0, 2
/* 802ECB58  41 80 FF D4 */	blt lbl_802ECB2C
lbl_802ECB5C:
/* 802ECB5C  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802ECB60  7C 00 D8 40 */	cmplw r0, r27
/* 802ECB64  40 80 00 0C */	bge lbl_802ECB70
/* 802ECB68  38 60 00 00 */	li r3, 0
/* 802ECB6C  48 00 02 64 */	b lbl_802ECDD0
lbl_802ECB70:
/* 802ECB70  28 00 00 02 */	cmplwi r0, 2
/* 802ECB74  40 82 00 0C */	bne lbl_802ECB80
/* 802ECB78  38 60 00 00 */	li r3, 0
/* 802ECB7C  48 00 02 54 */	b lbl_802ECDD0
lbl_802ECB80:
/* 802ECB80  3B 20 00 00 */	li r25, 0
/* 802ECB84  88 1C 00 08 */	lbz r0, 8(r28)
/* 802ECB88  28 00 00 00 */	cmplwi r0, 0
/* 802ECB8C  41 82 00 48 */	beq lbl_802ECBD4
/* 802ECB90  28 1D 00 00 */	cmplwi r29, 0
/* 802ECB94  40 82 00 40 */	bne lbl_802ECBD4
/* 802ECB98  80 9A 00 64 */	lwz r4, 0x64(r26)
/* 802ECB9C  28 04 00 00 */	cmplwi r4, 0
/* 802ECBA0  41 82 00 34 */	beq lbl_802ECBD4
/* 802ECBA4  80 64 00 20 */	lwz r3, 0x20(r4)
/* 802ECBA8  28 03 00 00 */	cmplwi r3, 0
/* 802ECBAC  41 82 00 28 */	beq lbl_802ECBD4
/* 802ECBB0  88 03 00 08 */	lbz r0, 8(r3)
/* 802ECBB4  28 00 00 00 */	cmplwi r0, 0
/* 802ECBB8  41 82 00 1C */	beq lbl_802ECBD4
/* 802ECBBC  88 04 00 3A */	lbz r0, 0x3a(r4)
/* 802ECBC0  2C 00 00 00 */	cmpwi r0, 0
/* 802ECBC4  41 82 00 0C */	beq lbl_802ECBD0
/* 802ECBC8  2C 00 00 10 */	cmpwi r0, 0x10
/* 802ECBCC  40 82 00 08 */	bne lbl_802ECBD4
lbl_802ECBD0:
/* 802ECBD0  3B 20 00 01 */	li r25, 1
lbl_802ECBD4:
/* 802ECBD4  57 C0 15 BA */	rlwinm r0, r30, 2, 0x16, 0x1d
/* 802ECBD8  7C 7A 02 14 */	add r3, r26, r0
/* 802ECBDC  83 E3 00 64 */	lwz r31, 0x64(r3)
/* 802ECBE0  28 1F 00 00 */	cmplwi r31, 0
/* 802ECBE4  40 82 00 BC */	bne lbl_802ECCA0
/* 802ECBE8  38 60 00 40 */	li r3, 0x40
/* 802ECBEC  4B FE 20 61 */	bl __nw__FUl
/* 802ECBF0  7C 7E 1B 79 */	or. r30, r3, r3
/* 802ECBF4  41 82 00 24 */	beq lbl_802ECC18
/* 802ECBF8  38 00 00 00 */	li r0, 0
/* 802ECBFC  90 1E 00 28 */	stw r0, 0x28(r30)
/* 802ECC00  7F 84 E3 78 */	mr r4, r28
/* 802ECC04  7F 25 CB 78 */	mr r5, r25
/* 802ECC08  4B FF 16 A1 */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802ECC0C  88 1E 00 3B */	lbz r0, 0x3b(r30)
/* 802ECC10  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 802ECC14  98 1E 00 3B */	stb r0, 0x3b(r30)
lbl_802ECC18:
/* 802ECC18  28 1E 00 00 */	cmplwi r30, 0
/* 802ECC1C  40 82 00 0C */	bne lbl_802ECC28
/* 802ECC20  38 60 00 00 */	li r3, 0
/* 802ECC24  48 00 01 AC */	b lbl_802ECDD0
lbl_802ECC28:
/* 802ECC28  28 1D 00 00 */	cmplwi r29, 0
/* 802ECC2C  41 82 00 14 */	beq lbl_802ECC40
/* 802ECC30  7F C3 F3 78 */	mr r3, r30
/* 802ECC34  7F 84 E3 78 */	mr r4, r28
/* 802ECC38  7F A5 EB 78 */	mr r5, r29
/* 802ECC3C  4B FF 18 11 */	bl storeTIMG__10JUTTextureFPC7ResTIMGP10JUTPalette
lbl_802ECC40:
/* 802ECC40  28 1B 00 00 */	cmplwi r27, 0
/* 802ECC44  40 82 00 1C */	bne lbl_802ECC60
/* 802ECC48  80 1A 00 64 */	lwz r0, 0x64(r26)
/* 802ECC4C  90 1A 00 68 */	stw r0, 0x68(r26)
/* 802ECC50  80 1A 00 6C */	lwz r0, 0x6c(r26)
/* 802ECC54  90 1A 00 70 */	stw r0, 0x70(r26)
/* 802ECC58  A0 1A 00 04 */	lhz r0, 4(r26)
/* 802ECC5C  B0 1A 00 06 */	sth r0, 6(r26)
lbl_802ECC60:
/* 802ECC60  57 60 10 3A */	slwi r0, r27, 2
/* 802ECC64  7C 7A 02 14 */	add r3, r26, r0
/* 802ECC68  93 C3 00 64 */	stw r30, 0x64(r3)
/* 802ECC6C  7F 43 D3 78 */	mr r3, r26
/* 802ECC70  57 64 06 3E */	clrlwi r4, r27, 0x18
/* 802ECC74  38 A0 00 01 */	li r5, 1
/* 802ECC78  81 9A 00 00 */	lwz r12, 0(r26)
/* 802ECC7C  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 802ECC80  7D 89 03 A6 */	mtctr r12
/* 802ECC84  4E 80 04 21 */	bctrl 
/* 802ECC88  88 7A 00 78 */	lbz r3, 0x78(r26)
/* 802ECC8C  38 00 00 01 */	li r0, 1
/* 802ECC90  7C 00 D8 30 */	slw r0, r0, r27
/* 802ECC94  7C 60 03 78 */	or r0, r3, r0
/* 802ECC98  98 1A 00 78 */	stb r0, 0x78(r26)
/* 802ECC9C  48 00 01 0C */	b lbl_802ECDA8
lbl_802ECCA0:
/* 802ECCA0  28 1D 00 00 */	cmplwi r29, 0
/* 802ECCA4  40 82 00 18 */	bne lbl_802ECCBC
/* 802ECCA8  7F E3 FB 78 */	mr r3, r31
/* 802ECCAC  7F 84 E3 78 */	mr r4, r28
/* 802ECCB0  7F 25 CB 78 */	mr r5, r25
/* 802ECCB4  4B FF 15 F5 */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802ECCB8  48 00 00 14 */	b lbl_802ECCCC
lbl_802ECCBC:
/* 802ECCBC  7F E3 FB 78 */	mr r3, r31
/* 802ECCC0  7F 84 E3 78 */	mr r4, r28
/* 802ECCC4  7F A5 EB 78 */	mr r5, r29
/* 802ECCC8  4B FF 17 85 */	bl storeTIMG__10JUTTextureFPC7ResTIMGP10JUTPalette
lbl_802ECCCC:
/* 802ECCCC  38 E0 00 00 */	li r7, 0
/* 802ECCD0  38 C0 00 01 */	li r6, 1
/* 802ECCD4  38 61 00 08 */	addi r3, r1, 8
/* 802ECCD8  48 00 00 24 */	b lbl_802ECCFC
lbl_802ECCDC:
/* 802ECCDC  88 9A 00 78 */	lbz r4, 0x78(r26)
/* 802ECCE0  54 E5 06 3E */	clrlwi r5, r7, 0x18
/* 802ECCE4  7C C0 28 30 */	slw r0, r6, r5
/* 802ECCE8  7C 84 00 38 */	and r4, r4, r0
/* 802ECCEC  30 04 FF FF */	addic r0, r4, -1
/* 802ECCF0  7C 00 21 10 */	subfe r0, r0, r4
/* 802ECCF4  7C 03 29 AE */	stbx r0, r3, r5
/* 802ECCF8  38 E7 00 01 */	addi r7, r7, 1
lbl_802ECCFC:
/* 802ECCFC  54 E0 06 3E */	clrlwi r0, r7, 0x18
/* 802ECD00  28 00 00 02 */	cmplwi r0, 2
/* 802ECD04  41 80 FF D8 */	blt lbl_802ECCDC
/* 802ECD08  28 1B 00 00 */	cmplwi r27, 0
/* 802ECD0C  40 82 00 30 */	bne lbl_802ECD3C
/* 802ECD10  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802ECD14  28 00 00 01 */	cmplwi r0, 1
/* 802ECD18  40 82 00 24 */	bne lbl_802ECD3C
/* 802ECD1C  80 1A 00 64 */	lwz r0, 0x64(r26)
/* 802ECD20  90 1A 00 68 */	stw r0, 0x68(r26)
/* 802ECD24  80 1A 00 6C */	lwz r0, 0x6c(r26)
/* 802ECD28  90 1A 00 70 */	stw r0, 0x70(r26)
/* 802ECD2C  A0 1A 00 04 */	lhz r0, 4(r26)
/* 802ECD30  B0 1A 00 06 */	sth r0, 6(r26)
/* 802ECD34  88 01 00 08 */	lbz r0, 8(r1)
/* 802ECD38  98 01 00 09 */	stb r0, 9(r1)
lbl_802ECD3C:
/* 802ECD3C  57 60 10 3A */	slwi r0, r27, 2
/* 802ECD40  7C 7A 02 14 */	add r3, r26, r0
/* 802ECD44  93 E3 00 64 */	stw r31, 0x64(r3)
/* 802ECD48  88 1A 00 78 */	lbz r0, 0x78(r26)
/* 802ECD4C  54 00 06 30 */	rlwinm r0, r0, 0, 0x18, 0x18
/* 802ECD50  98 1A 00 78 */	stb r0, 0x78(r26)
/* 802ECD54  38 E0 00 00 */	li r7, 0
/* 802ECD58  38 A1 00 08 */	addi r5, r1, 8
/* 802ECD5C  38 60 00 01 */	li r3, 1
/* 802ECD60  48 00 00 28 */	b lbl_802ECD88
lbl_802ECD64:
/* 802ECD64  54 E6 06 3E */	clrlwi r6, r7, 0x18
/* 802ECD68  7C 05 30 AE */	lbzx r0, r5, r6
/* 802ECD6C  28 00 00 00 */	cmplwi r0, 0
/* 802ECD70  41 82 00 14 */	beq lbl_802ECD84
/* 802ECD74  88 9A 00 78 */	lbz r4, 0x78(r26)
/* 802ECD78  7C 60 30 30 */	slw r0, r3, r6
/* 802ECD7C  7C 80 03 78 */	or r0, r4, r0
/* 802ECD80  98 1A 00 78 */	stb r0, 0x78(r26)
lbl_802ECD84:
/* 802ECD84  38 E7 00 01 */	addi r7, r7, 1
lbl_802ECD88:
/* 802ECD88  54 E0 06 3E */	clrlwi r0, r7, 0x18
/* 802ECD8C  28 00 00 02 */	cmplwi r0, 2
/* 802ECD90  41 80 FF D4 */	blt lbl_802ECD64
/* 802ECD94  88 7A 00 78 */	lbz r3, 0x78(r26)
/* 802ECD98  38 00 00 01 */	li r0, 1
/* 802ECD9C  7C 00 D8 30 */	slw r0, r0, r27
/* 802ECDA0  7C 60 03 78 */	or r0, r3, r0
/* 802ECDA4  98 1A 00 78 */	stb r0, 0x78(r26)
lbl_802ECDA8:
/* 802ECDA8  38 80 00 00 */	li r4, 0
/* 802ECDAC  57 60 10 3A */	slwi r0, r27, 2
/* 802ECDB0  7C 7A 02 14 */	add r3, r26, r0
/* 802ECDB4  90 83 00 6C */	stw r4, 0x6c(r3)
/* 802ECDB8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802ECDBC  38 83 FF FF */	addi r4, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802ECDC0  57 60 08 3C */	slwi r0, r27, 1
/* 802ECDC4  7C 7A 02 14 */	add r3, r26, r0
/* 802ECDC8  B0 83 00 04 */	sth r4, 4(r3)
/* 802ECDCC  38 60 00 01 */	li r3, 1
lbl_802ECDD0:
/* 802ECDD0  39 61 00 30 */	addi r11, r1, 0x30
/* 802ECDD4  48 07 54 45 */	bl _restgpr_25
/* 802ECDD8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802ECDDC  7C 08 03 A6 */	mtlr r0
/* 802ECDE0  38 21 00 30 */	addi r1, r1, 0x30
/* 802ECDE4  4E 80 00 20 */	blr 
