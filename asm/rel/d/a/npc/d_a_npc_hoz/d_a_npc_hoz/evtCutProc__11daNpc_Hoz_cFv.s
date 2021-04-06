lbl_80A0260C:
/* 80A0260C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A02610  7C 08 02 A6 */	mflr r0
/* 80A02614  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A02618  39 61 00 20 */	addi r11, r1, 0x20
/* 80A0261C  4B 95 FB C1 */	bl _savegpr_29
/* 80A02620  7C 7D 1B 78 */	mr r29, r3
/* 80A02624  3B C0 00 00 */	li r30, 0
/* 80A02628  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A0262C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A02630  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80A02634  7F E3 FB 78 */	mr r3, r31
/* 80A02638  3C 80 80 A0 */	lis r4, d_a_npc_hoz__stringBase0@ha /* 0x80A06764@ha */
/* 80A0263C  38 84 67 64 */	addi r4, r4, d_a_npc_hoz__stringBase0@l /* 0x80A06764@l */
/* 80A02640  38 84 00 63 */	addi r4, r4, 0x63
/* 80A02644  7F A5 EB 78 */	mr r5, r29
/* 80A02648  38 C0 FF FF */	li r6, -1
/* 80A0264C  4B 64 54 D1 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80A02650  2C 03 FF FF */	cmpwi r3, -1
/* 80A02654  41 82 00 64 */	beq lbl_80A026B8
/* 80A02658  90 7D 0D AC */	stw r3, 0xdac(r29)
/* 80A0265C  7F E3 FB 78 */	mr r3, r31
/* 80A02660  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80A02664  3C A0 80 A0 */	lis r5, mCutNameList__11daNpc_Hoz_c@ha /* 0x80A075C0@ha */
/* 80A02668  38 A5 75 C0 */	addi r5, r5, mCutNameList__11daNpc_Hoz_c@l /* 0x80A075C0@l */
/* 80A0266C  38 C0 00 08 */	li r6, 8
/* 80A02670  38 E0 00 00 */	li r7, 0
/* 80A02674  39 00 00 00 */	li r8, 0
/* 80A02678  4B 64 57 99 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80A0267C  7C 60 1B 78 */	mr r0, r3
/* 80A02680  7F A3 EB 78 */	mr r3, r29
/* 80A02684  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80A02688  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80A0268C  3C A0 80 A0 */	lis r5, mCutList__11daNpc_Hoz_c@ha /* 0x80A07634@ha */
/* 80A02690  38 05 76 34 */	addi r0, r5, mCutList__11daNpc_Hoz_c@l /* 0x80A07634@l */
/* 80A02694  7D 80 32 14 */	add r12, r0, r6
/* 80A02698  4B 95 F9 ED */	bl __ptmf_scall
/* 80A0269C  60 00 00 00 */	nop 
/* 80A026A0  2C 03 00 00 */	cmpwi r3, 0
/* 80A026A4  41 82 00 10 */	beq lbl_80A026B4
/* 80A026A8  7F E3 FB 78 */	mr r3, r31
/* 80A026AC  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80A026B0  4B 64 5A CD */	bl cutEnd__16dEvent_manager_cFi
lbl_80A026B4:
/* 80A026B4  3B C0 00 01 */	li r30, 1
lbl_80A026B8:
/* 80A026B8  7F C3 F3 78 */	mr r3, r30
/* 80A026BC  39 61 00 20 */	addi r11, r1, 0x20
/* 80A026C0  4B 95 FB 69 */	bl _restgpr_29
/* 80A026C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A026C8  7C 08 03 A6 */	mtlr r0
/* 80A026CC  38 21 00 20 */	addi r1, r1, 0x20
/* 80A026D0  4E 80 00 20 */	blr 
