lbl_8020E9CC:
/* 8020E9CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8020E9D0  7C 08 02 A6 */	mflr r0
/* 8020E9D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8020E9D8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8020E9DC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8020E9E0  7C 7E 1B 78 */	mr r30, r3
/* 8020E9E4  4B FE B5 C9 */	bl dMw_LEFT_TRIGGER__Fv
/* 8020E9E8  2C 03 00 00 */	cmpwi r3, 0
/* 8020E9EC  41 82 01 60 */	beq lbl_8020EB4C
/* 8020E9F0  7F C3 F3 78 */	mr r3, r30
/* 8020E9F4  4B FF EC A5 */	bl isEventRunCheck__11dMeterMap_cFv
/* 8020E9F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020E9FC  40 82 01 50 */	bne lbl_8020EB4C
/* 8020EA00  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8020EA04  3B E3 01 88 */	addi r31, r3, g_meter2_info@l
/* 8020EA08  88 1F 00 BF */	lbz r0, 0xbf(r31)
/* 8020EA0C  28 00 00 00 */	cmplwi r0, 0
/* 8020EA10  41 82 00 0C */	beq lbl_8020EA1C
/* 8020EA14  28 00 00 01 */	cmplwi r0, 1
/* 8020EA18  40 82 01 34 */	bne lbl_8020EB4C
lbl_8020EA1C:
/* 8020EA1C  28 00 00 01 */	cmplwi r0, 1
/* 8020EA20  40 82 00 58 */	bne lbl_8020EA78
/* 8020EA24  88 1E 00 2D */	lbz r0, 0x2d(r30)
/* 8020EA28  28 00 00 00 */	cmplwi r0, 0
/* 8020EA2C  41 82 03 1C */	beq lbl_8020ED48
/* 8020EA30  7F C3 F3 78 */	mr r3, r30
/* 8020EA34  4B FF EE 89 */	bl setDispPosOutsideFlg_SE_On__11dMeterMap_cFv
/* 8020EA38  38 00 00 B9 */	li r0, 0xb9
/* 8020EA3C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8020EA40  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8020EA44  38 81 00 20 */	addi r4, r1, 0x20
/* 8020EA48  38 A0 00 00 */	li r5, 0
/* 8020EA4C  38 C0 00 00 */	li r6, 0
/* 8020EA50  38 E0 00 00 */	li r7, 0
/* 8020EA54  C0 22 AE 34 */	lfs f1, lit_4129(r2)
/* 8020EA58  FC 40 08 90 */	fmr f2, f1
/* 8020EA5C  C0 62 AE 44 */	lfs f3, lit_4515(r2)
/* 8020EA60  FC 80 18 90 */	fmr f4, f3
/* 8020EA64  39 00 00 00 */	li r8, 0
/* 8020EA68  48 09 CF 1D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8020EA6C  38 00 00 00 */	li r0, 0
/* 8020EA70  98 1F 00 BF */	stb r0, 0xbf(r31)
/* 8020EA74  48 00 02 D4 */	b lbl_8020ED48
lbl_8020EA78:
/* 8020EA78  28 00 00 00 */	cmplwi r0, 0
/* 8020EA7C  40 82 02 CC */	bne lbl_8020ED48
/* 8020EA80  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8020EA84  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8020EA88  A0 03 00 A2 */	lhz r0, 0xa2(r3)
/* 8020EA8C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8020EA90  40 82 00 70 */	bne lbl_8020EB00
/* 8020EA94  4B FF FB 8D */	bl isFmapScreen__11dMeterMap_cFv
/* 8020EA98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020EA9C  40 82 00 10 */	bne lbl_8020EAAC
/* 8020EAA0  4B FF FC 6D */	bl isDmapScreen__11dMeterMap_cFv
/* 8020EAA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020EAA8  41 82 00 58 */	beq lbl_8020EB00
lbl_8020EAAC:
/* 8020EAAC  38 00 00 02 */	li r0, 2
/* 8020EAB0  98 1F 00 BF */	stb r0, 0xbf(r31)
/* 8020EAB4  38 00 02 00 */	li r0, 0x200
/* 8020EAB8  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8020EABC  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8020EAC0  B0 03 00 AA */	sth r0, 0xaa(r3)
/* 8020EAC4  38 00 00 B8 */	li r0, 0xb8
/* 8020EAC8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8020EACC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8020EAD0  38 81 00 1C */	addi r4, r1, 0x1c
/* 8020EAD4  38 A0 00 00 */	li r5, 0
/* 8020EAD8  38 C0 00 00 */	li r6, 0
/* 8020EADC  38 E0 00 00 */	li r7, 0
/* 8020EAE0  C0 22 AE 34 */	lfs f1, lit_4129(r2)
/* 8020EAE4  FC 40 08 90 */	fmr f2, f1
/* 8020EAE8  C0 62 AE 44 */	lfs f3, lit_4515(r2)
/* 8020EAEC  FC 80 18 90 */	fmr f4, f3
/* 8020EAF0  39 00 00 00 */	li r8, 0
/* 8020EAF4  48 09 CE 91 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8020EAF8  48 00 FE D9 */	bl dMeter2Info_set2DVibration__Fv
/* 8020EAFC  48 00 02 4C */	b lbl_8020ED48
lbl_8020EB00:
/* 8020EB00  7F C3 F3 78 */	mr r3, r30
/* 8020EB04  4B FF ED 71 */	bl setDispPosInsideFlg_SE_On__11dMeterMap_cFv
/* 8020EB08  38 00 00 B8 */	li r0, 0xb8
/* 8020EB0C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8020EB10  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8020EB14  38 81 00 18 */	addi r4, r1, 0x18
/* 8020EB18  38 A0 00 00 */	li r5, 0
/* 8020EB1C  38 C0 00 00 */	li r6, 0
/* 8020EB20  38 E0 00 00 */	li r7, 0
/* 8020EB24  C0 22 AE 34 */	lfs f1, lit_4129(r2)
/* 8020EB28  FC 40 08 90 */	fmr f2, f1
/* 8020EB2C  C0 62 AE 44 */	lfs f3, lit_4515(r2)
/* 8020EB30  FC 80 18 90 */	fmr f4, f3
/* 8020EB34  39 00 00 00 */	li r8, 0
/* 8020EB38  48 09 CE 4D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8020EB3C  48 00 FE 95 */	bl dMeter2Info_set2DVibration__Fv
/* 8020EB40  38 00 00 01 */	li r0, 1
/* 8020EB44  98 1F 00 BF */	stb r0, 0xbf(r31)
/* 8020EB48  48 00 02 00 */	b lbl_8020ED48
lbl_8020EB4C:
/* 8020EB4C  4B FE B4 A9 */	bl dMw_RIGHT_TRIGGER__Fv
/* 8020EB50  2C 03 00 00 */	cmpwi r3, 0
/* 8020EB54  41 82 01 F4 */	beq lbl_8020ED48
/* 8020EB58  7F C3 F3 78 */	mr r3, r30
/* 8020EB5C  4B FF EB 3D */	bl isEventRunCheck__11dMeterMap_cFv
/* 8020EB60  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020EB64  40 82 01 E4 */	bne lbl_8020ED48
/* 8020EB68  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8020EB6C  3B E3 01 88 */	addi r31, r3, g_meter2_info@l
/* 8020EB70  88 1F 00 BF */	lbz r0, 0xbf(r31)
/* 8020EB74  28 00 00 00 */	cmplwi r0, 0
/* 8020EB78  41 82 00 0C */	beq lbl_8020EB84
/* 8020EB7C  28 00 00 01 */	cmplwi r0, 1
/* 8020EB80  40 82 01 C8 */	bne lbl_8020ED48
lbl_8020EB84:
/* 8020EB84  28 00 00 00 */	cmplwi r0, 0
/* 8020EB88  40 82 00 E8 */	bne lbl_8020EC70
/* 8020EB8C  4B FF EA C5 */	bl isEnableDispMapAndMapDispSizeTypeNo__11dMeterMap_cFv
/* 8020EB90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020EB94  41 82 00 5C */	beq lbl_8020EBF0
/* 8020EB98  88 1E 00 2D */	lbz r0, 0x2d(r30)
/* 8020EB9C  28 00 00 00 */	cmplwi r0, 0
/* 8020EBA0  40 82 01 A8 */	bne lbl_8020ED48
/* 8020EBA4  7F C3 F3 78 */	mr r3, r30
/* 8020EBA8  4B FF EC CD */	bl setDispPosInsideFlg_SE_On__11dMeterMap_cFv
/* 8020EBAC  38 00 00 B8 */	li r0, 0xb8
/* 8020EBB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020EBB4  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8020EBB8  38 81 00 14 */	addi r4, r1, 0x14
/* 8020EBBC  38 A0 00 00 */	li r5, 0
/* 8020EBC0  38 C0 00 00 */	li r6, 0
/* 8020EBC4  38 E0 00 00 */	li r7, 0
/* 8020EBC8  C0 22 AE 34 */	lfs f1, lit_4129(r2)
/* 8020EBCC  FC 40 08 90 */	fmr f2, f1
/* 8020EBD0  C0 62 AE 44 */	lfs f3, lit_4515(r2)
/* 8020EBD4  FC 80 18 90 */	fmr f4, f3
/* 8020EBD8  39 00 00 00 */	li r8, 0
/* 8020EBDC  48 09 CD A9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8020EBE0  48 00 FD F1 */	bl dMeter2Info_set2DVibration__Fv
/* 8020EBE4  38 00 00 01 */	li r0, 1
/* 8020EBE8  98 1F 00 BF */	stb r0, 0xbf(r31)
/* 8020EBEC  48 00 01 5C */	b lbl_8020ED48
lbl_8020EBF0:
/* 8020EBF0  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8020EBF4  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8020EBF8  A0 03 00 A2 */	lhz r0, 0xa2(r3)
/* 8020EBFC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8020EC00  40 82 01 48 */	bne lbl_8020ED48
/* 8020EC04  4B FF FA 1D */	bl isFmapScreen__11dMeterMap_cFv
/* 8020EC08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020EC0C  40 82 00 10 */	bne lbl_8020EC1C
/* 8020EC10  4B FF FA FD */	bl isDmapScreen__11dMeterMap_cFv
/* 8020EC14  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020EC18  41 82 01 30 */	beq lbl_8020ED48
lbl_8020EC1C:
/* 8020EC1C  38 00 00 02 */	li r0, 2
/* 8020EC20  98 1F 00 BF */	stb r0, 0xbf(r31)
/* 8020EC24  38 00 04 00 */	li r0, 0x400
/* 8020EC28  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8020EC2C  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8020EC30  B0 03 00 AA */	sth r0, 0xaa(r3)
/* 8020EC34  38 00 00 B8 */	li r0, 0xb8
/* 8020EC38  90 01 00 10 */	stw r0, 0x10(r1)
/* 8020EC3C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8020EC40  38 81 00 10 */	addi r4, r1, 0x10
/* 8020EC44  38 A0 00 00 */	li r5, 0
/* 8020EC48  38 C0 00 00 */	li r6, 0
/* 8020EC4C  38 E0 00 00 */	li r7, 0
/* 8020EC50  C0 22 AE 34 */	lfs f1, lit_4129(r2)
/* 8020EC54  FC 40 08 90 */	fmr f2, f1
/* 8020EC58  C0 62 AE 44 */	lfs f3, lit_4515(r2)
/* 8020EC5C  FC 80 18 90 */	fmr f4, f3
/* 8020EC60  39 00 00 00 */	li r8, 0
/* 8020EC64  48 09 CD 21 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8020EC68  48 00 FD 69 */	bl dMeter2Info_set2DVibration__Fv
/* 8020EC6C  48 00 00 DC */	b lbl_8020ED48
lbl_8020EC70:
/* 8020EC70  28 00 00 01 */	cmplwi r0, 1
/* 8020EC74  40 82 00 D4 */	bne lbl_8020ED48
/* 8020EC78  88 1E 00 2D */	lbz r0, 0x2d(r30)
/* 8020EC7C  28 00 00 00 */	cmplwi r0, 0
/* 8020EC80  41 82 00 C8 */	beq lbl_8020ED48
/* 8020EC84  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8020EC88  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8020EC8C  A0 03 00 A2 */	lhz r0, 0xa2(r3)
/* 8020EC90  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8020EC94  40 82 00 70 */	bne lbl_8020ED04
/* 8020EC98  4B FF F9 89 */	bl isFmapScreen__11dMeterMap_cFv
/* 8020EC9C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020ECA0  40 82 00 10 */	bne lbl_8020ECB0
/* 8020ECA4  4B FF FA 69 */	bl isDmapScreen__11dMeterMap_cFv
/* 8020ECA8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020ECAC  41 82 00 58 */	beq lbl_8020ED04
lbl_8020ECB0:
/* 8020ECB0  38 00 00 02 */	li r0, 2
/* 8020ECB4  98 1F 00 BF */	stb r0, 0xbf(r31)
/* 8020ECB8  38 00 04 00 */	li r0, 0x400
/* 8020ECBC  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8020ECC0  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8020ECC4  B0 03 00 AA */	sth r0, 0xaa(r3)
/* 8020ECC8  38 00 00 B8 */	li r0, 0xb8
/* 8020ECCC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8020ECD0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8020ECD4  38 81 00 0C */	addi r4, r1, 0xc
/* 8020ECD8  38 A0 00 00 */	li r5, 0
/* 8020ECDC  38 C0 00 00 */	li r6, 0
/* 8020ECE0  38 E0 00 00 */	li r7, 0
/* 8020ECE4  C0 22 AE 34 */	lfs f1, lit_4129(r2)
/* 8020ECE8  FC 40 08 90 */	fmr f2, f1
/* 8020ECEC  C0 62 AE 44 */	lfs f3, lit_4515(r2)
/* 8020ECF0  FC 80 18 90 */	fmr f4, f3
/* 8020ECF4  39 00 00 00 */	li r8, 0
/* 8020ECF8  48 09 CC 8D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8020ECFC  48 00 FC D5 */	bl dMeter2Info_set2DVibration__Fv
/* 8020ED00  48 00 00 48 */	b lbl_8020ED48
lbl_8020ED04:
/* 8020ED04  7F C3 F3 78 */	mr r3, r30
/* 8020ED08  4B FF EB B5 */	bl setDispPosOutsideFlg_SE_On__11dMeterMap_cFv
/* 8020ED0C  38 00 00 B9 */	li r0, 0xb9
/* 8020ED10  90 01 00 08 */	stw r0, 8(r1)
/* 8020ED14  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8020ED18  38 81 00 08 */	addi r4, r1, 8
/* 8020ED1C  38 A0 00 00 */	li r5, 0
/* 8020ED20  38 C0 00 00 */	li r6, 0
/* 8020ED24  38 E0 00 00 */	li r7, 0
/* 8020ED28  C0 22 AE 34 */	lfs f1, lit_4129(r2)
/* 8020ED2C  FC 40 08 90 */	fmr f2, f1
/* 8020ED30  C0 62 AE 44 */	lfs f3, lit_4515(r2)
/* 8020ED34  FC 80 18 90 */	fmr f4, f3
/* 8020ED38  39 00 00 00 */	li r8, 0
/* 8020ED3C  48 09 CC 49 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8020ED40  38 00 00 00 */	li r0, 0
/* 8020ED44  98 1F 00 BF */	stb r0, 0xbf(r31)
lbl_8020ED48:
/* 8020ED48  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8020ED4C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8020ED50  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8020ED54  7C 08 03 A6 */	mtlr r0
/* 8020ED58  38 21 00 30 */	addi r1, r1, 0x30
/* 8020ED5C  4E 80 00 20 */	blr 
