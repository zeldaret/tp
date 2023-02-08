lbl_80963EDC:
/* 80963EDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80963EE0  7C 08 02 A6 */	mflr r0
/* 80963EE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80963EE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80963EEC  93 C1 00 08 */	stw r30, 8(r1)
/* 80963EF0  7C 7E 1B 78 */	mr r30, r3
/* 80963EF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80963EF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80963EFC  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80963F00  7F E3 FB 78 */	mr r3, r31
/* 80963F04  3C 80 80 96 */	lis r4, d_a_npc_bans__stringBase0@ha /* 0x80967F6C@ha */
/* 80963F08  38 84 7F 6C */	addi r4, r4, d_a_npc_bans__stringBase0@l /* 0x80967F6C@l */
/* 80963F0C  38 84 00 53 */	addi r4, r4, 0x53
/* 80963F10  7F C5 F3 78 */	mr r5, r30
/* 80963F14  38 C0 FF FF */	li r6, -1
/* 80963F18  4B 6E 3C 05 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80963F1C  2C 03 FF FF */	cmpwi r3, -1
/* 80963F20  41 82 00 68 */	beq lbl_80963F88
/* 80963F24  90 7E 0D AC */	stw r3, 0xdac(r30)
/* 80963F28  7F E3 FB 78 */	mr r3, r31
/* 80963F2C  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80963F30  3C A0 80 97 */	lis r5, mCutNameList__12daNpc_Bans_c@ha /* 0x8096852C@ha */
/* 80963F34  38 A5 85 2C */	addi r5, r5, mCutNameList__12daNpc_Bans_c@l /* 0x8096852C@l */
/* 80963F38  38 C0 00 04 */	li r6, 4
/* 80963F3C  38 E0 00 00 */	li r7, 0
/* 80963F40  39 00 00 00 */	li r8, 0
/* 80963F44  4B 6E 3E CD */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80963F48  7C 60 1B 78 */	mr r0, r3
/* 80963F4C  7F C3 F3 78 */	mr r3, r30
/* 80963F50  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80963F54  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80963F58  3C A0 80 97 */	lis r5, mCutList__12daNpc_Bans_c@ha /* 0x80968560@ha */
/* 80963F5C  38 05 85 60 */	addi r0, r5, mCutList__12daNpc_Bans_c@l /* 0x80968560@l */
/* 80963F60  7D 80 32 14 */	add r12, r0, r6
/* 80963F64  4B 9F E1 21 */	bl __ptmf_scall
/* 80963F68  60 00 00 00 */	nop 
/* 80963F6C  2C 03 00 00 */	cmpwi r3, 0
/* 80963F70  41 82 00 10 */	beq lbl_80963F80
/* 80963F74  7F E3 FB 78 */	mr r3, r31
/* 80963F78  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80963F7C  4B 6E 42 01 */	bl cutEnd__16dEvent_manager_cFi
lbl_80963F80:
/* 80963F80  38 60 00 01 */	li r3, 1
/* 80963F84  48 00 00 08 */	b lbl_80963F8C
lbl_80963F88:
/* 80963F88  38 60 00 00 */	li r3, 0
lbl_80963F8C:
/* 80963F8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80963F90  83 C1 00 08 */	lwz r30, 8(r1)
/* 80963F94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80963F98  7C 08 03 A6 */	mtlr r0
/* 80963F9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80963FA0  4E 80 00 20 */	blr 
