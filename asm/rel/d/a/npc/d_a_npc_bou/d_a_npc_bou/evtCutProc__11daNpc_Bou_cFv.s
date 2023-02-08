lbl_8096E324:
/* 8096E324  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8096E328  7C 08 02 A6 */	mflr r0
/* 8096E32C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8096E330  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8096E334  93 C1 00 08 */	stw r30, 8(r1)
/* 8096E338  7C 7E 1B 78 */	mr r30, r3
/* 8096E33C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8096E340  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8096E344  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 8096E348  7F E3 FB 78 */	mr r3, r31
/* 8096E34C  3C 80 80 97 */	lis r4, d_a_npc_bou__stringBase0@ha /* 0x8097299C@ha */
/* 8096E350  38 84 29 9C */	addi r4, r4, d_a_npc_bou__stringBase0@l /* 0x8097299C@l */
/* 8096E354  38 84 00 A3 */	addi r4, r4, 0xa3
/* 8096E358  7F C5 F3 78 */	mr r5, r30
/* 8096E35C  38 C0 FF FF */	li r6, -1
/* 8096E360  4B 6D 97 BD */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 8096E364  2C 03 FF FF */	cmpwi r3, -1
/* 8096E368  41 82 00 68 */	beq lbl_8096E3D0
/* 8096E36C  90 7E 0D AC */	stw r3, 0xdac(r30)
/* 8096E370  7F E3 FB 78 */	mr r3, r31
/* 8096E374  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 8096E378  3C A0 80 97 */	lis r5, mCutNameList__11daNpc_Bou_c@ha /* 0x80973124@ha */
/* 8096E37C  38 A5 31 24 */	addi r5, r5, mCutNameList__11daNpc_Bou_c@l /* 0x80973124@l */
/* 8096E380  38 C0 00 09 */	li r6, 9
/* 8096E384  38 E0 00 00 */	li r7, 0
/* 8096E388  39 00 00 00 */	li r8, 0
/* 8096E38C  4B 6D 9A 85 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 8096E390  7C 60 1B 78 */	mr r0, r3
/* 8096E394  7F C3 F3 78 */	mr r3, r30
/* 8096E398  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 8096E39C  1C C0 00 0C */	mulli r6, r0, 0xc
/* 8096E3A0  3C A0 80 97 */	lis r5, mCutList__11daNpc_Bou_c@ha /* 0x809731A8@ha */
/* 8096E3A4  38 05 31 A8 */	addi r0, r5, mCutList__11daNpc_Bou_c@l /* 0x809731A8@l */
/* 8096E3A8  7D 80 32 14 */	add r12, r0, r6
/* 8096E3AC  4B 9F 3C D9 */	bl __ptmf_scall
/* 8096E3B0  60 00 00 00 */	nop 
/* 8096E3B4  2C 03 00 00 */	cmpwi r3, 0
/* 8096E3B8  41 82 00 10 */	beq lbl_8096E3C8
/* 8096E3BC  7F E3 FB 78 */	mr r3, r31
/* 8096E3C0  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 8096E3C4  4B 6D 9D B9 */	bl cutEnd__16dEvent_manager_cFi
lbl_8096E3C8:
/* 8096E3C8  38 60 00 01 */	li r3, 1
/* 8096E3CC  48 00 00 08 */	b lbl_8096E3D4
lbl_8096E3D0:
/* 8096E3D0  38 60 00 00 */	li r3, 0
lbl_8096E3D4:
/* 8096E3D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8096E3D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8096E3DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8096E3E0  7C 08 03 A6 */	mtlr r0
/* 8096E3E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8096E3E8  4E 80 00 20 */	blr 
