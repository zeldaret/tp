lbl_80B6CC54:
/* 80B6CC54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B6CC58  7C 08 02 A6 */	mflr r0
/* 80B6CC5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B6CC60  39 61 00 20 */	addi r11, r1, 0x20
/* 80B6CC64  4B 7F 55 78 */	b _savegpr_29
/* 80B6CC68  7C 7D 1B 78 */	mr r29, r3
/* 80B6CC6C  3B C0 00 00 */	li r30, 0
/* 80B6CC70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B6CC74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B6CC78  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80B6CC7C  7F E3 FB 78 */	mr r3, r31
/* 80B6CC80  3C 80 80 B7 */	lis r4, struct_80B6EA80+0x0@ha
/* 80B6CC84  38 84 EA 80 */	addi r4, r4, struct_80B6EA80+0x0@l
/* 80B6CC88  38 84 00 0D */	addi r4, r4, 0xd
/* 80B6CC8C  7F A5 EB 78 */	mr r5, r29
/* 80B6CC90  38 C0 FF FF */	li r6, -1
/* 80B6CC94  4B 4D AE 88 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80B6CC98  2C 03 FF FF */	cmpwi r3, -1
/* 80B6CC9C  41 82 00 64 */	beq lbl_80B6CD00
/* 80B6CCA0  90 7D 0D AC */	stw r3, 0xdac(r29)
/* 80B6CCA4  7F E3 FB 78 */	mr r3, r31
/* 80B6CCA8  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80B6CCAC  3C A0 80 B7 */	lis r5, mCutNameList__12daNpc_Zant_c@ha
/* 80B6CCB0  38 A5 EB 38 */	addi r5, r5, mCutNameList__12daNpc_Zant_c@l
/* 80B6CCB4  38 C0 00 01 */	li r6, 1
/* 80B6CCB8  38 E0 00 00 */	li r7, 0
/* 80B6CCBC  39 00 00 00 */	li r8, 0
/* 80B6CCC0  4B 4D B1 50 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80B6CCC4  7C 60 1B 78 */	mr r0, r3
/* 80B6CCC8  7F A3 EB 78 */	mr r3, r29
/* 80B6CCCC  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80B6CCD0  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80B6CCD4  3C A0 80 B7 */	lis r5, mCutList__12daNpc_Zant_c@ha
/* 80B6CCD8  38 05 EB 3C */	addi r0, r5, mCutList__12daNpc_Zant_c@l
/* 80B6CCDC  7D 80 32 14 */	add r12, r0, r6
/* 80B6CCE0  4B 7F 53 A4 */	b __ptmf_scall
/* 80B6CCE4  60 00 00 00 */	nop 
/* 80B6CCE8  2C 03 00 00 */	cmpwi r3, 0
/* 80B6CCEC  41 82 00 10 */	beq lbl_80B6CCFC
/* 80B6CCF0  7F E3 FB 78 */	mr r3, r31
/* 80B6CCF4  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80B6CCF8  4B 4D B4 84 */	b cutEnd__16dEvent_manager_cFi
lbl_80B6CCFC:
/* 80B6CCFC  3B C0 00 01 */	li r30, 1
lbl_80B6CD00:
/* 80B6CD00  7F C3 F3 78 */	mr r3, r30
/* 80B6CD04  39 61 00 20 */	addi r11, r1, 0x20
/* 80B6CD08  4B 7F 55 20 */	b _restgpr_29
/* 80B6CD0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B6CD10  7C 08 03 A6 */	mtlr r0
/* 80B6CD14  38 21 00 20 */	addi r1, r1, 0x20
/* 80B6CD18  4E 80 00 20 */	blr 
