lbl_80550438:
/* 80550438  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055043C  7C 08 02 A6 */	mflr r0
/* 80550440  90 01 00 14 */	stw r0, 0x14(r1)
/* 80550444  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80550448  93 C1 00 08 */	stw r30, 8(r1)
/* 8055044C  7C 7E 1B 78 */	mr r30, r3
/* 80550450  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80550454  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80550458  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 8055045C  7F E3 FB 78 */	mr r3, r31
/* 80550460  3C 80 80 55 */	lis r4, d_a_npc_kkri__stringBase0@ha /* 0x805535A4@ha */
/* 80550464  38 84 35 A4 */	addi r4, r4, d_a_npc_kkri__stringBase0@l /* 0x805535A4@l */
/* 80550468  38 84 00 3D */	addi r4, r4, 0x3d
/* 8055046C  7F C5 F3 78 */	mr r5, r30
/* 80550470  38 C0 FF FF */	li r6, -1
/* 80550474  4B AF 76 A9 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80550478  2C 03 FF FF */	cmpwi r3, -1
/* 8055047C  41 82 00 68 */	beq lbl_805504E4
/* 80550480  90 7E 0D AC */	stw r3, 0xdac(r30)
/* 80550484  7F E3 FB 78 */	mr r3, r31
/* 80550488  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 8055048C  3C A0 80 55 */	lis r5, mCutNameList__12daNpc_Kkri_c@ha /* 0x80553C80@ha */
/* 80550490  38 A5 3C 80 */	addi r5, r5, mCutNameList__12daNpc_Kkri_c@l /* 0x80553C80@l */
/* 80550494  38 C0 00 03 */	li r6, 3
/* 80550498  38 E0 00 00 */	li r7, 0
/* 8055049C  39 00 00 00 */	li r8, 0
/* 805504A0  4B AF 79 71 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 805504A4  7C 60 1B 78 */	mr r0, r3
/* 805504A8  7F C3 F3 78 */	mr r3, r30
/* 805504AC  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 805504B0  1C C0 00 0C */	mulli r6, r0, 0xc
/* 805504B4  3C A0 80 55 */	lis r5, mCutList__12daNpc_Kkri_c@ha /* 0x80553CA4@ha */
/* 805504B8  38 05 3C A4 */	addi r0, r5, mCutList__12daNpc_Kkri_c@l /* 0x80553CA4@l */
/* 805504BC  7D 80 32 14 */	add r12, r0, r6
/* 805504C0  4B E1 1B C5 */	bl __ptmf_scall
/* 805504C4  60 00 00 00 */	nop 
/* 805504C8  2C 03 00 00 */	cmpwi r3, 0
/* 805504CC  41 82 00 10 */	beq lbl_805504DC
/* 805504D0  7F E3 FB 78 */	mr r3, r31
/* 805504D4  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 805504D8  4B AF 7C A5 */	bl cutEnd__16dEvent_manager_cFi
lbl_805504DC:
/* 805504DC  38 60 00 01 */	li r3, 1
/* 805504E0  48 00 00 08 */	b lbl_805504E8
lbl_805504E4:
/* 805504E4  38 60 00 00 */	li r3, 0
lbl_805504E8:
/* 805504E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805504EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805504F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805504F4  7C 08 03 A6 */	mtlr r0
/* 805504F8  38 21 00 10 */	addi r1, r1, 0x10
/* 805504FC  4E 80 00 20 */	blr 
