lbl_80D217A8:
/* 80D217A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D217AC  7C 08 02 A6 */	mflr r0
/* 80D217B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D217B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D217B8  93 C1 00 08 */	stw r30, 8(r1)
/* 80D217BC  7C 7F 1B 78 */	mr r31, r3
/* 80D217C0  3C 60 80 D2 */	lis r3, lit_3630@ha
/* 80D217C4  3B C3 1A 08 */	addi r30, r3, lit_3630@l
/* 80D217C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D217CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D217D0  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D217D4  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80D217D8  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80D217DC  A0 84 00 82 */	lhz r4, 0x82(r4)
/* 80D217E0  4B 31 31 DC */	b isEventBit__11dSv_event_cCFUs
/* 80D217E4  2C 03 00 00 */	cmpwi r3, 0
/* 80D217E8  41 82 00 1C */	beq lbl_80D21804
/* 80D217EC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80D217F0  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80D217F4  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80D217F8  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80D217FC  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80D21800  48 00 00 54 */	b lbl_80D21854
lbl_80D21804:
/* 80D21804  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D21808  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D2180C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D21810  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D21814  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D21818  7C 05 07 74 */	extsb r5, r0
/* 80D2181C  4B 31 3B 44 */	b isSwitch__10dSv_info_cCFii
/* 80D21820  2C 03 00 00 */	cmpwi r3, 0
/* 80D21824  41 82 00 1C */	beq lbl_80D21840
/* 80D21828  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80D2182C  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80D21830  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80D21834  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80D21838  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80D2183C  48 00 00 18 */	b lbl_80D21854
lbl_80D21840:
/* 80D21840  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80D21844  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80D21848  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80D2184C  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80D21850  D0 03 00 10 */	stfs f0, 0x10(r3)
lbl_80D21854:
/* 80D21854  7F E3 FB 78 */	mr r3, r31
/* 80D21858  4B FF FB F1 */	bl setBaseMtx__11daObjVGnd_cFv
/* 80D2185C  38 60 00 01 */	li r3, 1
/* 80D21860  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D21864  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D21868  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2186C  7C 08 03 A6 */	mtlr r0
/* 80D21870  38 21 00 10 */	addi r1, r1, 0x10
/* 80D21874  4E 80 00 20 */	blr 
