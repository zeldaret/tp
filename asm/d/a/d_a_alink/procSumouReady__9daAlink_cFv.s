lbl_800EAA28:
/* 800EAA28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800EAA2C  7C 08 02 A6 */	mflr r0
/* 800EAA30  90 01 00 24 */	stw r0, 0x24(r1)
/* 800EAA34  39 61 00 20 */	addi r11, r1, 0x20
/* 800EAA38  48 27 77 A5 */	bl _savegpr_29
/* 800EAA3C  7C 7F 1B 78 */	mr r31, r3
/* 800EAA40  38 00 00 04 */	li r0, 4
/* 800EAA44  98 03 2F 99 */	stb r0, 0x2f99(r3)
/* 800EAA48  4B FF FD FD */	bl checkSumouVsActor__9daAlink_cFv
/* 800EAA4C  2C 03 00 00 */	cmpwi r3, 0
/* 800EAA50  40 82 00 0C */	bne lbl_800EAA5C
/* 800EAA54  38 60 00 01 */	li r3, 1
/* 800EAA58  48 00 01 DC */	b lbl_800EAC34
lbl_800EAA5C:
/* 800EAA5C  88 1F 05 6A */	lbz r0, 0x56a(r31)
/* 800EAA60  28 00 00 02 */	cmplwi r0, 2
/* 800EAA64  41 82 00 14 */	beq lbl_800EAA78
/* 800EAA68  28 00 00 03 */	cmplwi r0, 3
/* 800EAA6C  41 82 00 0C */	beq lbl_800EAA78
/* 800EAA70  28 00 00 04 */	cmplwi r0, 4
/* 800EAA74  40 82 00 54 */	bne lbl_800EAAC8
lbl_800EAA78:
/* 800EAA78  7F E3 FB 78 */	mr r3, r31
/* 800EAA7C  4B FF FE B1 */	bl setSumouPunchStatus__9daAlink_cFv
/* 800EAA80  7F E3 FB 78 */	mr r3, r31
/* 800EAA84  38 80 00 15 */	li r4, 0x15
/* 800EAA88  4B FC 87 E1 */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 800EAA8C  38 00 00 05 */	li r0, 5
/* 800EAA90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800EAA94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800EAA98  98 03 5E 81 */	stb r0, 0x5e81(r3)
/* 800EAA9C  88 1F 2F 8D */	lbz r0, 0x2f8d(r31)
/* 800EAAA0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800EAAA4  41 82 00 0C */	beq lbl_800EAAB0
/* 800EAAA8  38 00 00 01 */	li r0, 1
/* 800EAAAC  B0 1F 30 0C */	sth r0, 0x300c(r31)
lbl_800EAAB0:
/* 800EAAB0  7F E3 FB 78 */	mr r3, r31
/* 800EAAB4  4B FF FE 55 */	bl sumouPunchTrigger__9daAlink_cFv
/* 800EAAB8  2C 03 00 00 */	cmpwi r3, 0
/* 800EAABC  41 82 00 0C */	beq lbl_800EAAC8
/* 800EAAC0  38 00 00 01 */	li r0, 1
/* 800EAAC4  B0 1F 30 0E */	sth r0, 0x300e(r31)
lbl_800EAAC8:
/* 800EAAC8  A3 DF 1F 58 */	lhz r30, 0x1f58(r31)
/* 800EAACC  7F E3 FB 78 */	mr r3, r31
/* 800EAAD0  38 80 01 40 */	li r4, 0x140
/* 800EAAD4  4B FC 19 7D */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800EAAD8  A0 63 00 00 */	lhz r3, 0(r3)
/* 800EAADC  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 800EAAE0  7C 00 18 40 */	cmplw r0, r3
/* 800EAAE4  40 82 00 24 */	bne lbl_800EAB08
/* 800EAAE8  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 800EAAEC  C0 22 93 74 */	lfs f1, lit_8502(r2)
/* 800EAAF0  48 23 D9 3D */	bl checkPass__12J3DFrameCtrlFf
/* 800EAAF4  2C 03 00 00 */	cmpwi r3, 0
/* 800EAAF8  41 82 00 10 */	beq lbl_800EAB08
/* 800EAAFC  38 00 00 FE */	li r0, 0xfe
/* 800EAB00  98 1F 2F 92 */	stb r0, 0x2f92(r31)
/* 800EAB04  98 1F 2F 93 */	stb r0, 0x2f93(r31)
lbl_800EAB08:
/* 800EAB08  88 1F 05 6A */	lbz r0, 0x56a(r31)
/* 800EAB0C  28 00 00 03 */	cmplwi r0, 3
/* 800EAB10  40 82 00 38 */	bne lbl_800EAB48
/* 800EAB14  7F E3 FB 78 */	mr r3, r31
/* 800EAB18  38 80 01 40 */	li r4, 0x140
/* 800EAB1C  4B FC 24 65 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800EAB20  38 00 00 0C */	li r0, 0xc
/* 800EAB24  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 800EAB28  38 00 00 04 */	li r0, 4
/* 800EAB2C  98 1F 05 6A */	stb r0, 0x56a(r31)
/* 800EAB30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800EAB34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800EAB38  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800EAB3C  54 00 04 E2 */	rlwinm r0, r0, 0, 0x13, 0x11
/* 800EAB40  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800EAB44  48 00 00 EC */	b lbl_800EAC30
lbl_800EAB48:
/* 800EAB48  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 800EAB4C  48 07 39 81 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800EAB50  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800EAB54  41 82 00 DC */	beq lbl_800EAC30
/* 800EAB58  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 800EAB5C  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800EAB60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EAB64  40 81 00 60 */	ble lbl_800EABC4
/* 800EAB68  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800EAB6C  A8 1F 2F E2 */	lha r0, 0x2fe2(r31)
/* 800EAB70  7C 03 00 50 */	subf r0, r3, r0
/* 800EAB74  7C 1D 07 34 */	extsh r29, r0
/* 800EAB78  7F A3 EB 78 */	mr r3, r29
/* 800EAB7C  48 27 A5 55 */	bl abs
/* 800EAB80  7C 7E 1B 78 */	mr r30, r3
/* 800EAB84  A8 7F 2F E2 */	lha r3, 0x2fe2(r31)
/* 800EAB88  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 800EAB8C  48 18 62 99 */	bl cLib_distanceAngleS__Fss
/* 800EAB90  2C 1E 08 00 */	cmpwi r30, 0x800
/* 800EAB94  40 81 00 30 */	ble lbl_800EABC4
/* 800EAB98  2C 1E 78 00 */	cmpwi r30, 0x7800
/* 800EAB9C  40 80 00 28 */	bge lbl_800EABC4
/* 800EABA0  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800EABA4  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800EABA8  7F A0 07 35 */	extsh. r0, r29
/* 800EABAC  40 81 00 10 */	ble lbl_800EABBC
/* 800EABB0  38 00 00 02 */	li r0, 2
/* 800EABB4  98 1F 2F 98 */	stb r0, 0x2f98(r31)
/* 800EABB8  48 00 00 0C */	b lbl_800EABC4
lbl_800EABBC:
/* 800EABBC  38 00 00 03 */	li r0, 3
/* 800EABC0  98 1F 2F 98 */	stb r0, 0x2f98(r31)
lbl_800EABC4:
/* 800EABC4  88 1F 05 6A */	lbz r0, 0x56a(r31)
/* 800EABC8  28 00 00 1C */	cmplwi r0, 0x1c
/* 800EABCC  41 82 00 44 */	beq lbl_800EAC10
/* 800EABD0  28 00 00 1B */	cmplwi r0, 0x1b
/* 800EABD4  41 82 00 3C */	beq lbl_800EAC10
/* 800EABD8  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 800EABDC  2C 00 00 00 */	cmpwi r0, 0
/* 800EABE0  40 82 00 30 */	bne lbl_800EAC10
/* 800EABE4  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 800EABE8  2C 00 00 00 */	cmpwi r0, 0
/* 800EABEC  40 82 00 24 */	bne lbl_800EAC10
/* 800EABF0  80 7F 28 58 */	lwz r3, 0x2858(r31)
/* 800EABF4  80 03 0E 74 */	lwz r0, 0xe74(r3)
/* 800EABF8  2C 00 00 03 */	cmpwi r0, 3
/* 800EABFC  40 82 00 2C */	bne lbl_800EAC28
/* 800EAC00  7F E3 FB 78 */	mr r3, r31
/* 800EAC04  4B FC 8D 01 */	bl checkZeroSpeedF__9daAlink_cCFv
/* 800EAC08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800EAC0C  40 82 00 1C */	bne lbl_800EAC28
lbl_800EAC10:
/* 800EAC10  7F E3 FB 78 */	mr r3, r31
/* 800EAC14  A8 9F 30 0C */	lha r4, 0x300c(r31)
/* 800EAC18  A8 BF 30 0E */	lha r5, 0x300e(r31)
/* 800EAC1C  38 C0 00 00 */	li r6, 0
/* 800EAC20  48 00 0A 05 */	bl procSumouActionInit__9daAlink_cFiii
/* 800EAC24  48 00 00 0C */	b lbl_800EAC30
lbl_800EAC28:
/* 800EAC28  7F E3 FB 78 */	mr r3, r31
/* 800EAC2C  48 00 05 DD */	bl procSumouSideMoveInit__9daAlink_cFv
lbl_800EAC30:
/* 800EAC30  38 60 00 01 */	li r3, 1
lbl_800EAC34:
/* 800EAC34  39 61 00 20 */	addi r11, r1, 0x20
/* 800EAC38  48 27 75 F1 */	bl _restgpr_29
/* 800EAC3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800EAC40  7C 08 03 A6 */	mtlr r0
/* 800EAC44  38 21 00 20 */	addi r1, r1, 0x20
/* 800EAC48  4E 80 00 20 */	blr 
