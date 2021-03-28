lbl_80A2C318:
/* 80A2C318  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A2C31C  7C 08 02 A6 */	mflr r0
/* 80A2C320  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A2C324  39 61 00 20 */	addi r11, r1, 0x20
/* 80A2C328  4B 93 5E B4 */	b _savegpr_29
/* 80A2C32C  7C 7D 1B 78 */	mr r29, r3
/* 80A2C330  88 03 15 AD */	lbz r0, 0x15ad(r3)
/* 80A2C334  28 00 00 00 */	cmplwi r0, 0
/* 80A2C338  41 82 00 14 */	beq lbl_80A2C34C
/* 80A2C33C  28 00 00 02 */	cmplwi r0, 2
/* 80A2C340  41 81 00 0C */	bgt lbl_80A2C34C
/* 80A2C344  38 60 00 00 */	li r3, 0
/* 80A2C348  48 00 00 9C */	b lbl_80A2C3E4
lbl_80A2C34C:
/* 80A2C34C  3B C0 00 00 */	li r30, 0
/* 80A2C350  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A2C354  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A2C358  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80A2C35C  7F E3 FB 78 */	mr r3, r31
/* 80A2C360  3C 80 80 A4 */	lis r4, stringBase0@ha
/* 80A2C364  38 84 0A F8 */	addi r4, r4, stringBase0@l
/* 80A2C368  38 84 02 32 */	addi r4, r4, 0x232
/* 80A2C36C  7F A5 EB 78 */	mr r5, r29
/* 80A2C370  38 C0 FF FF */	li r6, -1
/* 80A2C374  4B 61 B7 A8 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80A2C378  2C 03 FF FF */	cmpwi r3, -1
/* 80A2C37C  41 82 00 64 */	beq lbl_80A2C3E0
/* 80A2C380  90 7D 0D D4 */	stw r3, 0xdd4(r29)
/* 80A2C384  7F E3 FB 78 */	mr r3, r31
/* 80A2C388  80 9D 0D D4 */	lwz r4, 0xdd4(r29)
/* 80A2C38C  3C A0 80 A4 */	lis r5, mCutNameList__10daNpc_Kn_c@ha
/* 80A2C390  38 A5 15 88 */	addi r5, r5, mCutNameList__10daNpc_Kn_c@l
/* 80A2C394  38 C0 00 15 */	li r6, 0x15
/* 80A2C398  38 E0 00 00 */	li r7, 0
/* 80A2C39C  39 00 00 00 */	li r8, 0
/* 80A2C3A0  4B 61 BA 70 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80A2C3A4  7C 60 1B 78 */	mr r0, r3
/* 80A2C3A8  7F A3 EB 78 */	mr r3, r29
/* 80A2C3AC  80 9D 0D D4 */	lwz r4, 0xdd4(r29)
/* 80A2C3B0  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80A2C3B4  3C A0 80 A4 */	lis r5, mCutList__10daNpc_Kn_c@ha
/* 80A2C3B8  38 05 16 CC */	addi r0, r5, mCutList__10daNpc_Kn_c@l
/* 80A2C3BC  7D 80 32 14 */	add r12, r0, r6
/* 80A2C3C0  4B 93 5C C4 */	b __ptmf_scall
/* 80A2C3C4  60 00 00 00 */	nop 
/* 80A2C3C8  2C 03 00 00 */	cmpwi r3, 0
/* 80A2C3CC  41 82 00 10 */	beq lbl_80A2C3DC
/* 80A2C3D0  7F E3 FB 78 */	mr r3, r31
/* 80A2C3D4  80 9D 0D D4 */	lwz r4, 0xdd4(r29)
/* 80A2C3D8  4B 61 BD A4 */	b cutEnd__16dEvent_manager_cFi
lbl_80A2C3DC:
/* 80A2C3DC  3B C0 00 01 */	li r30, 1
lbl_80A2C3E0:
/* 80A2C3E0  7F C3 F3 78 */	mr r3, r30
lbl_80A2C3E4:
/* 80A2C3E4  39 61 00 20 */	addi r11, r1, 0x20
/* 80A2C3E8  4B 93 5E 40 */	b _restgpr_29
/* 80A2C3EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A2C3F0  7C 08 03 A6 */	mtlr r0
/* 80A2C3F4  38 21 00 20 */	addi r1, r1, 0x20
/* 80A2C3F8  4E 80 00 20 */	blr 
