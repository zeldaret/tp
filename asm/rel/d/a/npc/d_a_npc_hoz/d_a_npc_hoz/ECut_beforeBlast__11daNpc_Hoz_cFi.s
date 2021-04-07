lbl_80A04E24:
/* 80A04E24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A04E28  7C 08 02 A6 */	mflr r0
/* 80A04E2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A04E30  39 61 00 20 */	addi r11, r1, 0x20
/* 80A04E34  4B 95 D3 A1 */	bl _savegpr_27
/* 80A04E38  7C 7B 1B 78 */	mr r27, r3
/* 80A04E3C  7C 9C 23 78 */	mr r28, r4
/* 80A04E40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A04E44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A04E48  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80A04E4C  3B C0 00 00 */	li r30, 0
/* 80A04E50  3B A0 FF FF */	li r29, -1
/* 80A04E54  7F E3 FB 78 */	mr r3, r31
/* 80A04E58  3C A0 80 A0 */	lis r5, d_a_npc_hoz__stringBase0@ha /* 0x80A06764@ha */
/* 80A04E5C  38 A5 67 64 */	addi r5, r5, d_a_npc_hoz__stringBase0@l /* 0x80A06764@l */
/* 80A04E60  38 A5 00 9C */	addi r5, r5, 0x9c
/* 80A04E64  38 C0 00 03 */	li r6, 3
/* 80A04E68  4B 64 32 85 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A04E6C  28 03 00 00 */	cmplwi r3, 0
/* 80A04E70  41 82 00 08 */	beq lbl_80A04E78
/* 80A04E74  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80A04E78:
/* 80A04E78  7F E3 FB 78 */	mr r3, r31
/* 80A04E7C  7F 84 E3 78 */	mr r4, r28
/* 80A04E80  4B 64 2E CD */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A04E84  2C 03 00 00 */	cmpwi r3, 0
/* 80A04E88  41 82 00 2C */	beq lbl_80A04EB4
/* 80A04E8C  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80A04E90  41 82 00 14 */	beq lbl_80A04EA4
/* 80A04E94  40 80 00 20 */	bge lbl_80A04EB4
/* 80A04E98  2C 1D 00 00 */	cmpwi r29, 0
/* 80A04E9C  41 82 00 18 */	beq lbl_80A04EB4
/* 80A04EA0  48 00 00 14 */	b lbl_80A04EB4
lbl_80A04EA4:
/* 80A04EA4  7F 63 DB 78 */	mr r3, r27
/* 80A04EA8  80 9B 0A 7C */	lwz r4, 0xa7c(r27)
/* 80A04EAC  38 A0 00 00 */	li r5, 0
/* 80A04EB0  4B 74 6D 41 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80A04EB4:
/* 80A04EB4  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80A04EB8  41 82 00 6C */	beq lbl_80A04F24
/* 80A04EBC  40 80 00 90 */	bge lbl_80A04F4C
/* 80A04EC0  2C 1D 00 00 */	cmpwi r29, 0
/* 80A04EC4  41 82 00 08 */	beq lbl_80A04ECC
/* 80A04EC8  48 00 00 84 */	b lbl_80A04F4C
lbl_80A04ECC:
/* 80A04ECC  7F 63 DB 78 */	mr r3, r27
/* 80A04ED0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A04ED4  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A04ED8  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A04EDC  4B 61 58 35 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A04EE0  A8 9B 0D 7A */	lha r4, 0xd7a(r27)
/* 80A04EE4  7C 60 07 34 */	extsh r0, r3
/* 80A04EE8  7C 04 00 00 */	cmpw r4, r0
/* 80A04EEC  41 82 00 30 */	beq lbl_80A04F1C
/* 80A04EF0  7F 63 DB 78 */	mr r3, r27
/* 80A04EF4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A04EF8  4B 61 58 19 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A04EFC  7C 64 1B 78 */	mr r4, r3
/* 80A04F00  7F 63 DB 78 */	mr r3, r27
/* 80A04F04  38 A0 FF FF */	li r5, -1
/* 80A04F08  38 C0 FF FF */	li r6, -1
/* 80A04F0C  38 E0 00 0F */	li r7, 0xf
/* 80A04F10  39 00 00 00 */	li r8, 0
/* 80A04F14  4B 74 67 35 */	bl step__8daNpcT_cFsiiii
/* 80A04F18  48 00 00 38 */	b lbl_80A04F50
lbl_80A04F1C:
/* 80A04F1C  3B C0 00 01 */	li r30, 1
/* 80A04F20  48 00 00 30 */	b lbl_80A04F50
lbl_80A04F24:
/* 80A04F24  7F 63 DB 78 */	mr r3, r27
/* 80A04F28  38 80 00 00 */	li r4, 0
/* 80A04F2C  38 A0 00 00 */	li r5, 0
/* 80A04F30  38 C0 00 00 */	li r6, 0
/* 80A04F34  38 E0 00 00 */	li r7, 0
/* 80A04F38  4B 74 6D 41 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A04F3C  2C 03 00 00 */	cmpwi r3, 0
/* 80A04F40  41 82 00 10 */	beq lbl_80A04F50
/* 80A04F44  3B C0 00 01 */	li r30, 1
/* 80A04F48  48 00 00 08 */	b lbl_80A04F50
lbl_80A04F4C:
/* 80A04F4C  3B C0 00 01 */	li r30, 1
lbl_80A04F50:
/* 80A04F50  7F C3 F3 78 */	mr r3, r30
/* 80A04F54  39 61 00 20 */	addi r11, r1, 0x20
/* 80A04F58  4B 95 D2 C9 */	bl _restgpr_27
/* 80A04F5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A04F60  7C 08 03 A6 */	mtlr r0
/* 80A04F64  38 21 00 20 */	addi r1, r1, 0x20
/* 80A04F68  4E 80 00 20 */	blr 
