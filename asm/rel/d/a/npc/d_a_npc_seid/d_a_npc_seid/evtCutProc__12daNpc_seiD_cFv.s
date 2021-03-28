lbl_80AC9F8C:
/* 80AC9F8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AC9F90  7C 08 02 A6 */	mflr r0
/* 80AC9F94  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AC9F98  39 61 00 20 */	addi r11, r1, 0x20
/* 80AC9F9C  4B 89 82 40 */	b _savegpr_29
/* 80AC9FA0  7C 7D 1B 78 */	mr r29, r3
/* 80AC9FA4  3B C0 00 00 */	li r30, 0
/* 80AC9FA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AC9FAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AC9FB0  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80AC9FB4  7F E3 FB 78 */	mr r3, r31
/* 80AC9FB8  3C 80 80 AD */	lis r4, struct_80ACB408+0x0@ha
/* 80AC9FBC  38 84 B4 08 */	addi r4, r4, struct_80ACB408+0x0@l
/* 80AC9FC0  38 84 00 22 */	addi r4, r4, 0x22
/* 80AC9FC4  7F A5 EB 78 */	mr r5, r29
/* 80AC9FC8  38 C0 FF FF */	li r6, -1
/* 80AC9FCC  4B 57 DB 50 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80AC9FD0  2C 03 FF FF */	cmpwi r3, -1
/* 80AC9FD4  41 82 00 64 */	beq lbl_80ACA038
/* 80AC9FD8  90 7D 0D AC */	stw r3, 0xdac(r29)
/* 80AC9FDC  7F E3 FB 78 */	mr r3, r31
/* 80AC9FE0  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80AC9FE4  3C A0 80 AD */	lis r5, mCutNameList__12daNpc_seiD_c@ha
/* 80AC9FE8  38 A5 B4 DC */	addi r5, r5, mCutNameList__12daNpc_seiD_c@l
/* 80AC9FEC  38 C0 00 01 */	li r6, 1
/* 80AC9FF0  38 E0 00 00 */	li r7, 0
/* 80AC9FF4  39 00 00 00 */	li r8, 0
/* 80AC9FF8  4B 57 DE 18 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80AC9FFC  7C 60 1B 78 */	mr r0, r3
/* 80ACA000  7F A3 EB 78 */	mr r3, r29
/* 80ACA004  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80ACA008  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80ACA00C  3C A0 80 AD */	lis r5, mCutList__12daNpc_seiD_c@ha
/* 80ACA010  38 05 B4 E0 */	addi r0, r5, mCutList__12daNpc_seiD_c@l
/* 80ACA014  7D 80 32 14 */	add r12, r0, r6
/* 80ACA018  4B 89 80 6C */	b __ptmf_scall
/* 80ACA01C  60 00 00 00 */	nop 
/* 80ACA020  2C 03 00 00 */	cmpwi r3, 0
/* 80ACA024  41 82 00 10 */	beq lbl_80ACA034
/* 80ACA028  7F E3 FB 78 */	mr r3, r31
/* 80ACA02C  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80ACA030  4B 57 E1 4C */	b cutEnd__16dEvent_manager_cFi
lbl_80ACA034:
/* 80ACA034  3B C0 00 01 */	li r30, 1
lbl_80ACA038:
/* 80ACA038  7F C3 F3 78 */	mr r3, r30
/* 80ACA03C  39 61 00 20 */	addi r11, r1, 0x20
/* 80ACA040  4B 89 81 E8 */	b _restgpr_29
/* 80ACA044  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80ACA048  7C 08 03 A6 */	mtlr r0
/* 80ACA04C  38 21 00 20 */	addi r1, r1, 0x20
/* 80ACA050  4E 80 00 20 */	blr 
