lbl_80A99F3C:
/* 80A99F3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A99F40  7C 08 02 A6 */	mflr r0
/* 80A99F44  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A99F48  39 61 00 20 */	addi r11, r1, 0x20
/* 80A99F4C  4B 8C 82 8C */	b _savegpr_28
/* 80A99F50  7C 7C 1B 78 */	mr r28, r3
/* 80A99F54  7C 9D 23 78 */	mr r29, r4
/* 80A99F58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A99F5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A99F60  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A99F64  7F C3 F3 78 */	mr r3, r30
/* 80A99F68  3C A0 80 AA */	lis r5, struct_80A9B988+0x0@ha
/* 80A99F6C  38 A5 B9 88 */	addi r5, r5, struct_80A9B988+0x0@l
/* 80A99F70  38 A5 00 E9 */	addi r5, r5, 0xe9
/* 80A99F74  38 C0 00 03 */	li r6, 3
/* 80A99F78  4B 5A E1 74 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A99F7C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A99F80  40 82 00 0C */	bne lbl_80A99F8C
/* 80A99F84  38 60 00 01 */	li r3, 1
/* 80A99F88  48 00 00 30 */	b lbl_80A99FB8
lbl_80A99F8C:
/* 80A99F8C  7F C3 F3 78 */	mr r3, r30
/* 80A99F90  7F A4 EB 78 */	mr r4, r29
/* 80A99F94  4B 5A DD B8 */	b getIsAddvance__16dEvent_manager_cFi
/* 80A99F98  2C 03 00 00 */	cmpwi r3, 0
/* 80A99F9C  41 82 00 10 */	beq lbl_80A99FAC
/* 80A99FA0  7F 83 E3 78 */	mr r3, r28
/* 80A99FA4  7F E4 FB 78 */	mr r4, r31
/* 80A99FA8  48 00 00 29 */	bl _cut1stHit_KakasiBody_Init__18daNpc_Pachi_Maro_cFRCi
lbl_80A99FAC:
/* 80A99FAC  7F 83 E3 78 */	mr r3, r28
/* 80A99FB0  7F E4 FB 78 */	mr r4, r31
/* 80A99FB4  48 00 00 A9 */	bl _cut1stHit_KakasiBody_Main__18daNpc_Pachi_Maro_cFRCi
lbl_80A99FB8:
/* 80A99FB8  39 61 00 20 */	addi r11, r1, 0x20
/* 80A99FBC  4B 8C 82 68 */	b _restgpr_28
/* 80A99FC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A99FC4  7C 08 03 A6 */	mtlr r0
/* 80A99FC8  38 21 00 20 */	addi r1, r1, 0x20
/* 80A99FCC  4E 80 00 20 */	blr 
