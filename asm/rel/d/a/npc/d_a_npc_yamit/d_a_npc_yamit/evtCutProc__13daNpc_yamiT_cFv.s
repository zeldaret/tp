lbl_80B4AC84:
/* 80B4AC84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B4AC88  7C 08 02 A6 */	mflr r0
/* 80B4AC8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B4AC90  39 61 00 20 */	addi r11, r1, 0x20
/* 80B4AC94  4B 81 75 48 */	b _savegpr_29
/* 80B4AC98  7C 7D 1B 78 */	mr r29, r3
/* 80B4AC9C  3B C0 00 00 */	li r30, 0
/* 80B4ACA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B4ACA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B4ACA8  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80B4ACAC  7F E3 FB 78 */	mr r3, r31
/* 80B4ACB0  3C 80 80 B5 */	lis r4, struct_80B4CE84+0x0@ha
/* 80B4ACB4  38 84 CE 84 */	addi r4, r4, struct_80B4CE84+0x0@l
/* 80B4ACB8  38 84 00 09 */	addi r4, r4, 9
/* 80B4ACBC  7F A5 EB 78 */	mr r5, r29
/* 80B4ACC0  38 C0 FF FF */	li r6, -1
/* 80B4ACC4  4B 4F CE 58 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80B4ACC8  2C 03 FF FF */	cmpwi r3, -1
/* 80B4ACCC  41 82 00 64 */	beq lbl_80B4AD30
/* 80B4ACD0  90 7D 0D AC */	stw r3, 0xdac(r29)
/* 80B4ACD4  7F E3 FB 78 */	mr r3, r31
/* 80B4ACD8  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80B4ACDC  3C A0 80 B5 */	lis r5, mCutNameList__13daNpc_yamiT_c@ha
/* 80B4ACE0  38 A5 CF C8 */	addi r5, r5, mCutNameList__13daNpc_yamiT_c@l
/* 80B4ACE4  38 C0 00 02 */	li r6, 2
/* 80B4ACE8  38 E0 00 00 */	li r7, 0
/* 80B4ACEC  39 00 00 00 */	li r8, 0
/* 80B4ACF0  4B 4F D1 20 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80B4ACF4  7C 60 1B 78 */	mr r0, r3
/* 80B4ACF8  7F A3 EB 78 */	mr r3, r29
/* 80B4ACFC  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80B4AD00  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80B4AD04  3C A0 80 B5 */	lis r5, mCutList__13daNpc_yamiT_c@ha
/* 80B4AD08  38 05 CF DC */	addi r0, r5, mCutList__13daNpc_yamiT_c@l
/* 80B4AD0C  7D 80 32 14 */	add r12, r0, r6
/* 80B4AD10  4B 81 73 74 */	b __ptmf_scall
/* 80B4AD14  60 00 00 00 */	nop 
/* 80B4AD18  2C 03 00 00 */	cmpwi r3, 0
/* 80B4AD1C  41 82 00 10 */	beq lbl_80B4AD2C
/* 80B4AD20  7F E3 FB 78 */	mr r3, r31
/* 80B4AD24  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80B4AD28  4B 4F D4 54 */	b cutEnd__16dEvent_manager_cFi
lbl_80B4AD2C:
/* 80B4AD2C  3B C0 00 01 */	li r30, 1
lbl_80B4AD30:
/* 80B4AD30  7F C3 F3 78 */	mr r3, r30
/* 80B4AD34  39 61 00 20 */	addi r11, r1, 0x20
/* 80B4AD38  4B 81 74 F0 */	b _restgpr_29
/* 80B4AD3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B4AD40  7C 08 03 A6 */	mtlr r0
/* 80B4AD44  38 21 00 20 */	addi r1, r1, 0x20
/* 80B4AD48  4E 80 00 20 */	blr 
