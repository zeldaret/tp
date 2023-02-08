lbl_80AD6154:
/* 80AD6154  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD6158  7C 08 02 A6 */	mflr r0
/* 80AD615C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD6160  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD6164  93 C1 00 08 */	stw r30, 8(r1)
/* 80AD6168  7C 7E 1B 78 */	mr r30, r3
/* 80AD616C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AD6170  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AD6174  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80AD6178  7F E3 FB 78 */	mr r3, r31
/* 80AD617C  3C 80 80 AD */	lis r4, d_a_npc_seirei__stringBase0@ha /* 0x80AD7D88@ha */
/* 80AD6180  38 84 7D 88 */	addi r4, r4, d_a_npc_seirei__stringBase0@l /* 0x80AD7D88@l */
/* 80AD6184  38 84 00 33 */	addi r4, r4, 0x33
/* 80AD6188  7F C5 F3 78 */	mr r5, r30
/* 80AD618C  38 C0 FF FF */	li r6, -1
/* 80AD6190  4B 57 19 8D */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80AD6194  2C 03 FF FF */	cmpwi r3, -1
/* 80AD6198  41 82 00 68 */	beq lbl_80AD6200
/* 80AD619C  90 7E 0D AC */	stw r3, 0xdac(r30)
/* 80AD61A0  7F E3 FB 78 */	mr r3, r31
/* 80AD61A4  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80AD61A8  3C A0 80 AD */	lis r5, mCutNameList__14daNpc_Seirei_c@ha /* 0x80AD7EE4@ha */
/* 80AD61AC  38 A5 7E E4 */	addi r5, r5, mCutNameList__14daNpc_Seirei_c@l /* 0x80AD7EE4@l */
/* 80AD61B0  38 C0 00 02 */	li r6, 2
/* 80AD61B4  38 E0 00 00 */	li r7, 0
/* 80AD61B8  39 00 00 00 */	li r8, 0
/* 80AD61BC  4B 57 1C 55 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80AD61C0  7C 60 1B 78 */	mr r0, r3
/* 80AD61C4  7F C3 F3 78 */	mr r3, r30
/* 80AD61C8  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80AD61CC  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80AD61D0  3C A0 80 AD */	lis r5, mCutList__14daNpc_Seirei_c@ha /* 0x80AD7EF8@ha */
/* 80AD61D4  38 05 7E F8 */	addi r0, r5, mCutList__14daNpc_Seirei_c@l /* 0x80AD7EF8@l */
/* 80AD61D8  7D 80 32 14 */	add r12, r0, r6
/* 80AD61DC  4B 88 BE A9 */	bl __ptmf_scall
/* 80AD61E0  60 00 00 00 */	nop 
/* 80AD61E4  2C 03 00 00 */	cmpwi r3, 0
/* 80AD61E8  41 82 00 10 */	beq lbl_80AD61F8
/* 80AD61EC  7F E3 FB 78 */	mr r3, r31
/* 80AD61F0  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80AD61F4  4B 57 1F 89 */	bl cutEnd__16dEvent_manager_cFi
lbl_80AD61F8:
/* 80AD61F8  38 60 00 01 */	li r3, 1
/* 80AD61FC  48 00 00 08 */	b lbl_80AD6204
lbl_80AD6200:
/* 80AD6200  38 60 00 00 */	li r3, 0
lbl_80AD6204:
/* 80AD6204  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD6208  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AD620C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD6210  7C 08 03 A6 */	mtlr r0
/* 80AD6214  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD6218  4E 80 00 20 */	blr 
