lbl_80A86A0C:
/* 80A86A0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A86A10  7C 08 02 A6 */	mflr r0
/* 80A86A14  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A86A18  39 61 00 20 */	addi r11, r1, 0x20
/* 80A86A1C  4B 8D B7 B5 */	bl _savegpr_26
/* 80A86A20  7C 7A 1B 78 */	mr r26, r3
/* 80A86A24  7C 9B 23 78 */	mr r27, r4
/* 80A86A28  3C 60 80 A9 */	lis r3, m__19daNpc_myna2_Param_c@ha /* 0x80A88434@ha */
/* 80A86A2C  3B E3 84 34 */	addi r31, r3, m__19daNpc_myna2_Param_c@l /* 0x80A88434@l */
/* 80A86A30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A86A34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A86A38  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A86A3C  3B A0 00 00 */	li r29, 0
/* 80A86A40  3B 80 FF FF */	li r28, -1
/* 80A86A44  38 7A 0B E8 */	addi r3, r26, 0xbe8
/* 80A86A48  38 80 00 00 */	li r4, 0
/* 80A86A4C  4B 83 B1 D9 */	bl playSumomoBgm__16Z2CreatureSumomoFUl
/* 80A86A50  7F C3 F3 78 */	mr r3, r30
/* 80A86A54  7F 64 DB 78 */	mr r4, r27
/* 80A86A58  3C A0 80 A9 */	lis r5, d_a_npc_myna2__stringBase0@ha /* 0x80A88654@ha */
/* 80A86A5C  38 A5 86 54 */	addi r5, r5, d_a_npc_myna2__stringBase0@l /* 0x80A88654@l */
/* 80A86A60  38 A5 00 5C */	addi r5, r5, 0x5c
/* 80A86A64  38 C0 00 03 */	li r6, 3
/* 80A86A68  4B 5C 16 85 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A86A6C  28 03 00 00 */	cmplwi r3, 0
/* 80A86A70  41 82 00 08 */	beq lbl_80A86A78
/* 80A86A74  83 83 00 00 */	lwz r28, 0(r3)
lbl_80A86A78:
/* 80A86A78  7F C3 F3 78 */	mr r3, r30
/* 80A86A7C  7F 64 DB 78 */	mr r4, r27
/* 80A86A80  4B 5C 12 CD */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A86A84  2C 03 00 00 */	cmpwi r3, 0
/* 80A86A88  41 82 00 58 */	beq lbl_80A86AE0
/* 80A86A8C  2C 1C 00 0A */	cmpwi r28, 0xa
/* 80A86A90  41 82 00 40 */	beq lbl_80A86AD0
/* 80A86A94  40 80 00 10 */	bge lbl_80A86AA4
/* 80A86A98  2C 1C 00 00 */	cmpwi r28, 0
/* 80A86A9C  41 82 00 14 */	beq lbl_80A86AB0
/* 80A86AA0  48 00 00 40 */	b lbl_80A86AE0
lbl_80A86AA4:
/* 80A86AA4  2C 1C 00 14 */	cmpwi r28, 0x14
/* 80A86AA8  41 82 00 38 */	beq lbl_80A86AE0
/* 80A86AAC  48 00 00 34 */	b lbl_80A86AE0
lbl_80A86AB0:
/* 80A86AB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A86AB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A86AB8  80 03 09 48 */	lwz r0, 0x948(r3)
/* 80A86ABC  80 83 5E 0C */	lwz r4, 0x5e0c(r3)
/* 80A86AC0  7C 04 00 40 */	cmplw r4, r0
/* 80A86AC4  40 81 00 1C */	ble lbl_80A86AE0
/* 80A86AC8  90 83 09 48 */	stw r4, 0x948(r3)
/* 80A86ACC  48 00 00 14 */	b lbl_80A86AE0
lbl_80A86AD0:
/* 80A86AD0  7F 43 D3 78 */	mr r3, r26
/* 80A86AD4  80 9A 0E 04 */	lwz r4, 0xe04(r26)
/* 80A86AD8  38 A0 00 00 */	li r5, 0
/* 80A86ADC  4B 6C D2 41 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
lbl_80A86AE0:
/* 80A86AE0  2C 1C 00 0A */	cmpwi r28, 0xa
/* 80A86AE4  41 82 00 54 */	beq lbl_80A86B38
/* 80A86AE8  40 80 00 10 */	bge lbl_80A86AF8
/* 80A86AEC  2C 1C 00 00 */	cmpwi r28, 0
/* 80A86AF0  41 82 00 14 */	beq lbl_80A86B04
/* 80A86AF4  48 00 00 D8 */	b lbl_80A86BCC
lbl_80A86AF8:
/* 80A86AF8  2C 1C 00 14 */	cmpwi r28, 0x14
/* 80A86AFC  41 82 00 A0 */	beq lbl_80A86B9C
/* 80A86B00  48 00 00 CC */	b lbl_80A86BCC
lbl_80A86B04:
/* 80A86B04  7F 43 D3 78 */	mr r3, r26
/* 80A86B08  38 80 00 00 */	li r4, 0
/* 80A86B0C  38 A0 00 01 */	li r5, 1
/* 80A86B10  48 00 03 7D */	bl calcHovering__13daNpc_myna2_cFii
/* 80A86B14  C0 5A 04 D4 */	lfs f2, 0x4d4(r26)
/* 80A86B18  C0 3F 01 B4 */	lfs f1, 0x1b4(r31)
/* 80A86B1C  C0 1A 04 AC */	lfs f0, 0x4ac(r26)
/* 80A86B20  EC 01 00 2A */	fadds f0, f1, f0
/* 80A86B24  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A86B28  4C 40 13 82 */	cror 2, 0, 2
/* 80A86B2C  40 82 00 A4 */	bne lbl_80A86BD0
/* 80A86B30  3B A0 00 01 */	li r29, 1
/* 80A86B34  48 00 00 9C */	b lbl_80A86BD0
lbl_80A86B38:
/* 80A86B38  7F 43 D3 78 */	mr r3, r26
/* 80A86B3C  38 80 00 00 */	li r4, 0
/* 80A86B40  38 A0 00 01 */	li r5, 1
/* 80A86B44  48 00 03 49 */	bl calcHovering__13daNpc_myna2_cFii
/* 80A86B48  7F 43 D3 78 */	mr r3, r26
/* 80A86B4C  38 80 00 00 */	li r4, 0
/* 80A86B50  38 A0 00 01 */	li r5, 1
/* 80A86B54  38 C0 00 00 */	li r6, 0
/* 80A86B58  4B 6C D2 2D */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80A86B5C  2C 03 00 00 */	cmpwi r3, 0
/* 80A86B60  41 82 00 70 */	beq lbl_80A86BD0
/* 80A86B64  A0 1A 0A 32 */	lhz r0, 0xa32(r26)
/* 80A86B68  7C 00 07 35 */	extsh. r0, r0
/* 80A86B6C  40 82 00 28 */	bne lbl_80A86B94
/* 80A86B70  38 60 00 0B */	li r3, 0xb
/* 80A86B74  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80A86B78  38 80 00 0A */	li r4, 0xa
/* 80A86B7C  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 80A86B80  7C 05 07 74 */	extsb r5, r0
/* 80A86B84  38 C0 00 00 */	li r6, 0
/* 80A86B88  38 E0 FF FF */	li r7, -1
/* 80A86B8C  4B 5A 05 E5 */	bl dStage_changeScene__FifUlScsi
/* 80A86B90  48 00 00 40 */	b lbl_80A86BD0
lbl_80A86B94:
/* 80A86B94  3B A0 00 01 */	li r29, 1
/* 80A86B98  48 00 00 38 */	b lbl_80A86BD0
lbl_80A86B9C:
/* 80A86B9C  C0 5A 04 D4 */	lfs f2, 0x4d4(r26)
/* 80A86BA0  C0 3F 01 B0 */	lfs f1, 0x1b0(r31)
/* 80A86BA4  C0 1A 04 AC */	lfs f0, 0x4ac(r26)
/* 80A86BA8  EC 01 00 2A */	fadds f0, f1, f0
/* 80A86BAC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A86BB0  40 81 00 08 */	ble lbl_80A86BB8
/* 80A86BB4  3B A0 00 01 */	li r29, 1
lbl_80A86BB8:
/* 80A86BB8  7F 43 D3 78 */	mr r3, r26
/* 80A86BBC  38 80 00 01 */	li r4, 1
/* 80A86BC0  38 A0 00 00 */	li r5, 0
/* 80A86BC4  48 00 02 C9 */	bl calcHovering__13daNpc_myna2_cFii
/* 80A86BC8  48 00 00 08 */	b lbl_80A86BD0
lbl_80A86BCC:
/* 80A86BCC  3B A0 00 01 */	li r29, 1
lbl_80A86BD0:
/* 80A86BD0  7F A3 EB 78 */	mr r3, r29
/* 80A86BD4  39 61 00 20 */	addi r11, r1, 0x20
/* 80A86BD8  4B 8D B6 45 */	bl _restgpr_26
/* 80A86BDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A86BE0  7C 08 03 A6 */	mtlr r0
/* 80A86BE4  38 21 00 20 */	addi r1, r1, 0x20
/* 80A86BE8  4E 80 00 20 */	blr 
