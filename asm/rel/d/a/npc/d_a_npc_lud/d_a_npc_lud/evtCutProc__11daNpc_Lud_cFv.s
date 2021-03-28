lbl_80A6C044:
/* 80A6C044  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6C048  7C 08 02 A6 */	mflr r0
/* 80A6C04C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6C050  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A6C054  93 C1 00 08 */	stw r30, 8(r1)
/* 80A6C058  7C 7E 1B 78 */	mr r30, r3
/* 80A6C05C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A6C060  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A6C064  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80A6C068  7F E3 FB 78 */	mr r3, r31
/* 80A6C06C  3C 80 80 A7 */	lis r4, struct_80A6FECC+0x0@ha
/* 80A6C070  38 84 FE CC */	addi r4, r4, struct_80A6FECC+0x0@l
/* 80A6C074  38 84 00 40 */	addi r4, r4, 0x40
/* 80A6C078  7F C5 F3 78 */	mr r5, r30
/* 80A6C07C  38 C0 FF FF */	li r6, -1
/* 80A6C080  4B 5D BA 9C */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80A6C084  2C 03 FF FF */	cmpwi r3, -1
/* 80A6C088  41 82 00 68 */	beq lbl_80A6C0F0
/* 80A6C08C  90 7E 0D AC */	stw r3, 0xdac(r30)
/* 80A6C090  7F E3 FB 78 */	mr r3, r31
/* 80A6C094  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80A6C098  3C A0 80 A7 */	lis r5, mCutNameList__11daNpc_Lud_c@ha
/* 80A6C09C  38 A5 07 80 */	addi r5, r5, mCutNameList__11daNpc_Lud_c@l
/* 80A6C0A0  38 C0 00 08 */	li r6, 8
/* 80A6C0A4  38 E0 00 00 */	li r7, 0
/* 80A6C0A8  39 00 00 00 */	li r8, 0
/* 80A6C0AC  4B 5D BD 64 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80A6C0B0  7C 60 1B 78 */	mr r0, r3
/* 80A6C0B4  7F C3 F3 78 */	mr r3, r30
/* 80A6C0B8  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80A6C0BC  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80A6C0C0  3C A0 80 A7 */	lis r5, mCutList__11daNpc_Lud_c@ha
/* 80A6C0C4  38 05 07 F4 */	addi r0, r5, mCutList__11daNpc_Lud_c@l
/* 80A6C0C8  7D 80 32 14 */	add r12, r0, r6
/* 80A6C0CC  4B 8F 5F B8 */	b __ptmf_scall
/* 80A6C0D0  60 00 00 00 */	nop 
/* 80A6C0D4  2C 03 00 00 */	cmpwi r3, 0
/* 80A6C0D8  41 82 00 10 */	beq lbl_80A6C0E8
/* 80A6C0DC  7F E3 FB 78 */	mr r3, r31
/* 80A6C0E0  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80A6C0E4  4B 5D C0 98 */	b cutEnd__16dEvent_manager_cFi
lbl_80A6C0E8:
/* 80A6C0E8  38 60 00 01 */	li r3, 1
/* 80A6C0EC  48 00 00 08 */	b lbl_80A6C0F4
lbl_80A6C0F0:
/* 80A6C0F0  38 60 00 00 */	li r3, 0
lbl_80A6C0F4:
/* 80A6C0F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A6C0F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A6C0FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6C100  7C 08 03 A6 */	mtlr r0
/* 80A6C104  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6C108  4E 80 00 20 */	blr 
