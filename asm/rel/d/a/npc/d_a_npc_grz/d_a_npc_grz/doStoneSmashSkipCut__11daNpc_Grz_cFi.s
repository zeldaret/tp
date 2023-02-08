lbl_809EE5F0:
/* 809EE5F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809EE5F4  7C 08 02 A6 */	mflr r0
/* 809EE5F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 809EE5FC  39 61 00 20 */	addi r11, r1, 0x20
/* 809EE600  4B 97 3B D9 */	bl _savegpr_28
/* 809EE604  7C 7C 1B 78 */	mr r28, r3
/* 809EE608  7C 9D 23 78 */	mr r29, r4
/* 809EE60C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809EE610  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809EE614  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 809EE618  3B C0 FF FF */	li r30, -1
/* 809EE61C  7F E3 FB 78 */	mr r3, r31
/* 809EE620  3C A0 80 9F */	lis r5, d_a_npc_grz__stringBase0@ha /* 0x809EF638@ha */
/* 809EE624  38 A5 F6 38 */	addi r5, r5, d_a_npc_grz__stringBase0@l /* 0x809EF638@l */
/* 809EE628  38 A5 00 62 */	addi r5, r5, 0x62
/* 809EE62C  38 C0 00 03 */	li r6, 3
/* 809EE630  4B 65 9A BD */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 809EE634  28 03 00 00 */	cmplwi r3, 0
/* 809EE638  41 82 00 08 */	beq lbl_809EE640
/* 809EE63C  83 C3 00 00 */	lwz r30, 0(r3)
lbl_809EE640:
/* 809EE640  7F E3 FB 78 */	mr r3, r31
/* 809EE644  7F A4 EB 78 */	mr r4, r29
/* 809EE648  4B 65 97 05 */	bl getIsAddvance__16dEvent_manager_cFi
/* 809EE64C  2C 03 00 00 */	cmpwi r3, 0
/* 809EE650  41 82 00 A4 */	beq lbl_809EE6F4
/* 809EE654  2C 1E 00 0A */	cmpwi r30, 0xa
/* 809EE658  41 82 00 08 */	beq lbl_809EE660
/* 809EE65C  48 00 00 98 */	b lbl_809EE6F4
lbl_809EE660:
/* 809EE660  38 60 00 06 */	li r3, 6
/* 809EE664  38 80 00 40 */	li r4, 0x40
/* 809EE668  4B 63 F0 4D */	bl dComIfGs_offStageSwitch__Fii
/* 809EE66C  7F 83 E3 78 */	mr r3, r28
/* 809EE670  38 80 00 00 */	li r4, 0
/* 809EE674  3C A0 80 9F */	lis r5, lit_4685@ha /* 0x809EF2B0@ha */
/* 809EE678  C0 25 F2 B0 */	lfs f1, lit_4685@l(r5)  /* 0x809EF2B0@l */
/* 809EE67C  38 A0 00 00 */	li r5, 0
/* 809EE680  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 809EE684  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809EE688  7D 89 03 A6 */	mtctr r12
/* 809EE68C  4E 80 04 21 */	bctrl 
/* 809EE690  7F 83 E3 78 */	mr r3, r28
/* 809EE694  38 80 00 0A */	li r4, 0xa
/* 809EE698  3C A0 80 9F */	lis r5, lit_4685@ha /* 0x809EF2B0@ha */
/* 809EE69C  C0 25 F2 B0 */	lfs f1, lit_4685@l(r5)  /* 0x809EF2B0@l */
/* 809EE6A0  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 809EE6A4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809EE6A8  7D 89 03 A6 */	mtctr r12
/* 809EE6AC  4E 80 04 21 */	bctrl 
/* 809EE6B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809EE6B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809EE6B8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 809EE6BC  38 9C 04 A8 */	addi r4, r28, 0x4a8
/* 809EE6C0  A8 BC 04 B6 */	lha r5, 0x4b6(r28)
/* 809EE6C4  38 C0 00 00 */	li r6, 0
/* 809EE6C8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 809EE6CC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 809EE6D0  7D 89 03 A6 */	mtctr r12
/* 809EE6D4  4E 80 04 21 */	bctrl 
/* 809EE6D8  38 00 00 01 */	li r0, 1
/* 809EE6DC  98 1C 09 F2 */	stb r0, 0x9f2(r28)
/* 809EE6E0  38 7C 12 C0 */	addi r3, r28, 0x12c0
/* 809EE6E4  4B 76 20 09 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 809EE6E8  28 03 00 00 */	cmplwi r3, 0
/* 809EE6EC  41 82 00 08 */	beq lbl_809EE6F4
/* 809EE6F0  4B 62 B5 8D */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_809EE6F4:
/* 809EE6F4  2C 1E 00 0A */	cmpwi r30, 0xa
/* 809EE6F8  41 82 00 08 */	beq lbl_809EE700
/* 809EE6FC  48 00 00 0C */	b lbl_809EE708
lbl_809EE700:
/* 809EE700  38 60 00 01 */	li r3, 1
/* 809EE704  48 00 00 08 */	b lbl_809EE70C
lbl_809EE708:
/* 809EE708  38 60 00 01 */	li r3, 1
lbl_809EE70C:
/* 809EE70C  39 61 00 20 */	addi r11, r1, 0x20
/* 809EE710  4B 97 3B 15 */	bl _restgpr_28
/* 809EE714  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809EE718  7C 08 03 A6 */	mtlr r0
/* 809EE71C  38 21 00 20 */	addi r1, r1, 0x20
/* 809EE720  4E 80 00 20 */	blr 
