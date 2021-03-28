lbl_80D0ED68:
/* 80D0ED68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D0ED6C  7C 08 02 A6 */	mflr r0
/* 80D0ED70  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D0ED74  39 61 00 20 */	addi r11, r1, 0x20
/* 80D0ED78  4B 65 34 60 */	b _savegpr_28
/* 80D0ED7C  7C 7C 1B 78 */	mr r28, r3
/* 80D0ED80  7C 9D 23 78 */	mr r29, r4
/* 80D0ED84  3B E0 00 00 */	li r31, 0
/* 80D0ED88  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80D0ED8C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D0ED90  2C 04 00 FF */	cmpwi r4, 0xff
/* 80D0ED94  40 82 00 0C */	bne lbl_80D0EDA0
/* 80D0ED98  3B C0 00 01 */	li r30, 1
/* 80D0ED9C  48 00 00 1C */	b lbl_80D0EDB8
lbl_80D0EDA0:
/* 80D0EDA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D0EDA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D0EDA8  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 80D0EDAC  7C 05 07 74 */	extsb r5, r0
/* 80D0EDB0  4B 32 65 B0 */	b isSwitch__10dSv_info_cCFii
/* 80D0EDB4  54 7E 06 3E */	clrlwi r30, r3, 0x18
lbl_80D0EDB8:
/* 80D0EDB8  88 7C 05 6A */	lbz r3, 0x56a(r28)
/* 80D0EDBC  88 1C 05 6B */	lbz r0, 0x56b(r28)
/* 80D0EDC0  7C 03 00 40 */	cmplw r3, r0
/* 80D0EDC4  40 81 00 2C */	ble lbl_80D0EDF0
/* 80D0EDC8  4B 49 0C 48 */	b dKy_getdaytime_hour__Fv
/* 80D0EDCC  88 1C 05 6A */	lbz r0, 0x56a(r28)
/* 80D0EDD0  7C 03 00 00 */	cmpw r3, r0
/* 80D0EDD4  40 80 00 14 */	bge lbl_80D0EDE8
/* 80D0EDD8  4B 49 0C 38 */	b dKy_getdaytime_hour__Fv
/* 80D0EDDC  88 1C 05 6B */	lbz r0, 0x56b(r28)
/* 80D0EDE0  7C 03 00 00 */	cmpw r3, r0
/* 80D0EDE4  41 81 00 30 */	bgt lbl_80D0EE14
lbl_80D0EDE8:
/* 80D0EDE8  3B E0 00 01 */	li r31, 1
/* 80D0EDEC  48 00 00 28 */	b lbl_80D0EE14
lbl_80D0EDF0:
/* 80D0EDF0  4B 49 0C 20 */	b dKy_getdaytime_hour__Fv
/* 80D0EDF4  88 1C 05 6A */	lbz r0, 0x56a(r28)
/* 80D0EDF8  7C 03 00 00 */	cmpw r3, r0
/* 80D0EDFC  41 80 00 18 */	blt lbl_80D0EE14
/* 80D0EE00  4B 49 0C 10 */	b dKy_getdaytime_hour__Fv
/* 80D0EE04  88 1C 05 6B */	lbz r0, 0x56b(r28)
/* 80D0EE08  7C 03 00 00 */	cmpw r3, r0
/* 80D0EE0C  41 81 00 08 */	bgt lbl_80D0EE14
/* 80D0EE10  3B E0 00 01 */	li r31, 1
lbl_80D0EE14:
/* 80D0EE14  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80D0EE18  41 82 00 98 */	beq lbl_80D0EEB0
/* 80D0EE1C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80D0EE20  41 82 00 90 */	beq lbl_80D0EEB0
/* 80D0EE24  4B 49 0B EC */	b dKy_getdaytime_hour__Fv
/* 80D0EE28  88 1C 05 6A */	lbz r0, 0x56a(r28)
/* 80D0EE2C  7C 00 18 00 */	cmpw r0, r3
/* 80D0EE30  40 82 00 80 */	bne lbl_80D0EEB0
/* 80D0EE34  4B 49 0C 08 */	b dKy_getdaytime_minute__Fv
/* 80D0EE38  2C 03 00 00 */	cmpwi r3, 0
/* 80D0EE3C  40 82 00 74 */	bne lbl_80D0EEB0
/* 80D0EE40  88 1C 05 69 */	lbz r0, 0x569(r28)
/* 80D0EE44  28 00 00 00 */	cmplwi r0, 0
/* 80D0EE48  40 82 00 68 */	bne lbl_80D0EEB0
/* 80D0EE4C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80D0EE50  40 82 00 60 */	bne lbl_80D0EEB0
/* 80D0EE54  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80D0EE58  7C 03 07 74 */	extsb r3, r0
/* 80D0EE5C  4B 31 E2 10 */	b dComIfGp_getReverb__Fi
/* 80D0EE60  7C 67 1B 78 */	mr r7, r3
/* 80D0EE64  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080017@ha */
/* 80D0EE68  38 03 00 17 */	addi r0, r3, 0x0017 /* 0x00080017@l */
/* 80D0EE6C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D0EE70  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D0EE74  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D0EE78  80 63 00 00 */	lwz r3, 0(r3)
/* 80D0EE7C  38 81 00 0C */	addi r4, r1, 0xc
/* 80D0EE80  38 BC 05 70 */	addi r5, r28, 0x570
/* 80D0EE84  38 C0 00 00 */	li r6, 0
/* 80D0EE88  3D 00 80 D1 */	lis r8, lit_3708@ha
/* 80D0EE8C  C0 28 F0 F8 */	lfs f1, lit_3708@l(r8)
/* 80D0EE90  FC 40 08 90 */	fmr f2, f1
/* 80D0EE94  3D 00 80 D1 */	lis r8, lit_3757@ha
/* 80D0EE98  C0 68 F0 FC */	lfs f3, lit_3757@l(r8)
/* 80D0EE9C  FC 80 18 90 */	fmr f4, f3
/* 80D0EEA0  39 00 00 00 */	li r8, 0
/* 80D0EEA4  4B 59 CA E0 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D0EEA8  38 00 00 01 */	li r0, 1
/* 80D0EEAC  98 1C 05 69 */	stb r0, 0x569(r28)
lbl_80D0EEB0:
/* 80D0EEB0  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80D0EEB4  41 82 00 98 */	beq lbl_80D0EF4C
/* 80D0EEB8  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80D0EEBC  41 82 00 90 */	beq lbl_80D0EF4C
/* 80D0EEC0  4B 49 0B 50 */	b dKy_getdaytime_hour__Fv
/* 80D0EEC4  88 1C 05 6B */	lbz r0, 0x56b(r28)
/* 80D0EEC8  7C 00 18 00 */	cmpw r0, r3
/* 80D0EECC  40 82 00 80 */	bne lbl_80D0EF4C
/* 80D0EED0  4B 49 0B 6C */	b dKy_getdaytime_minute__Fv
/* 80D0EED4  2C 03 00 00 */	cmpwi r3, 0
/* 80D0EED8  40 82 00 74 */	bne lbl_80D0EF4C
/* 80D0EEDC  88 1C 05 69 */	lbz r0, 0x569(r28)
/* 80D0EEE0  28 00 00 01 */	cmplwi r0, 1
/* 80D0EEE4  40 82 00 68 */	bne lbl_80D0EF4C
/* 80D0EEE8  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80D0EEEC  40 82 00 60 */	bne lbl_80D0EF4C
/* 80D0EEF0  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80D0EEF4  7C 03 07 74 */	extsb r3, r0
/* 80D0EEF8  4B 31 E1 74 */	b dComIfGp_getReverb__Fi
/* 80D0EEFC  7C 67 1B 78 */	mr r7, r3
/* 80D0EF00  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080019@ha */
/* 80D0EF04  38 03 00 19 */	addi r0, r3, 0x0019 /* 0x00080019@l */
/* 80D0EF08  90 01 00 08 */	stw r0, 8(r1)
/* 80D0EF0C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D0EF10  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D0EF14  80 63 00 00 */	lwz r3, 0(r3)
/* 80D0EF18  38 81 00 08 */	addi r4, r1, 8
/* 80D0EF1C  38 BC 05 70 */	addi r5, r28, 0x570
/* 80D0EF20  38 C0 00 00 */	li r6, 0
/* 80D0EF24  3D 00 80 D1 */	lis r8, lit_3708@ha
/* 80D0EF28  C0 28 F0 F8 */	lfs f1, lit_3708@l(r8)
/* 80D0EF2C  FC 40 08 90 */	fmr f2, f1
/* 80D0EF30  3D 00 80 D1 */	lis r8, lit_3757@ha
/* 80D0EF34  C0 68 F0 FC */	lfs f3, lit_3757@l(r8)
/* 80D0EF38  FC 80 18 90 */	fmr f4, f3
/* 80D0EF3C  39 00 00 00 */	li r8, 0
/* 80D0EF40  4B 59 CA 44 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D0EF44  38 00 00 02 */	li r0, 2
/* 80D0EF48  98 1C 05 69 */	stb r0, 0x569(r28)
lbl_80D0EF4C:
/* 80D0EF4C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80D0EF50  41 82 00 14 */	beq lbl_80D0EF64
/* 80D0EF54  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80D0EF58  41 82 00 0C */	beq lbl_80D0EF64
/* 80D0EF5C  38 60 00 01 */	li r3, 1
/* 80D0EF60  48 00 00 10 */	b lbl_80D0EF70
lbl_80D0EF64:
/* 80D0EF64  38 00 00 00 */	li r0, 0
/* 80D0EF68  98 1C 05 69 */	stb r0, 0x569(r28)
/* 80D0EF6C  38 60 00 00 */	li r3, 0
lbl_80D0EF70:
/* 80D0EF70  39 61 00 20 */	addi r11, r1, 0x20
/* 80D0EF74  4B 65 32 B0 */	b _restgpr_28
/* 80D0EF78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D0EF7C  7C 08 03 A6 */	mtlr r0
/* 80D0EF80  38 21 00 20 */	addi r1, r1, 0x20
/* 80D0EF84  4E 80 00 20 */	blr 
