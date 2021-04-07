lbl_80837078:
/* 80837078  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8083707C  7C 08 02 A6 */	mflr r0
/* 80837080  90 01 00 44 */	stw r0, 0x44(r1)
/* 80837084  39 61 00 40 */	addi r11, r1, 0x40
/* 80837088  4B B2 B1 3D */	bl _savegpr_23
/* 8083708C  7C 7D 1B 78 */	mr r29, r3
/* 80837090  3C 60 80 83 */	lis r3, M_attr__10daFmtMng_c@ha /* 0x808378A8@ha */
/* 80837094  3B 23 78 A8 */	addi r25, r3, M_attr__10daFmtMng_c@l /* 0x808378A8@l */
/* 80837098  83 FD 05 6C */	lwz r31, 0x56c(r29)
/* 8083709C  38 00 00 00 */	li r0, 0
/* 808370A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 808370A4  3B C0 00 00 */	li r30, 0
/* 808370A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 808370AC  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 808370B0  48 00 00 F4 */	b lbl_808371A4
lbl_808370B4:
/* 808370B4  80 7F 00 00 */	lwz r3, 0(r31)
/* 808370B8  38 81 00 0C */	addi r4, r1, 0xc
/* 808370BC  4B 7E 29 01 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 808370C0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 808370C4  28 03 00 00 */	cmplwi r3, 0
/* 808370C8  41 82 00 D4 */	beq lbl_8083719C
/* 808370CC  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 808370D0  4B 7E 36 41 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 808370D4  7C 60 1B 78 */	mr r0, r3
/* 808370D8  83 61 00 0C */	lwz r27, 0xc(r1)
/* 808370DC  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 808370E0  7C 17 07 34 */	extsh r23, r0
/* 808370E4  7E E4 BB 78 */	mr r4, r23
/* 808370E8  4B A3 9D 3D */	bl cLib_distanceAngleS__Fss
/* 808370EC  2C 03 06 00 */	cmpwi r3, 0x600
/* 808370F0  40 81 00 50 */	ble lbl_80837140
/* 808370F4  83 01 00 0C */	lwz r24, 0xc(r1)
/* 808370F8  C0 39 00 20 */	lfs f1, 0x20(r25)
/* 808370FC  4B A3 08 59 */	bl cM_rndF__Ff
/* 80837100  FC 00 08 1E */	fctiwz f0, f1
/* 80837104  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80837108  83 81 00 14 */	lwz r28, 0x14(r1)
/* 8083710C  7F 03 C3 78 */	mr r3, r24
/* 80837110  38 80 00 2C */	li r4, 0x2c
/* 80837114  80 B8 0A CC */	lwz r5, 0xacc(r24)
/* 80837118  4B 92 0F D9 */	bl getAnmP__10daNpcCd2_cFii
/* 8083711C  7C 64 1B 78 */	mr r4, r3
/* 80837120  7F 03 C3 78 */	mr r3, r24
/* 80837124  C0 39 00 18 */	lfs f1, 0x18(r25)
/* 80837128  C0 59 00 1C */	lfs f2, 0x1c(r25)
/* 8083712C  38 A0 00 02 */	li r5, 2
/* 80837130  7F 86 E3 78 */	mr r6, r28
/* 80837134  38 E0 FF FF */	li r7, -1
/* 80837138  4B 92 1D C9 */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 8083713C  48 00 00 4C */	b lbl_80837188
lbl_80837140:
/* 80837140  83 01 00 0C */	lwz r24, 0xc(r1)
/* 80837144  C0 39 00 20 */	lfs f1, 0x20(r25)
/* 80837148  4B A3 08 0D */	bl cM_rndF__Ff
/* 8083714C  FC 00 08 1E */	fctiwz f0, f1
/* 80837150  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80837154  83 81 00 14 */	lwz r28, 0x14(r1)
/* 80837158  7F 03 C3 78 */	mr r3, r24
/* 8083715C  38 80 00 2A */	li r4, 0x2a
/* 80837160  80 B8 0A CC */	lwz r5, 0xacc(r24)
/* 80837164  4B 92 0F 8D */	bl getAnmP__10daNpcCd2_cFii
/* 80837168  7C 64 1B 78 */	mr r4, r3
/* 8083716C  7F 03 C3 78 */	mr r3, r24
/* 80837170  C0 39 00 18 */	lfs f1, 0x18(r25)
/* 80837174  C0 59 00 1C */	lfs f2, 0x1c(r25)
/* 80837178  38 A0 00 02 */	li r5, 2
/* 8083717C  7F 86 E3 78 */	mr r6, r28
/* 80837180  38 E0 FF FF */	li r7, -1
/* 80837184  4B 92 1D 7D */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
lbl_80837188:
/* 80837188  38 7B 04 E6 */	addi r3, r27, 0x4e6
/* 8083718C  7E E4 BB 78 */	mr r4, r23
/* 80837190  38 A0 00 03 */	li r5, 3
/* 80837194  38 C0 06 00 */	li r6, 0x600
/* 80837198  4B A3 94 71 */	bl cLib_addCalcAngleS2__FPssss
lbl_8083719C:
/* 8083719C  3B DE 00 01 */	addi r30, r30, 1
/* 808371A0  3B FF 00 20 */	addi r31, r31, 0x20
lbl_808371A4:
/* 808371A4  80 7D 05 88 */	lwz r3, 0x588(r29)
/* 808371A8  80 1D 05 84 */	lwz r0, 0x584(r29)
/* 808371AC  7C 03 01 D6 */	mullw r0, r3, r0
/* 808371B0  7C 1E 00 00 */	cmpw r30, r0
/* 808371B4  41 80 FF 00 */	blt lbl_808370B4
/* 808371B8  83 5D 05 6C */	lwz r26, 0x56c(r29)
/* 808371BC  3B 00 00 00 */	li r24, 0
/* 808371C0  93 01 00 08 */	stw r24, 8(r1)
/* 808371C4  48 00 00 4C */	b lbl_80837210
lbl_808371C8:
/* 808371C8  3B 20 00 00 */	li r25, 0
/* 808371CC  80 7A 00 00 */	lwz r3, 0(r26)
/* 808371D0  3C 03 00 01 */	addis r0, r3, 1
/* 808371D4  28 00 FF FF */	cmplwi r0, 0xffff
/* 808371D8  41 82 00 30 */	beq lbl_80837208
/* 808371DC  38 81 00 08 */	addi r4, r1, 8
/* 808371E0  4B 7E 27 DD */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 808371E4  80 61 00 08 */	lwz r3, 8(r1)
/* 808371E8  28 03 00 00 */	cmplwi r3, 0
/* 808371EC  41 82 00 0C */	beq lbl_808371F8
/* 808371F0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 808371F4  54 19 F7 FE */	rlwinm r25, r0, 0x1e, 0x1f, 0x1f
lbl_808371F8:
/* 808371F8  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 808371FC  40 82 00 0C */	bne lbl_80837208
/* 80837200  38 00 00 00 */	li r0, 0
/* 80837204  48 00 00 24 */	b lbl_80837228
lbl_80837208:
/* 80837208  3B 18 00 01 */	addi r24, r24, 1
/* 8083720C  3B 5A 00 20 */	addi r26, r26, 0x20
lbl_80837210:
/* 80837210  80 7D 05 88 */	lwz r3, 0x588(r29)
/* 80837214  80 1D 05 84 */	lwz r0, 0x584(r29)
/* 80837218  7C 03 01 D6 */	mullw r0, r3, r0
/* 8083721C  7C 18 00 00 */	cmpw r24, r0
/* 80837220  41 80 FF A8 */	blt lbl_808371C8
/* 80837224  38 00 00 01 */	li r0, 1
lbl_80837228:
/* 80837228  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8083722C  41 82 00 0C */	beq lbl_80837238
/* 80837230  7F A3 EB 78 */	mr r3, r29
/* 80837234  4B 7E 2A 49 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80837238:
/* 80837238  39 61 00 40 */	addi r11, r1, 0x40
/* 8083723C  4B B2 AF D5 */	bl _restgpr_23
/* 80837240  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80837244  7C 08 03 A6 */	mtlr r0
/* 80837248  38 21 00 40 */	addi r1, r1, 0x40
/* 8083724C  4E 80 00 20 */	blr 
