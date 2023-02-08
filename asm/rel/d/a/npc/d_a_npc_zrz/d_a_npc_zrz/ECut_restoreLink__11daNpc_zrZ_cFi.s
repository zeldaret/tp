lbl_80B97D7C:
/* 80B97D7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B97D80  7C 08 02 A6 */	mflr r0
/* 80B97D84  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B97D88  39 61 00 20 */	addi r11, r1, 0x20
/* 80B97D8C  4B 7C A4 49 */	bl _savegpr_27
/* 80B97D90  7C 7B 1B 78 */	mr r27, r3
/* 80B97D94  7C 9C 23 78 */	mr r28, r4
/* 80B97D98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B97D9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B97DA0  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80B97DA4  3B C0 00 00 */	li r30, 0
/* 80B97DA8  3B A0 FF FF */	li r29, -1
/* 80B97DAC  7F E3 FB 78 */	mr r3, r31
/* 80B97DB0  3C A0 80 BA */	lis r5, d_a_npc_zrz__stringBase0@ha /* 0x80B9B220@ha */
/* 80B97DB4  38 A5 B2 20 */	addi r5, r5, d_a_npc_zrz__stringBase0@l /* 0x80B9B220@l */
/* 80B97DB8  38 A5 00 5A */	addi r5, r5, 0x5a
/* 80B97DBC  38 C0 00 03 */	li r6, 3
/* 80B97DC0  4B 4B 03 2D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B97DC4  28 03 00 00 */	cmplwi r3, 0
/* 80B97DC8  41 82 00 08 */	beq lbl_80B97DD0
/* 80B97DCC  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80B97DD0:
/* 80B97DD0  7F E3 FB 78 */	mr r3, r31
/* 80B97DD4  7F 84 E3 78 */	mr r4, r28
/* 80B97DD8  4B 4A FF 75 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B97DDC  2C 03 00 00 */	cmpwi r3, 0
/* 80B97DE0  41 82 00 70 */	beq lbl_80B97E50
/* 80B97DE4  2C 1D 00 01 */	cmpwi r29, 1
/* 80B97DE8  41 82 00 58 */	beq lbl_80B97E40
/* 80B97DEC  40 80 00 64 */	bge lbl_80B97E50
/* 80B97DF0  2C 1D 00 00 */	cmpwi r29, 0
/* 80B97DF4  40 80 00 08 */	bge lbl_80B97DFC
/* 80B97DF8  48 00 00 58 */	b lbl_80B97E50
lbl_80B97DFC:
/* 80B97DFC  7F 63 DB 78 */	mr r3, r27
/* 80B97E00  3C 80 80 BA */	lis r4, m__17daNpc_zrZ_Param_c@ha /* 0x80B9AFEC@ha */
/* 80B97E04  38 84 AF EC */	addi r4, r4, m__17daNpc_zrZ_Param_c@l /* 0x80B9AFEC@l */
/* 80B97E08  C0 24 00 74 */	lfs f1, 0x74(r4)
/* 80B97E0C  3C 80 80 BA */	lis r4, lit_5984@ha /* 0x80B9B1E4@ha */
/* 80B97E10  C0 04 B1 E4 */	lfs f0, lit_5984@l(r4)  /* 0x80B9B1E4@l */
/* 80B97E14  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B97E18  48 00 0E 1D */	bl pullbackPlayer__11daNpc_zrZ_cFf
/* 80B97E1C  7F 63 DB 78 */	mr r3, r27
/* 80B97E20  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B97E24  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B97E28  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B97E2C  4B 48 28 E5 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B97E30  7C 64 1B 78 */	mr r4, r3
/* 80B97E34  7F 63 DB 78 */	mr r3, r27
/* 80B97E38  4B 5B C4 19 */	bl setAngle__8daNpcF_cFs
/* 80B97E3C  48 00 00 14 */	b lbl_80B97E50
lbl_80B97E40:
/* 80B97E40  7F 63 DB 78 */	mr r3, r27
/* 80B97E44  38 80 00 0D */	li r4, 0xd
/* 80B97E48  38 A0 00 00 */	li r5, 0
/* 80B97E4C  4B 5B BE D1 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
lbl_80B97E50:
/* 80B97E50  2C 1D 00 01 */	cmpwi r29, 1
/* 80B97E54  41 82 00 1C */	beq lbl_80B97E70
/* 80B97E58  40 80 00 3C */	bge lbl_80B97E94
/* 80B97E5C  2C 1D 00 00 */	cmpwi r29, 0
/* 80B97E60  40 80 00 08 */	bge lbl_80B97E68
/* 80B97E64  48 00 00 30 */	b lbl_80B97E94
lbl_80B97E68:
/* 80B97E68  3B C0 00 01 */	li r30, 1
/* 80B97E6C  48 00 00 2C */	b lbl_80B97E98
lbl_80B97E70:
/* 80B97E70  7F 63 DB 78 */	mr r3, r27
/* 80B97E74  38 80 00 00 */	li r4, 0
/* 80B97E78  38 A0 00 01 */	li r5, 1
/* 80B97E7C  38 C0 00 00 */	li r6, 0
/* 80B97E80  4B 5B BF 05 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B97E84  2C 03 00 00 */	cmpwi r3, 0
/* 80B97E88  41 82 00 10 */	beq lbl_80B97E98
/* 80B97E8C  3B C0 00 01 */	li r30, 1
/* 80B97E90  48 00 00 08 */	b lbl_80B97E98
lbl_80B97E94:
/* 80B97E94  3B C0 00 01 */	li r30, 1
lbl_80B97E98:
/* 80B97E98  7F C3 F3 78 */	mr r3, r30
/* 80B97E9C  39 61 00 20 */	addi r11, r1, 0x20
/* 80B97EA0  4B 7C A3 81 */	bl _restgpr_27
/* 80B97EA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B97EA8  7C 08 03 A6 */	mtlr r0
/* 80B97EAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80B97EB0  4E 80 00 20 */	blr 
