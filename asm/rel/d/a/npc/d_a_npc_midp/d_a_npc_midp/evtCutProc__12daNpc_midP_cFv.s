lbl_80A71BFC:
/* 80A71BFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A71C00  7C 08 02 A6 */	mflr r0
/* 80A71C04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A71C08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A71C0C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A71C10  7C 7E 1B 78 */	mr r30, r3
/* 80A71C14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A71C18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A71C1C  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80A71C20  7F E3 FB 78 */	mr r3, r31
/* 80A71C24  3C 80 80 A7 */	lis r4, d_a_npc_midp__stringBase0@ha /* 0x80A73AA0@ha */
/* 80A71C28  38 84 3A A0 */	addi r4, r4, d_a_npc_midp__stringBase0@l /* 0x80A73AA0@l */
/* 80A71C2C  38 84 00 0D */	addi r4, r4, 0xd
/* 80A71C30  7F C5 F3 78 */	mr r5, r30
/* 80A71C34  38 C0 FF FF */	li r6, -1
/* 80A71C38  4B 5D 5E E5 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80A71C3C  2C 03 FF FF */	cmpwi r3, -1
/* 80A71C40  41 82 00 68 */	beq lbl_80A71CA8
/* 80A71C44  90 7E 0D AC */	stw r3, 0xdac(r30)
/* 80A71C48  7F E3 FB 78 */	mr r3, r31
/* 80A71C4C  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80A71C50  3C A0 80 A7 */	lis r5, mCutNameList__12daNpc_midP_c@ha /* 0x80A73B58@ha */
/* 80A71C54  38 A5 3B 58 */	addi r5, r5, mCutNameList__12daNpc_midP_c@l /* 0x80A73B58@l */
/* 80A71C58  38 C0 00 01 */	li r6, 1
/* 80A71C5C  38 E0 00 00 */	li r7, 0
/* 80A71C60  39 00 00 00 */	li r8, 0
/* 80A71C64  4B 5D 61 AD */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80A71C68  7C 60 1B 78 */	mr r0, r3
/* 80A71C6C  7F C3 F3 78 */	mr r3, r30
/* 80A71C70  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80A71C74  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80A71C78  3C A0 80 A7 */	lis r5, mCutList__12daNpc_midP_c@ha /* 0x80A73B5C@ha */
/* 80A71C7C  38 05 3B 5C */	addi r0, r5, mCutList__12daNpc_midP_c@l /* 0x80A73B5C@l */
/* 80A71C80  7D 80 32 14 */	add r12, r0, r6
/* 80A71C84  4B 8F 04 01 */	bl __ptmf_scall
/* 80A71C88  60 00 00 00 */	nop 
/* 80A71C8C  2C 03 00 00 */	cmpwi r3, 0
/* 80A71C90  41 82 00 10 */	beq lbl_80A71CA0
/* 80A71C94  7F E3 FB 78 */	mr r3, r31
/* 80A71C98  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80A71C9C  4B 5D 64 E1 */	bl cutEnd__16dEvent_manager_cFi
lbl_80A71CA0:
/* 80A71CA0  38 60 00 01 */	li r3, 1
/* 80A71CA4  48 00 00 08 */	b lbl_80A71CAC
lbl_80A71CA8:
/* 80A71CA8  38 60 00 00 */	li r3, 0
lbl_80A71CAC:
/* 80A71CAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A71CB0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A71CB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A71CB8  7C 08 03 A6 */	mtlr r0
/* 80A71CBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A71CC0  4E 80 00 20 */	blr 
