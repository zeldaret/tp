lbl_80A75704:
/* 80A75704  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A75708  7C 08 02 A6 */	mflr r0
/* 80A7570C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A75710  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A75714  93 C1 00 08 */	stw r30, 8(r1)
/* 80A75718  7C 7E 1B 78 */	mr r30, r3
/* 80A7571C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A75720  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A75724  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80A75728  7F E3 FB 78 */	mr r3, r31
/* 80A7572C  3C 80 80 A8 */	lis r4, d_a_npc_moi__stringBase0@ha /* 0x80A7B0D8@ha */
/* 80A75730  38 84 B0 D8 */	addi r4, r4, d_a_npc_moi__stringBase0@l /* 0x80A7B0D8@l */
/* 80A75734  38 84 00 2A */	addi r4, r4, 0x2a
/* 80A75738  7F C5 F3 78 */	mr r5, r30
/* 80A7573C  38 C0 FF FF */	li r6, -1
/* 80A75740  4B 5D 23 DD */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80A75744  2C 03 FF FF */	cmpwi r3, -1
/* 80A75748  41 82 00 68 */	beq lbl_80A757B0
/* 80A7574C  90 7E 0D AC */	stw r3, 0xdac(r30)
/* 80A75750  7F E3 FB 78 */	mr r3, r31
/* 80A75754  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80A75758  3C A0 80 A8 */	lis r5, mCutNameList__11daNpc_Moi_c@ha /* 0x80A7BC9C@ha */
/* 80A7575C  38 A5 BC 9C */	addi r5, r5, mCutNameList__11daNpc_Moi_c@l /* 0x80A7BC9C@l */
/* 80A75760  38 C0 00 05 */	li r6, 5
/* 80A75764  38 E0 00 00 */	li r7, 0
/* 80A75768  39 00 00 00 */	li r8, 0
/* 80A7576C  4B 5D 26 A5 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80A75770  7C 60 1B 78 */	mr r0, r3
/* 80A75774  7F C3 F3 78 */	mr r3, r30
/* 80A75778  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80A7577C  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80A75780  3C A0 80 A8 */	lis r5, mCutList__11daNpc_Moi_c@ha /* 0x80A7BCE0@ha */
/* 80A75784  38 05 BC E0 */	addi r0, r5, mCutList__11daNpc_Moi_c@l /* 0x80A7BCE0@l */
/* 80A75788  7D 80 32 14 */	add r12, r0, r6
/* 80A7578C  4B 8E C8 F9 */	bl __ptmf_scall
/* 80A75790  60 00 00 00 */	nop 
/* 80A75794  2C 03 00 00 */	cmpwi r3, 0
/* 80A75798  41 82 00 10 */	beq lbl_80A757A8
/* 80A7579C  7F E3 FB 78 */	mr r3, r31
/* 80A757A0  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80A757A4  4B 5D 29 D9 */	bl cutEnd__16dEvent_manager_cFi
lbl_80A757A8:
/* 80A757A8  38 60 00 01 */	li r3, 1
/* 80A757AC  48 00 00 08 */	b lbl_80A757B4
lbl_80A757B0:
/* 80A757B0  38 60 00 00 */	li r3, 0
lbl_80A757B4:
/* 80A757B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A757B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A757BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A757C0  7C 08 03 A6 */	mtlr r0
/* 80A757C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A757C8  4E 80 00 20 */	blr 
