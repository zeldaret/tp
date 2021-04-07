lbl_805554E8:
/* 805554E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805554EC  7C 08 02 A6 */	mflr r0
/* 805554F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805554F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805554F8  93 C1 00 08 */	stw r30, 8(r1)
/* 805554FC  7C 7E 1B 78 */	mr r30, r3
/* 80555500  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80555504  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80555508  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 8055550C  7F E3 FB 78 */	mr r3, r31
/* 80555510  3C 80 80 56 */	lis r4, d_a_npc_kolin__stringBase0@ha /* 0x8055A77C@ha */
/* 80555514  38 84 A7 7C */	addi r4, r4, d_a_npc_kolin__stringBase0@l /* 0x8055A77C@l */
/* 80555518  38 84 00 75 */	addi r4, r4, 0x75
/* 8055551C  7F C5 F3 78 */	mr r5, r30
/* 80555520  38 C0 FF FF */	li r6, -1
/* 80555524  4B AF 25 F9 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80555528  2C 03 FF FF */	cmpwi r3, -1
/* 8055552C  41 82 00 68 */	beq lbl_80555594
/* 80555530  90 7E 0D AC */	stw r3, 0xdac(r30)
/* 80555534  7F E3 FB 78 */	mr r3, r31
/* 80555538  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 8055553C  3C A0 80 56 */	lis r5, mCutNameList__13daNpc_Kolin_c@ha /* 0x8055AFB8@ha */
/* 80555540  38 A5 AF B8 */	addi r5, r5, mCutNameList__13daNpc_Kolin_c@l /* 0x8055AFB8@l */
/* 80555544  38 C0 00 0B */	li r6, 0xb
/* 80555548  38 E0 00 00 */	li r7, 0
/* 8055554C  39 00 00 00 */	li r8, 0
/* 80555550  4B AF 28 C1 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80555554  7C 60 1B 78 */	mr r0, r3
/* 80555558  7F C3 F3 78 */	mr r3, r30
/* 8055555C  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80555560  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80555564  3C A0 80 56 */	lis r5, mCutList__13daNpc_Kolin_c@ha /* 0x8055B05C@ha */
/* 80555568  38 05 B0 5C */	addi r0, r5, mCutList__13daNpc_Kolin_c@l /* 0x8055B05C@l */
/* 8055556C  7D 80 32 14 */	add r12, r0, r6
/* 80555570  4B E0 CB 15 */	bl __ptmf_scall
/* 80555574  60 00 00 00 */	nop 
/* 80555578  2C 03 00 00 */	cmpwi r3, 0
/* 8055557C  41 82 00 10 */	beq lbl_8055558C
/* 80555580  7F E3 FB 78 */	mr r3, r31
/* 80555584  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80555588  4B AF 2B F5 */	bl cutEnd__16dEvent_manager_cFi
lbl_8055558C:
/* 8055558C  38 60 00 01 */	li r3, 1
/* 80555590  48 00 00 08 */	b lbl_80555598
lbl_80555594:
/* 80555594  38 60 00 00 */	li r3, 0
lbl_80555598:
/* 80555598  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055559C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805555A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805555A4  7C 08 03 A6 */	mtlr r0
/* 805555A8  38 21 00 10 */	addi r1, r1, 0x10
/* 805555AC  4E 80 00 20 */	blr 
