lbl_80A61164:
/* 80A61164  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A61168  7C 08 02 A6 */	mflr r0
/* 80A6116C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A61170  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A61174  93 C1 00 08 */	stw r30, 8(r1)
/* 80A61178  7C 7E 1B 78 */	mr r30, r3
/* 80A6117C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A61180  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A61184  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80A61188  7F E3 FB 78 */	mr r3, r31
/* 80A6118C  3C 80 80 A6 */	lis r4, struct_80A639C4+0x0@ha
/* 80A61190  38 84 39 C4 */	addi r4, r4, struct_80A639C4+0x0@l
/* 80A61194  38 84 00 20 */	addi r4, r4, 0x20
/* 80A61198  7F C5 F3 78 */	mr r5, r30
/* 80A6119C  38 C0 FF FF */	li r6, -1
/* 80A611A0  4B 5E 69 7C */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80A611A4  2C 03 FF FF */	cmpwi r3, -1
/* 80A611A8  41 82 00 68 */	beq lbl_80A61210
/* 80A611AC  90 7E 0D AC */	stw r3, 0xdac(r30)
/* 80A611B0  7F E3 FB 78 */	mr r3, r31
/* 80A611B4  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80A611B8  3C A0 80 A6 */	lis r5, mCutNameList__13daNpc_Kyury_c@ha
/* 80A611BC  38 A5 3F F4 */	addi r5, r5, mCutNameList__13daNpc_Kyury_c@l
/* 80A611C0  38 C0 00 02 */	li r6, 2
/* 80A611C4  38 E0 00 00 */	li r7, 0
/* 80A611C8  39 00 00 00 */	li r8, 0
/* 80A611CC  4B 5E 6C 44 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80A611D0  7C 60 1B 78 */	mr r0, r3
/* 80A611D4  7F C3 F3 78 */	mr r3, r30
/* 80A611D8  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80A611DC  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80A611E0  3C A0 80 A6 */	lis r5, mCutList__13daNpc_Kyury_c@ha
/* 80A611E4  38 05 40 08 */	addi r0, r5, mCutList__13daNpc_Kyury_c@l
/* 80A611E8  7D 80 32 14 */	add r12, r0, r6
/* 80A611EC  4B 90 0E 98 */	b __ptmf_scall
/* 80A611F0  60 00 00 00 */	nop 
/* 80A611F4  2C 03 00 00 */	cmpwi r3, 0
/* 80A611F8  41 82 00 10 */	beq lbl_80A61208
/* 80A611FC  7F E3 FB 78 */	mr r3, r31
/* 80A61200  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80A61204  4B 5E 6F 78 */	b cutEnd__16dEvent_manager_cFi
lbl_80A61208:
/* 80A61208  38 60 00 01 */	li r3, 1
/* 80A6120C  48 00 00 08 */	b lbl_80A61214
lbl_80A61210:
/* 80A61210  38 60 00 00 */	li r3, 0
lbl_80A61214:
/* 80A61214  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A61218  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A6121C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A61220  7C 08 03 A6 */	mtlr r0
/* 80A61224  38 21 00 10 */	addi r1, r1, 0x10
/* 80A61228  4E 80 00 20 */	blr 
