lbl_8095317C:
/* 8095317C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80953180  7C 08 02 A6 */	mflr r0
/* 80953184  90 01 00 14 */	stw r0, 0x14(r1)
/* 80953188  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8095318C  93 C1 00 08 */	stw r30, 8(r1)
/* 80953190  7C 7E 1B 78 */	mr r30, r3
/* 80953194  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80953198  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8095319C  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 809531A0  7F E3 FB 78 */	mr r3, r31
/* 809531A4  3C 80 80 95 */	lis r4, d_a_npc_aru__stringBase0@ha /* 0x8095781C@ha */
/* 809531A8  38 84 78 1C */	addi r4, r4, d_a_npc_aru__stringBase0@l /* 0x8095781C@l */
/* 809531AC  38 84 00 B8 */	addi r4, r4, 0xb8
/* 809531B0  7F C5 F3 78 */	mr r5, r30
/* 809531B4  38 C0 FF FF */	li r6, -1
/* 809531B8  4B 6F 49 65 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 809531BC  2C 03 FF FF */	cmpwi r3, -1
/* 809531C0  41 82 00 68 */	beq lbl_80953228
/* 809531C4  90 7E 0D AC */	stw r3, 0xdac(r30)
/* 809531C8  7F E3 FB 78 */	mr r3, r31
/* 809531CC  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 809531D0  3C A0 80 95 */	lis r5, mCutNameList__11daNpc_Aru_c@ha /* 0x80957E04@ha */
/* 809531D4  38 A5 7E 04 */	addi r5, r5, mCutNameList__11daNpc_Aru_c@l /* 0x80957E04@l */
/* 809531D8  38 C0 00 07 */	li r6, 7
/* 809531DC  38 E0 00 00 */	li r7, 0
/* 809531E0  39 00 00 00 */	li r8, 0
/* 809531E4  4B 6F 4C 2D */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 809531E8  7C 60 1B 78 */	mr r0, r3
/* 809531EC  7F C3 F3 78 */	mr r3, r30
/* 809531F0  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 809531F4  1C C0 00 0C */	mulli r6, r0, 0xc
/* 809531F8  3C A0 80 95 */	lis r5, mCutList__11daNpc_Aru_c@ha /* 0x80957E68@ha */
/* 809531FC  38 05 7E 68 */	addi r0, r5, mCutList__11daNpc_Aru_c@l /* 0x80957E68@l */
/* 80953200  7D 80 32 14 */	add r12, r0, r6
/* 80953204  4B A0 EE 81 */	bl __ptmf_scall
/* 80953208  60 00 00 00 */	nop 
/* 8095320C  2C 03 00 00 */	cmpwi r3, 0
/* 80953210  41 82 00 10 */	beq lbl_80953220
/* 80953214  7F E3 FB 78 */	mr r3, r31
/* 80953218  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 8095321C  4B 6F 4F 61 */	bl cutEnd__16dEvent_manager_cFi
lbl_80953220:
/* 80953220  38 60 00 01 */	li r3, 1
/* 80953224  48 00 00 08 */	b lbl_8095322C
lbl_80953228:
/* 80953228  38 60 00 00 */	li r3, 0
lbl_8095322C:
/* 8095322C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80953230  83 C1 00 08 */	lwz r30, 8(r1)
/* 80953234  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80953238  7C 08 03 A6 */	mtlr r0
/* 8095323C  38 21 00 10 */	addi r1, r1, 0x10
/* 80953240  4E 80 00 20 */	blr 
