lbl_80B98ACC:
/* 80B98ACC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B98AD0  7C 08 02 A6 */	mflr r0
/* 80B98AD4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B98AD8  39 61 00 30 */	addi r11, r1, 0x30
/* 80B98ADC  4B 7C 96 FC */	b _savegpr_28
/* 80B98AE0  7C 7F 1B 78 */	mr r31, r3
/* 80B98AE4  7C 9C 23 78 */	mr r28, r4
/* 80B98AE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B98AEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B98AF0  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80B98AF4  3B A0 FF FF */	li r29, -1
/* 80B98AF8  7F C3 F3 78 */	mr r3, r30
/* 80B98AFC  3C A0 80 BA */	lis r5, stringBase0@ha
/* 80B98B00  38 A5 B2 20 */	addi r5, r5, stringBase0@l
/* 80B98B04  38 A5 00 5A */	addi r5, r5, 0x5a
/* 80B98B08  38 C0 00 03 */	li r6, 3
/* 80B98B0C  4B 4A F5 E0 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B98B10  28 03 00 00 */	cmplwi r3, 0
/* 80B98B14  41 82 00 08 */	beq lbl_80B98B1C
/* 80B98B18  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80B98B1C:
/* 80B98B1C  7F C3 F3 78 */	mr r3, r30
/* 80B98B20  7F 84 E3 78 */	mr r4, r28
/* 80B98B24  4B 4A F2 28 */	b getIsAddvance__16dEvent_manager_cFi
/* 80B98B28  2C 03 00 00 */	cmpwi r3, 0
/* 80B98B2C  41 82 00 EC */	beq lbl_80B98C18
/* 80B98B30  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80B98B34  41 82 00 08 */	beq lbl_80B98B3C
/* 80B98B38  48 00 00 E0 */	b lbl_80B98C18
lbl_80B98B3C:
/* 80B98B3C  3C 60 80 BA */	lis r3, lit_4522@ha
/* 80B98B40  C0 03 B0 84 */	lfs f0, lit_4522@l(r3)
/* 80B98B44  D0 1F 14 50 */	stfs f0, 0x1450(r31)
/* 80B98B48  A0 1F 0C 90 */	lhz r0, 0xc90(r31)
/* 80B98B4C  80 7F 0C 94 */	lwz r3, 0xc94(r31)
/* 80B98B50  80 63 00 08 */	lwz r3, 8(r3)
/* 80B98B54  54 00 20 36 */	slwi r0, r0, 4
/* 80B98B58  7C 83 02 14 */	add r4, r3, r0
/* 80B98B5C  80 64 00 04 */	lwz r3, 4(r4)
/* 80B98B60  80 04 00 08 */	lwz r0, 8(r4)
/* 80B98B64  90 61 00 0C */	stw r3, 0xc(r1)
/* 80B98B68  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B98B6C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B98B70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B98B74  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80B98B78  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80B98B7C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80B98B80  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80B98B84  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80B98B88  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80B98B8C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80B98B90  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80B98B94  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80B98B98  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80B98B9C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80B98BA0  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80B98BA4  7F E3 FB 78 */	mr r3, r31
/* 80B98BA8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B98BAC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B98BB0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B98BB4  4B 48 1B 5C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B98BB8  7C 64 1B 78 */	mr r4, r3
/* 80B98BBC  7F E3 FB 78 */	mr r3, r31
/* 80B98BC0  4B 5B B6 90 */	b setAngle__8daNpcF_cFs
/* 80B98BC4  38 00 00 FF */	li r0, 0xff
/* 80B98BC8  B0 1F 04 6A */	sth r0, 0x46a(r31)
/* 80B98BCC  38 00 00 00 */	li r0, 0
/* 80B98BD0  98 1F 14 4F */	stb r0, 0x144f(r31)
/* 80B98BD4  80 7F 14 9C */	lwz r3, 0x149c(r31)
/* 80B98BD8  28 03 00 00 */	cmplwi r3, 0
/* 80B98BDC  41 82 00 10 */	beq lbl_80B98BEC
/* 80B98BE0  4B 48 10 9C */	b fopAcM_delete__FP10fopAc_ac_c
/* 80B98BE4  38 00 00 00 */	li r0, 0
/* 80B98BE8  90 1F 14 9C */	stw r0, 0x149c(r31)
lbl_80B98BEC:
/* 80B98BEC  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080223@ha */
/* 80B98BF0  38 03 02 23 */	addi r0, r3, 0x0223 /* 0x00080223@l */
/* 80B98BF4  90 01 00 08 */	stw r0, 8(r1)
/* 80B98BF8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B98BFC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B98C00  80 63 00 00 */	lwz r3, 0(r3)
/* 80B98C04  38 81 00 08 */	addi r4, r1, 8
/* 80B98C08  38 A0 00 00 */	li r5, 0
/* 80B98C0C  4B 71 4C A4 */	b seStop__7Z2SeMgrF10JAISoundIDUl
/* 80B98C10  38 00 00 01 */	li r0, 1
/* 80B98C14  98 1F 14 C4 */	stb r0, 0x14c4(r31)
lbl_80B98C18:
/* 80B98C18  38 60 00 01 */	li r3, 1
/* 80B98C1C  39 61 00 30 */	addi r11, r1, 0x30
/* 80B98C20  4B 7C 96 04 */	b _restgpr_28
/* 80B98C24  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B98C28  7C 08 03 A6 */	mtlr r0
/* 80B98C2C  38 21 00 30 */	addi r1, r1, 0x30
/* 80B98C30  4E 80 00 20 */	blr 
