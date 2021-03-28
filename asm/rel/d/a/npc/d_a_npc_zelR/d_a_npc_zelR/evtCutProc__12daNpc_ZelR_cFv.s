lbl_80B6FE00:
/* 80B6FE00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B6FE04  7C 08 02 A6 */	mflr r0
/* 80B6FE08  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B6FE0C  39 61 00 20 */	addi r11, r1, 0x20
/* 80B6FE10  4B 7F 23 CC */	b _savegpr_29
/* 80B6FE14  7C 7D 1B 78 */	mr r29, r3
/* 80B6FE18  3B C0 00 00 */	li r30, 0
/* 80B6FE1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B6FE20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B6FE24  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80B6FE28  7F E3 FB 78 */	mr r3, r31
/* 80B6FE2C  3C 80 80 B7 */	lis r4, struct_80B71BC0+0x0@ha
/* 80B6FE30  38 84 1B C0 */	addi r4, r4, struct_80B71BC0+0x0@l
/* 80B6FE34  38 84 00 13 */	addi r4, r4, 0x13
/* 80B6FE38  7F A5 EB 78 */	mr r5, r29
/* 80B6FE3C  38 C0 FF FF */	li r6, -1
/* 80B6FE40  4B 4D 7C DC */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80B6FE44  2C 03 FF FF */	cmpwi r3, -1
/* 80B6FE48  41 82 00 64 */	beq lbl_80B6FEAC
/* 80B6FE4C  90 7D 0D AC */	stw r3, 0xdac(r29)
/* 80B6FE50  7F E3 FB 78 */	mr r3, r31
/* 80B6FE54  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80B6FE58  3C A0 80 B7 */	lis r5, mCutNameList__12daNpc_ZelR_c@ha
/* 80B6FE5C  38 A5 1C A8 */	addi r5, r5, mCutNameList__12daNpc_ZelR_c@l
/* 80B6FE60  38 C0 00 01 */	li r6, 1
/* 80B6FE64  38 E0 00 00 */	li r7, 0
/* 80B6FE68  39 00 00 00 */	li r8, 0
/* 80B6FE6C  4B 4D 7F A4 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80B6FE70  7C 60 1B 78 */	mr r0, r3
/* 80B6FE74  7F A3 EB 78 */	mr r3, r29
/* 80B6FE78  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80B6FE7C  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80B6FE80  3C A0 80 B7 */	lis r5, mCutList__12daNpc_ZelR_c@ha
/* 80B6FE84  38 05 1C AC */	addi r0, r5, mCutList__12daNpc_ZelR_c@l
/* 80B6FE88  7D 80 32 14 */	add r12, r0, r6
/* 80B6FE8C  4B 7F 21 F8 */	b __ptmf_scall
/* 80B6FE90  60 00 00 00 */	nop 
/* 80B6FE94  2C 03 00 00 */	cmpwi r3, 0
/* 80B6FE98  41 82 00 10 */	beq lbl_80B6FEA8
/* 80B6FE9C  7F E3 FB 78 */	mr r3, r31
/* 80B6FEA0  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80B6FEA4  4B 4D 82 D8 */	b cutEnd__16dEvent_manager_cFi
lbl_80B6FEA8:
/* 80B6FEA8  3B C0 00 01 */	li r30, 1
lbl_80B6FEAC:
/* 80B6FEAC  7F C3 F3 78 */	mr r3, r30
/* 80B6FEB0  39 61 00 20 */	addi r11, r1, 0x20
/* 80B6FEB4  4B 7F 23 74 */	b _restgpr_29
/* 80B6FEB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B6FEBC  7C 08 03 A6 */	mtlr r0
/* 80B6FEC0  38 21 00 20 */	addi r1, r1, 0x20
/* 80B6FEC4  4E 80 00 20 */	blr 
