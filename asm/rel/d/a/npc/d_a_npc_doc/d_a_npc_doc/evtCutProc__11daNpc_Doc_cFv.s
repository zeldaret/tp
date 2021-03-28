lbl_809A7CE0:
/* 809A7CE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A7CE4  7C 08 02 A6 */	mflr r0
/* 809A7CE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A7CEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A7CF0  93 C1 00 08 */	stw r30, 8(r1)
/* 809A7CF4  7C 7E 1B 78 */	mr r30, r3
/* 809A7CF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809A7CFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809A7D00  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 809A7D04  7F E3 FB 78 */	mr r3, r31
/* 809A7D08  3C 80 80 9B */	lis r4, struct_809AA428+0x0@ha
/* 809A7D0C  38 84 A4 28 */	addi r4, r4, struct_809AA428+0x0@l
/* 809A7D10  38 84 00 0D */	addi r4, r4, 0xd
/* 809A7D14  7F C5 F3 78 */	mr r5, r30
/* 809A7D18  38 C0 FF FF */	li r6, -1
/* 809A7D1C  4B 69 FE 00 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 809A7D20  2C 03 FF FF */	cmpwi r3, -1
/* 809A7D24  41 82 00 68 */	beq lbl_809A7D8C
/* 809A7D28  90 7E 0D AC */	stw r3, 0xdac(r30)
/* 809A7D2C  7F E3 FB 78 */	mr r3, r31
/* 809A7D30  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 809A7D34  3C A0 80 9B */	lis r5, mCutNameList__11daNpc_Doc_c@ha
/* 809A7D38  38 A5 A8 A4 */	addi r5, r5, mCutNameList__11daNpc_Doc_c@l
/* 809A7D3C  38 C0 00 01 */	li r6, 1
/* 809A7D40  38 E0 00 00 */	li r7, 0
/* 809A7D44  39 00 00 00 */	li r8, 0
/* 809A7D48  4B 6A 00 C8 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 809A7D4C  7C 60 1B 78 */	mr r0, r3
/* 809A7D50  7F C3 F3 78 */	mr r3, r30
/* 809A7D54  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 809A7D58  1C C0 00 0C */	mulli r6, r0, 0xc
/* 809A7D5C  3C A0 80 9B */	lis r5, mCutList__11daNpc_Doc_c@ha
/* 809A7D60  38 05 A8 A8 */	addi r0, r5, mCutList__11daNpc_Doc_c@l
/* 809A7D64  7D 80 32 14 */	add r12, r0, r6
/* 809A7D68  4B 9B A3 1C */	b __ptmf_scall
/* 809A7D6C  60 00 00 00 */	nop 
/* 809A7D70  2C 03 00 00 */	cmpwi r3, 0
/* 809A7D74  41 82 00 10 */	beq lbl_809A7D84
/* 809A7D78  7F E3 FB 78 */	mr r3, r31
/* 809A7D7C  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 809A7D80  4B 6A 03 FC */	b cutEnd__16dEvent_manager_cFi
lbl_809A7D84:
/* 809A7D84  38 60 00 01 */	li r3, 1
/* 809A7D88  48 00 00 08 */	b lbl_809A7D90
lbl_809A7D8C:
/* 809A7D8C  38 60 00 00 */	li r3, 0
lbl_809A7D90:
/* 809A7D90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A7D94  83 C1 00 08 */	lwz r30, 8(r1)
/* 809A7D98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A7D9C  7C 08 03 A6 */	mtlr r0
/* 809A7DA0  38 21 00 10 */	addi r1, r1, 0x10
/* 809A7DA4  4E 80 00 20 */	blr 
