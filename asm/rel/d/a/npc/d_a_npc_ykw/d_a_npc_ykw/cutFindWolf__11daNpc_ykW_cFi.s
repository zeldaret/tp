lbl_80B63894:
/* 80B63894  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B63898  7C 08 02 A6 */	mflr r0
/* 80B6389C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B638A0  39 61 00 30 */	addi r11, r1, 0x30
/* 80B638A4  4B 7F E9 29 */	bl _savegpr_25
/* 80B638A8  7C 7D 1B 78 */	mr r29, r3
/* 80B638AC  7C 99 23 78 */	mr r25, r4
/* 80B638B0  3C 60 80 B6 */	lis r3, m__17daNpc_ykW_Param_c@ha /* 0x80B67C38@ha */
/* 80B638B4  3B E3 7C 38 */	addi r31, r3, m__17daNpc_ykW_Param_c@l /* 0x80B67C38@l */
/* 80B638B8  3B C0 00 00 */	li r30, 0
/* 80B638BC  3B 60 FF FF */	li r27, -1
/* 80B638C0  3B 40 00 00 */	li r26, 0
/* 80B638C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B638C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B638CC  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 80B638D0  7F 83 E3 78 */	mr r3, r28
/* 80B638D4  3C A0 80 B6 */	lis r5, d_a_npc_ykw__stringBase0@ha /* 0x80B67E68@ha */
/* 80B638D8  38 A5 7E 68 */	addi r5, r5, d_a_npc_ykw__stringBase0@l /* 0x80B67E68@l */
/* 80B638DC  38 A5 00 B4 */	addi r5, r5, 0xb4
/* 80B638E0  38 C0 00 03 */	li r6, 3
/* 80B638E4  4B 4E 48 09 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B638E8  28 03 00 00 */	cmplwi r3, 0
/* 80B638EC  41 82 00 08 */	beq lbl_80B638F4
/* 80B638F0  83 63 00 00 */	lwz r27, 0(r3)
lbl_80B638F4:
/* 80B638F4  7F 83 E3 78 */	mr r3, r28
/* 80B638F8  7F 24 CB 78 */	mr r4, r25
/* 80B638FC  3C A0 80 B6 */	lis r5, d_a_npc_ykw__stringBase0@ha /* 0x80B67E68@ha */
/* 80B63900  38 A5 7E 68 */	addi r5, r5, d_a_npc_ykw__stringBase0@l /* 0x80B67E68@l */
/* 80B63904  38 A5 00 B8 */	addi r5, r5, 0xb8
/* 80B63908  38 C0 00 03 */	li r6, 3
/* 80B6390C  4B 4E 47 E1 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B63910  28 03 00 00 */	cmplwi r3, 0
/* 80B63914  41 82 00 08 */	beq lbl_80B6391C
/* 80B63918  83 43 00 00 */	lwz r26, 0(r3)
lbl_80B6391C:
/* 80B6391C  7F 83 E3 78 */	mr r3, r28
/* 80B63920  7F 24 CB 78 */	mr r4, r25
/* 80B63924  4B 4E 44 29 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B63928  2C 03 00 00 */	cmpwi r3, 0
/* 80B6392C  41 82 00 20 */	beq lbl_80B6394C
/* 80B63930  2C 1B 00 01 */	cmpwi r27, 1
/* 80B63934  41 82 00 18 */	beq lbl_80B6394C
/* 80B63938  40 80 00 14 */	bge lbl_80B6394C
/* 80B6393C  2C 1B 00 00 */	cmpwi r27, 0
/* 80B63940  40 80 00 08 */	bge lbl_80B63948
/* 80B63944  48 00 00 08 */	b lbl_80B6394C
lbl_80B63948:
/* 80B63948  93 5D 0D C4 */	stw r26, 0xdc4(r29)
lbl_80B6394C:
/* 80B6394C  2C 1B 00 01 */	cmpwi r27, 1
/* 80B63950  41 82 01 30 */	beq lbl_80B63A80
/* 80B63954  40 80 01 30 */	bge lbl_80B63A84
/* 80B63958  2C 1B 00 00 */	cmpwi r27, 0
/* 80B6395C  40 80 00 08 */	bge lbl_80B63964
/* 80B63960  48 00 01 24 */	b lbl_80B63A84
lbl_80B63964:
/* 80B63964  80 1D 0D C4 */	lwz r0, 0xdc4(r29)
/* 80B63968  2C 00 00 00 */	cmpwi r0, 0
/* 80B6396C  40 82 00 18 */	bne lbl_80B63984
/* 80B63970  7F 83 E3 78 */	mr r3, r28
/* 80B63974  7F 24 CB 78 */	mr r4, r25
/* 80B63978  4B 4E 43 D5 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B6397C  2C 03 00 00 */	cmpwi r3, 0
/* 80B63980  41 82 00 30 */	beq lbl_80B639B0
lbl_80B63984:
/* 80B63984  38 7D 0D C4 */	addi r3, r29, 0xdc4
/* 80B63988  48 00 3F 49 */	bl func_80B678D0
/* 80B6398C  2C 03 00 00 */	cmpwi r3, 0
/* 80B63990  40 82 00 F4 */	bne lbl_80B63A84
/* 80B63994  7F A3 EB 78 */	mr r3, r29
/* 80B63998  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B6399C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B639A0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B639A4  4B 4B 6D 6D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B639A8  B0 7D 0D C8 */	sth r3, 0xdc8(r29)
/* 80B639AC  48 00 00 D8 */	b lbl_80B63A84
lbl_80B639B0:
/* 80B639B0  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 80B639B4  2C 00 00 01 */	cmpwi r0, 1
/* 80B639B8  41 82 00 28 */	beq lbl_80B639E0
/* 80B639BC  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80B639C0  4B 5E 1D 3D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B639C4  38 00 00 00 */	li r0, 0
/* 80B639C8  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 80B639CC  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80B639D0  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 80B639D4  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80B639D8  38 00 00 01 */	li r0, 1
/* 80B639DC  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_80B639E0:
/* 80B639E0  38 00 00 00 */	li r0, 0
/* 80B639E4  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80B639E8  A8 9D 0D C8 */	lha r4, 0xdc8(r29)
/* 80B639EC  A8 1D 0D 7A */	lha r0, 0xd7a(r29)
/* 80B639F0  7C 04 00 00 */	cmpw r4, r0
/* 80B639F4  41 82 00 84 */	beq lbl_80B63A78
/* 80B639F8  7F A3 EB 78 */	mr r3, r29
/* 80B639FC  38 A0 00 0D */	li r5, 0xd
/* 80B63A00  38 C0 00 16 */	li r6, 0x16
/* 80B63A04  38 FF 00 00 */	addi r7, r31, 0
/* 80B63A08  A8 E7 00 B0 */	lha r7, 0xb0(r7)
/* 80B63A0C  39 00 00 00 */	li r8, 0
/* 80B63A10  4B 5E 7C 39 */	bl step__8daNpcT_cFsiiii
/* 80B63A14  2C 03 00 00 */	cmpwi r3, 0
/* 80B63A18  41 82 00 6C */	beq lbl_80B63A84
/* 80B63A1C  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80B63A20  2C 00 00 0D */	cmpwi r0, 0xd
/* 80B63A24  41 82 00 24 */	beq lbl_80B63A48
/* 80B63A28  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80B63A2C  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80B63A30  4B 5E 1E 69 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B63A34  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80B63A38  38 00 00 0D */	li r0, 0xd
/* 80B63A3C  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80B63A40  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 80B63A44  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80B63A48:
/* 80B63A48  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80B63A4C  2C 00 00 00 */	cmpwi r0, 0
/* 80B63A50  41 82 00 34 */	beq lbl_80B63A84
/* 80B63A54  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80B63A58  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80B63A5C  4B 5E 1E 3D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B63A60  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80B63A64  38 00 00 00 */	li r0, 0
/* 80B63A68  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80B63A6C  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 80B63A70  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 80B63A74  48 00 00 10 */	b lbl_80B63A84
lbl_80B63A78:
/* 80B63A78  3B C0 00 01 */	li r30, 1
/* 80B63A7C  48 00 00 08 */	b lbl_80B63A84
lbl_80B63A80:
/* 80B63A80  3B C0 00 01 */	li r30, 1
lbl_80B63A84:
/* 80B63A84  7F C3 F3 78 */	mr r3, r30
/* 80B63A88  39 61 00 30 */	addi r11, r1, 0x30
/* 80B63A8C  4B 7F E7 8D */	bl _restgpr_25
/* 80B63A90  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B63A94  7C 08 03 A6 */	mtlr r0
/* 80B63A98  38 21 00 30 */	addi r1, r1, 0x30
/* 80B63A9C  4E 80 00 20 */	blr 
