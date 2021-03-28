lbl_80AB6D14:
/* 80AB6D14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AB6D18  7C 08 02 A6 */	mflr r0
/* 80AB6D1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AB6D20  39 61 00 20 */	addi r11, r1, 0x20
/* 80AB6D24  4B 8A B4 B8 */	b _savegpr_29
/* 80AB6D28  7C 7D 1B 78 */	mr r29, r3
/* 80AB6D2C  3B C0 00 00 */	li r30, 0
/* 80AB6D30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AB6D34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AB6D38  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80AB6D3C  7F E3 FB 78 */	mr r3, r31
/* 80AB6D40  3C 80 80 AC */	lis r4, struct_80AB8FA8+0x0@ha
/* 80AB6D44  38 84 8F A8 */	addi r4, r4, struct_80AB8FA8+0x0@l
/* 80AB6D48  38 84 00 0D */	addi r4, r4, 0xd
/* 80AB6D4C  7F A5 EB 78 */	mr r5, r29
/* 80AB6D50  38 C0 FF FF */	li r6, -1
/* 80AB6D54  4B 59 0D C8 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80AB6D58  2C 03 FF FF */	cmpwi r3, -1
/* 80AB6D5C  41 82 00 64 */	beq lbl_80AB6DC0
/* 80AB6D60  90 7D 0D AC */	stw r3, 0xdac(r29)
/* 80AB6D64  7F E3 FB 78 */	mr r3, r31
/* 80AB6D68  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80AB6D6C  3C A0 80 AC */	lis r5, mCutNameList__12daNpc_Raca_c@ha
/* 80AB6D70  38 A5 93 10 */	addi r5, r5, mCutNameList__12daNpc_Raca_c@l
/* 80AB6D74  38 C0 00 01 */	li r6, 1
/* 80AB6D78  38 E0 00 00 */	li r7, 0
/* 80AB6D7C  39 00 00 00 */	li r8, 0
/* 80AB6D80  4B 59 10 90 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80AB6D84  7C 60 1B 78 */	mr r0, r3
/* 80AB6D88  7F A3 EB 78 */	mr r3, r29
/* 80AB6D8C  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80AB6D90  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80AB6D94  3C A0 80 AC */	lis r5, mCutList__12daNpc_Raca_c@ha
/* 80AB6D98  38 05 93 14 */	addi r0, r5, mCutList__12daNpc_Raca_c@l
/* 80AB6D9C  7D 80 32 14 */	add r12, r0, r6
/* 80AB6DA0  4B 8A B2 E4 */	b __ptmf_scall
/* 80AB6DA4  60 00 00 00 */	nop 
/* 80AB6DA8  2C 03 00 00 */	cmpwi r3, 0
/* 80AB6DAC  41 82 00 10 */	beq lbl_80AB6DBC
/* 80AB6DB0  7F E3 FB 78 */	mr r3, r31
/* 80AB6DB4  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80AB6DB8  4B 59 13 C4 */	b cutEnd__16dEvent_manager_cFi
lbl_80AB6DBC:
/* 80AB6DBC  3B C0 00 01 */	li r30, 1
lbl_80AB6DC0:
/* 80AB6DC0  7F C3 F3 78 */	mr r3, r30
/* 80AB6DC4  39 61 00 20 */	addi r11, r1, 0x20
/* 80AB6DC8  4B 8A B4 60 */	b _restgpr_29
/* 80AB6DCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AB6DD0  7C 08 03 A6 */	mtlr r0
/* 80AB6DD4  38 21 00 20 */	addi r1, r1, 0x20
/* 80AB6DD8  4E 80 00 20 */	blr 
