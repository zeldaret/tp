lbl_80044A58:
/* 80044A58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80044A5C  7C 08 02 A6 */	mflr r0
/* 80044A60  90 01 00 24 */	stw r0, 0x24(r1)
/* 80044A64  39 61 00 20 */	addi r11, r1, 0x20
/* 80044A68  48 31 D7 71 */	bl _savegpr_28
/* 80044A6C  7C 7C 1B 78 */	mr r28, r3
/* 80044A70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80044A74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80044A78  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 80044A7C  7F A3 EB 78 */	mr r3, r29
/* 80044A80  3C 80 80 38 */	lis r4, d_event_d_event_data__stringBase0@ha /* 0x80379DD0@ha */
/* 80044A84  38 84 9D D0 */	addi r4, r4, d_event_d_event_data__stringBase0@l /* 0x80379DD0@l */
/* 80044A88  38 84 00 70 */	addi r4, r4, 0x70
/* 80044A8C  38 A0 00 00 */	li r5, 0
/* 80044A90  38 C0 00 00 */	li r6, 0
/* 80044A94  48 00 30 89 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80044A98  7C 7E 1B 78 */	mr r30, r3
/* 80044A9C  2C 1E FF FF */	cmpwi r30, -1
/* 80044AA0  41 82 02 00 */	beq lbl_80044CA0
/* 80044AA4  7F A3 EB 78 */	mr r3, r29
/* 80044AA8  7F C4 F3 78 */	mr r4, r30
/* 80044AAC  48 00 34 B1 */	bl getMyNowCutName__16dEvent_manager_cFi
/* 80044AB0  7C 7F 1B 78 */	mr r31, r3
/* 80044AB4  7F A3 EB 78 */	mr r3, r29
/* 80044AB8  7F C4 F3 78 */	mr r4, r30
/* 80044ABC  48 00 32 91 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80044AC0  2C 03 00 00 */	cmpwi r3, 0
/* 80044AC4  41 82 01 74 */	beq lbl_80044C38
/* 80044AC8  80 9F 00 00 */	lwz r4, 0(r31)
/* 80044ACC  3C 60 52 49 */	lis r3, 0x5249 /* 0x52494444@ha */
/* 80044AD0  38 03 44 44 */	addi r0, r3, 0x4444 /* 0x52494444@l */
/* 80044AD4  7C 04 00 00 */	cmpw r4, r0
/* 80044AD8  41 82 00 88 */	beq lbl_80044B60
/* 80044ADC  40 80 00 2C */	bge lbl_80044B08
/* 80044AE0  3C 60 4E 4F */	lis r3, 0x4E4F /* 0x4E4F4D53@ha */
/* 80044AE4  38 03 4D 53 */	addi r0, r3, 0x4D53 /* 0x4E4F4D53@l */
/* 80044AE8  7C 04 00 00 */	cmpw r4, r0
/* 80044AEC  41 82 00 64 */	beq lbl_80044B50
/* 80044AF0  40 80 01 48 */	bge lbl_80044C38
/* 80044AF4  3C 60 42 47 */	lis r3, 0x4247 /* 0x42474D53@ha */
/* 80044AF8  38 03 4D 53 */	addi r0, r3, 0x4D53 /* 0x42474D53@l */
/* 80044AFC  7C 04 00 00 */	cmpw r4, r0
/* 80044B00  41 82 01 00 */	beq lbl_80044C00
/* 80044B04  48 00 01 34 */	b lbl_80044C38
lbl_80044B08:
/* 80044B08  3C 60 57 41 */	lis r3, 0x5741 /* 0x57414954@ha */
/* 80044B0C  38 03 49 54 */	addi r0, r3, 0x4954 /* 0x57414954@l */
/* 80044B10  7C 04 00 00 */	cmpw r4, r0
/* 80044B14  41 82 00 1C */	beq lbl_80044B30
/* 80044B18  40 80 01 20 */	bge lbl_80044C38
/* 80044B1C  3C 60 53 54 */	lis r3, 0x5354 /* 0x5354524D@ha */
/* 80044B20  38 03 52 4D */	addi r0, r3, 0x524D /* 0x5354524D@l */
/* 80044B24  7C 04 00 00 */	cmpw r4, r0
/* 80044B28  41 82 00 18 */	beq lbl_80044B40
/* 80044B2C  48 00 01 0C */	b lbl_80044C38
lbl_80044B30:
/* 80044B30  7F 83 E3 78 */	mr r3, r28
/* 80044B34  7F C4 F3 78 */	mr r4, r30
/* 80044B38  4B FF F4 A1 */	bl specialProc_WaitStart__12dEvDtStaff_cFi
/* 80044B3C  48 00 00 FC */	b lbl_80044C38
lbl_80044B40:
/* 80044B40  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80044B44  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80044B48  48 26 B2 D1 */	bl bgmStreamPlay__8Z2SeqMgrFv
/* 80044B4C  48 00 00 EC */	b lbl_80044C38
lbl_80044B50:
/* 80044B50  7F 83 E3 78 */	mr r3, r28
/* 80044B54  7F C4 F3 78 */	mr r4, r30
/* 80044B58  4B FF F4 81 */	bl specialProc_WaitStart__12dEvDtStaff_cFi
/* 80044B5C  48 00 00 DC */	b lbl_80044C38
lbl_80044B60:
/* 80044B60  7F A3 EB 78 */	mr r3, r29
/* 80044B64  7F C4 F3 78 */	mr r4, r30
/* 80044B68  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha /* 0x80379DD0@ha */
/* 80044B6C  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l /* 0x80379DD0@l */
/* 80044B70  38 A5 00 62 */	addi r5, r5, 0x62
/* 80044B74  38 C0 00 03 */	li r6, 3
/* 80044B78  48 00 35 75 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80044B7C  28 03 00 00 */	cmplwi r3, 0
/* 80044B80  41 82 00 48 */	beq lbl_80044BC8
/* 80044B84  80 03 00 00 */	lwz r0, 0(r3)
/* 80044B88  2C 00 00 01 */	cmpwi r0, 1
/* 80044B8C  40 82 00 3C */	bne lbl_80044BC8
/* 80044B90  38 00 00 0C */	li r0, 0xc
/* 80044B94  90 01 00 0C */	stw r0, 0xc(r1)
/* 80044B98  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80044B9C  38 81 00 0C */	addi r4, r1, 0xc
/* 80044BA0  38 A0 00 00 */	li r5, 0
/* 80044BA4  38 C0 00 00 */	li r6, 0
/* 80044BA8  38 E0 00 00 */	li r7, 0
/* 80044BAC  C0 22 84 F0 */	lfs f1, lit_4668(r2)
/* 80044BB0  FC 40 08 90 */	fmr f2, f1
/* 80044BB4  C0 62 84 F4 */	lfs f3, lit_4669(r2)
/* 80044BB8  FC 80 18 90 */	fmr f4, f3
/* 80044BBC  39 00 00 00 */	li r8, 0
/* 80044BC0  48 26 6D C5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80044BC4  48 00 00 74 */	b lbl_80044C38
lbl_80044BC8:
/* 80044BC8  38 00 00 0D */	li r0, 0xd
/* 80044BCC  90 01 00 08 */	stw r0, 8(r1)
/* 80044BD0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80044BD4  38 81 00 08 */	addi r4, r1, 8
/* 80044BD8  38 A0 00 00 */	li r5, 0
/* 80044BDC  38 C0 00 00 */	li r6, 0
/* 80044BE0  38 E0 00 00 */	li r7, 0
/* 80044BE4  C0 22 84 F0 */	lfs f1, lit_4668(r2)
/* 80044BE8  FC 40 08 90 */	fmr f2, f1
/* 80044BEC  C0 62 84 F4 */	lfs f3, lit_4669(r2)
/* 80044BF0  FC 80 18 90 */	fmr f4, f3
/* 80044BF4  39 00 00 00 */	li r8, 0
/* 80044BF8  48 26 6D 8D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80044BFC  48 00 00 3C */	b lbl_80044C38
lbl_80044C00:
/* 80044C00  7F A3 EB 78 */	mr r3, r29
/* 80044C04  7F C4 F3 78 */	mr r4, r30
/* 80044C08  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha /* 0x80379DD0@ha */
/* 80044C0C  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l /* 0x80379DD0@l */
/* 80044C10  38 A5 00 3D */	addi r5, r5, 0x3d
/* 80044C14  38 C0 00 03 */	li r6, 3
/* 80044C18  48 00 34 D5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80044C1C  7C 64 1B 79 */	or. r4, r3, r3
/* 80044C20  41 82 00 18 */	beq lbl_80044C38
/* 80044C24  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80044C28  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80044C2C  80 84 00 00 */	lwz r4, 0(r4)
/* 80044C30  38 A0 00 00 */	li r5, 0
/* 80044C34  48 26 A7 D5 */	bl bgmStop__8Z2SeqMgrFUll
lbl_80044C38:
/* 80044C38  80 9F 00 00 */	lwz r4, 0(r31)
/* 80044C3C  3C 60 57 41 */	lis r3, 0x5741 /* 0x57414954@ha */
/* 80044C40  38 03 49 54 */	addi r0, r3, 0x4954 /* 0x57414954@l */
/* 80044C44  7C 04 00 00 */	cmpw r4, r0
/* 80044C48  41 82 00 1C */	beq lbl_80044C64
/* 80044C4C  40 80 00 48 */	bge lbl_80044C94
/* 80044C50  3C 60 4E 4F */	lis r3, 0x4E4F /* 0x4E4F4D53@ha */
/* 80044C54  38 03 4D 53 */	addi r0, r3, 0x4D53 /* 0x4E4F4D53@l */
/* 80044C58  7C 04 00 00 */	cmpw r4, r0
/* 80044C5C  41 82 00 18 */	beq lbl_80044C74
/* 80044C60  48 00 00 34 */	b lbl_80044C94
lbl_80044C64:
/* 80044C64  7F 83 E3 78 */	mr r3, r28
/* 80044C68  7F C4 F3 78 */	mr r4, r30
/* 80044C6C  4B FF F3 D1 */	bl specialProc_WaitProc__12dEvDtStaff_cFi
/* 80044C70  48 00 00 30 */	b lbl_80044CA0
lbl_80044C74:
/* 80044C74  A8 7C 00 44 */	lha r3, 0x44(r28)
/* 80044C78  80 0D 88 B4 */	lwz r0, m_frameNoMsg__7dDemo_c(r13)
/* 80044C7C  7C 03 00 40 */	cmplw r3, r0
/* 80044C80  41 81 00 20 */	bgt lbl_80044CA0
/* 80044C84  7F A3 EB 78 */	mr r3, r29
/* 80044C88  7F C4 F3 78 */	mr r4, r30
/* 80044C8C  48 00 34 F1 */	bl cutEnd__16dEvent_manager_cFi
/* 80044C90  48 00 00 10 */	b lbl_80044CA0
lbl_80044C94:
/* 80044C94  7F A3 EB 78 */	mr r3, r29
/* 80044C98  7F C4 F3 78 */	mr r4, r30
/* 80044C9C  48 00 34 E1 */	bl cutEnd__16dEvent_manager_cFi
lbl_80044CA0:
/* 80044CA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80044CA4  48 31 D5 81 */	bl _restgpr_28
/* 80044CA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80044CAC  7C 08 03 A6 */	mtlr r0
/* 80044CB0  38 21 00 20 */	addi r1, r1, 0x20
/* 80044CB4  4E 80 00 20 */	blr 
