lbl_809B7A9C:
/* 809B7A9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809B7AA0  7C 08 02 A6 */	mflr r0
/* 809B7AA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 809B7AA8  39 61 00 20 */	addi r11, r1, 0x20
/* 809B7AAC  4B 9A A7 30 */	b _savegpr_29
/* 809B7AB0  7C 7D 1B 78 */	mr r29, r3
/* 809B7AB4  3C A0 80 9C */	lis r5, m__19daNpc_Fairy_Param_c@ha
/* 809B7AB8  3B E5 92 E4 */	addi r31, r5, m__19daNpc_Fairy_Param_c@l
/* 809B7ABC  3B C0 00 00 */	li r30, 0
/* 809B7AC0  80 04 00 00 */	lwz r0, 0(r4)
/* 809B7AC4  2C 00 00 14 */	cmpwi r0, 0x14
/* 809B7AC8  41 82 00 38 */	beq lbl_809B7B00
/* 809B7ACC  40 80 00 BC */	bge lbl_809B7B88
/* 809B7AD0  2C 00 00 0A */	cmpwi r0, 0xa
/* 809B7AD4  41 82 00 08 */	beq lbl_809B7ADC
/* 809B7AD8  48 00 00 B0 */	b lbl_809B7B88
lbl_809B7ADC:
/* 809B7ADC  38 80 00 00 */	li r4, 0
/* 809B7AE0  38 A0 00 00 */	li r5, 0
/* 809B7AE4  38 C0 00 00 */	li r6, 0
/* 809B7AE8  38 E0 00 00 */	li r7, 0
/* 809B7AEC  4B 79 41 8C */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809B7AF0  2C 03 00 00 */	cmpwi r3, 0
/* 809B7AF4  41 82 00 94 */	beq lbl_809B7B88
/* 809B7AF8  3B C0 00 01 */	li r30, 1
/* 809B7AFC  48 00 00 8C */	b lbl_809B7B88
lbl_809B7B00:
/* 809B7B00  A0 1D 09 AE */	lhz r0, 0x9ae(r29)
/* 809B7B04  7C 00 07 35 */	extsh. r0, r0
/* 809B7B08  40 82 00 50 */	bne lbl_809B7B58
/* 809B7B0C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 809B7B10  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 809B7B14  7C 1E 03 78 */	mr r30, r0
/* 809B7B18  38 00 00 9B */	li r0, 0x9b
/* 809B7B1C  90 01 00 08 */	stw r0, 8(r1)
/* 809B7B20  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 809B7B24  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 809B7B28  80 63 00 00 */	lwz r3, 0(r3)
/* 809B7B2C  38 81 00 08 */	addi r4, r1, 8
/* 809B7B30  38 A0 00 00 */	li r5, 0
/* 809B7B34  38 C0 00 00 */	li r6, 0
/* 809B7B38  38 E0 00 00 */	li r7, 0
/* 809B7B3C  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 809B7B40  FC 40 08 90 */	fmr f2, f1
/* 809B7B44  C0 7F 00 E8 */	lfs f3, 0xe8(r31)
/* 809B7B48  FC 80 18 90 */	fmr f4, f3
/* 809B7B4C  39 00 00 00 */	li r8, 0
/* 809B7B50  4B 8F 3E 34 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 809B7B54  48 00 00 10 */	b lbl_809B7B64
lbl_809B7B58:
/* 809B7B58  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 809B7B5C  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 809B7B60  7C 1E 03 78 */	mr r30, r0
lbl_809B7B64:
/* 809B7B64  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 809B7B68  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 809B7B6C  38 80 00 00 */	li r4, 0
/* 809B7B70  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 809B7B74  7C 05 07 74 */	extsb r5, r0
/* 809B7B78  38 C0 00 00 */	li r6, 0
/* 809B7B7C  38 E0 FF FF */	li r7, -1
/* 809B7B80  4B 66 F5 F0 */	b dStage_changeScene__FifUlScsi
/* 809B7B84  3B C0 00 01 */	li r30, 1
lbl_809B7B88:
/* 809B7B88  7F C3 F3 78 */	mr r3, r30
/* 809B7B8C  39 61 00 20 */	addi r11, r1, 0x20
/* 809B7B90  4B 9A A6 98 */	b _restgpr_29
/* 809B7B94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809B7B98  7C 08 03 A6 */	mtlr r0
/* 809B7B9C  38 21 00 20 */	addi r1, r1, 0x20
/* 809B7BA0  4E 80 00 20 */	blr 
