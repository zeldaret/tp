lbl_8015CAB8:
/* 8015CAB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015CABC  7C 08 02 A6 */	mflr r0
/* 8015CAC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015CAC4  39 61 00 20 */	addi r11, r1, 0x20
/* 8015CAC8  48 20 57 15 */	bl _savegpr_29
/* 8015CACC  7C 7E 1B 78 */	mr r30, r3
/* 8015CAD0  3C 60 80 3C */	lis r3, cNullVec__6Z2Calc@ha
/* 8015CAD4  3B E3 9D A0 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 8015CAD8  88 0D 8A 90 */	lbz r0, data_80451010(r13)
/* 8015CADC  7C 00 07 75 */	extsb. r0, r0
/* 8015CAE0  40 82 00 40 */	bne lbl_8015CB20
/* 8015CAE4  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8015CAE8  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8015CAEC  90 7F 00 24 */	stw r3, 0x24(r31)
/* 8015CAF0  90 1F 00 28 */	stw r0, 0x28(r31)
/* 8015CAF4  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8015CAF8  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 8015CAFC  38 9F 00 24 */	addi r4, r31, 0x24
/* 8015CB00  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8015CB04  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8015CB08  90 64 00 0C */	stw r3, 0xc(r4)
/* 8015CB0C  90 04 00 10 */	stw r0, 0x10(r4)
/* 8015CB10  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 8015CB14  90 04 00 14 */	stw r0, 0x14(r4)
/* 8015CB18  38 00 00 01 */	li r0, 1
/* 8015CB1C  98 0D 8A 90 */	stb r0, data_80451010(r13)
lbl_8015CB20:
/* 8015CB20  88 1E 09 48 */	lbz r0, 0x948(r30)
/* 8015CB24  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8015CB28  41 82 00 1C */	beq lbl_8015CB44
/* 8015CB2C  7F C3 F3 78 */	mr r3, r30
/* 8015CB30  81 9E 05 68 */	lwz r12, 0x568(r30)
/* 8015CB34  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8015CB38  7D 89 03 A6 */	mtctr r12
/* 8015CB3C  4E 80 04 21 */	bctrl 
/* 8015CB40  48 00 00 F4 */	b lbl_8015CC34
lbl_8015CB44:
/* 8015CB44  3B A0 00 01 */	li r29, 1
/* 8015CB48  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 8015CB4C  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8015CB50  41 82 00 7C */	beq lbl_8015CBCC
/* 8015CB54  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 8015CB58  40 82 00 74 */	bne lbl_8015CBCC
/* 8015CB5C  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8015CB60  40 82 00 6C */	bne lbl_8015CBCC
/* 8015CB64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8015CB68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8015CB6C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8015CB70  38 9E 06 7C */	addi r4, r30, 0x67c
/* 8015CB74  4B F1 7F CD */	bl ChkMoveBG_NoDABg__4dBgSFRC13cBgS_PolyInfo
/* 8015CB78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8015CB7C  40 82 00 50 */	bne lbl_8015CBCC
/* 8015CB80  38 7E 07 E0 */	addi r3, r30, 0x7e0
/* 8015CB84  4B F2 7A D5 */	bl ChkCoHit__12dCcD_GObjInfFv
/* 8015CB88  28 03 00 00 */	cmplwi r3, 0
/* 8015CB8C  40 82 00 40 */	bne lbl_8015CBCC
/* 8015CB90  38 7E 09 6C */	addi r3, r30, 0x96c
/* 8015CB94  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8015CB98  48 10 A4 95 */	bl __eq__4cXyzCFRC3Vec
/* 8015CB9C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8015CBA0  41 82 00 2C */	beq lbl_8015CBCC
/* 8015CBA4  80 1E 05 B8 */	lwz r0, 0x5b8(r30)
/* 8015CBA8  60 00 00 02 */	ori r0, r0, 2
/* 8015CBAC  90 1E 05 B8 */	stw r0, 0x5b8(r30)
/* 8015CBB0  80 1E 05 B8 */	lwz r0, 0x5b8(r30)
/* 8015CBB4  60 00 00 08 */	ori r0, r0, 8
/* 8015CBB8  90 1E 05 B8 */	stw r0, 0x5b8(r30)
/* 8015CBBC  38 7E 05 8C */	addi r3, r30, 0x58c
/* 8015CBC0  4B F1 A7 C9 */	bl SetMoveBGOnly__9dBgS_AcchFv
/* 8015CBC4  3B A0 00 00 */	li r29, 0
/* 8015CBC8  48 00 00 24 */	b lbl_8015CBEC
lbl_8015CBCC:
/* 8015CBCC  80 1E 05 B8 */	lwz r0, 0x5b8(r30)
/* 8015CBD0  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8015CBD4  90 1E 05 B8 */	stw r0, 0x5b8(r30)
/* 8015CBD8  80 1E 05 B8 */	lwz r0, 0x5b8(r30)
/* 8015CBDC  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 8015CBE0  90 1E 05 B8 */	stw r0, 0x5b8(r30)
/* 8015CBE4  38 7E 05 8C */	addi r3, r30, 0x58c
/* 8015CBE8  4B F1 A7 BD */	bl ClrMoveBGOnly__9dBgS_AcchFv
lbl_8015CBEC:
/* 8015CBEC  7F C3 F3 78 */	mr r3, r30
/* 8015CBF0  48 00 08 21 */	bl checkYogan__8daItem_cFv
/* 8015CBF4  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 8015CBF8  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 8015CBFC  41 82 00 08 */	beq lbl_8015CC04
/* 8015CC00  3B A0 00 00 */	li r29, 0
lbl_8015CC04:
/* 8015CC04  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 8015CC08  41 82 00 10 */	beq lbl_8015CC18
/* 8015CC0C  7F C3 F3 78 */	mr r3, r30
/* 8015CC10  38 9E 07 A4 */	addi r4, r30, 0x7a4
/* 8015CC14  4B EB DA B9 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
lbl_8015CC18:
/* 8015CC18  7F C3 F3 78 */	mr r3, r30
/* 8015CC1C  88 1E 09 49 */	lbz r0, 0x949(r30)
/* 8015CC20  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8015CC24  39 9F 00 24 */	addi r12, r31, 0x24
/* 8015CC28  7D 8C 02 14 */	add r12, r12, r0
/* 8015CC2C  48 20 54 59 */	bl __ptmf_scall
/* 8015CC30  60 00 00 00 */	nop 
lbl_8015CC34:
/* 8015CC34  39 61 00 20 */	addi r11, r1, 0x20
/* 8015CC38  48 20 55 F1 */	bl _restgpr_29
/* 8015CC3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015CC40  7C 08 03 A6 */	mtlr r0
/* 8015CC44  38 21 00 20 */	addi r1, r1, 0x20
/* 8015CC48  4E 80 00 20 */	blr 
