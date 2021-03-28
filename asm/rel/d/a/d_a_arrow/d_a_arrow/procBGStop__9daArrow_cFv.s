lbl_8049CB70:
/* 8049CB70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049CB74  7C 08 02 A6 */	mflr r0
/* 8049CB78  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049CB7C  39 61 00 20 */	addi r11, r1, 0x20
/* 8049CB80  4B EC 56 58 */	b _savegpr_28
/* 8049CB84  7C 7C 1B 78 */	mr r28, r3
/* 8049CB88  88 03 09 44 */	lbz r0, 0x944(r3)
/* 8049CB8C  28 00 00 00 */	cmplwi r0, 0
/* 8049CB90  40 82 00 24 */	bne lbl_8049CBB4
/* 8049CB94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8049CB98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8049CB9C  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 8049CBA0  7F C3 F3 78 */	mr r3, r30
/* 8049CBA4  38 9C 05 80 */	addi r4, r28, 0x580
/* 8049CBA8  4B BD 7A B8 */	b ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 8049CBAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8049CBB0  40 82 00 14 */	bne lbl_8049CBC4
lbl_8049CBB4:
/* 8049CBB4  38 00 00 01 */	li r0, 1
/* 8049CBB8  98 1C 09 3F */	stb r0, 0x93f(r28)
/* 8049CBBC  38 60 00 01 */	li r3, 1
/* 8049CBC0  48 00 00 88 */	b lbl_8049CC48
lbl_8049CBC4:
/* 8049CBC4  3B A0 00 00 */	li r29, 0
/* 8049CBC8  7F 83 E3 78 */	mr r3, r28
/* 8049CBCC  4B FF E1 C9 */	bl getVibAngle__9daArrow_cFv
/* 8049CBD0  7C 7F 1B 78 */	mr r31, r3
/* 8049CBD4  A8 1C 09 52 */	lha r0, 0x952(r28)
/* 8049CBD8  2C 00 00 00 */	cmpwi r0, 0
/* 8049CBDC  41 82 00 08 */	beq lbl_8049CBE4
/* 8049CBE0  3B A0 00 01 */	li r29, 1
lbl_8049CBE4:
/* 8049CBE4  7F 83 E3 78 */	mr r3, r28
/* 8049CBE8  4B FF D3 D5 */	bl decAlphaBlur__9daArrow_cFv
/* 8049CBEC  7F C3 F3 78 */	mr r3, r30
/* 8049CBF0  38 9C 05 80 */	addi r4, r28, 0x580
/* 8049CBF4  4B BD 7E C8 */	b ChkMoveBG__4dBgSFRC13cBgS_PolyInfo
/* 8049CBF8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8049CBFC  41 82 00 24 */	beq lbl_8049CC20
/* 8049CC00  7F C3 F3 78 */	mr r3, r30
/* 8049CC04  38 9C 05 80 */	addi r4, r28, 0x580
/* 8049CC08  38 A0 00 01 */	li r5, 1
/* 8049CC0C  38 DC 04 D0 */	addi r6, r28, 0x4d0
/* 8049CC10  38 FC 04 DC */	addi r7, r28, 0x4dc
/* 8049CC14  39 1C 04 E4 */	addi r8, r28, 0x4e4
/* 8049CC18  4B BD 8C 68 */	b MoveBgTransPos__4dBgSFRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz
/* 8049CC1C  3B A0 00 01 */	li r29, 1
lbl_8049CC20:
/* 8049CC20  2C 1D 00 00 */	cmpwi r29, 0
/* 8049CC24  41 82 00 18 */	beq lbl_8049CC3C
/* 8049CC28  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 8049CC2C  7C 00 FA 14 */	add r0, r0, r31
/* 8049CC30  B0 1C 04 E4 */	sth r0, 0x4e4(r28)
/* 8049CC34  7F 83 E3 78 */	mr r3, r28
/* 8049CC38  4B FF E2 2D */	bl setNormalMatrix__9daArrow_cFv
lbl_8049CC3C:
/* 8049CC3C  7F 83 E3 78 */	mr r3, r28
/* 8049CC40  4B FF E7 31 */	bl checkReget__9daArrow_cFv
/* 8049CC44  38 60 00 01 */	li r3, 1
lbl_8049CC48:
/* 8049CC48  39 61 00 20 */	addi r11, r1, 0x20
/* 8049CC4C  4B EC 55 D8 */	b _restgpr_28
/* 8049CC50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049CC54  7C 08 03 A6 */	mtlr r0
/* 8049CC58  38 21 00 20 */	addi r1, r1, 0x20
/* 8049CC5C  4E 80 00 20 */	blr 
