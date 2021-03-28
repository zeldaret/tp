lbl_80A15940:
/* 80A15940  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A15944  7C 08 02 A6 */	mflr r0
/* 80A15948  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A1594C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A15950  93 C1 00 08 */	stw r30, 8(r1)
/* 80A15954  7C 7E 1B 78 */	mr r30, r3
/* 80A15958  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A1595C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A15960  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80A15964  7F E3 FB 78 */	mr r3, r31
/* 80A15968  3C 80 80 A2 */	lis r4, struct_80A1A49C+0x0@ha
/* 80A1596C  38 84 A4 9C */	addi r4, r4, struct_80A1A49C+0x0@l
/* 80A15970  38 84 00 73 */	addi r4, r4, 0x73
/* 80A15974  7F C5 F3 78 */	mr r5, r30
/* 80A15978  38 C0 FF FF */	li r6, -1
/* 80A1597C  4B 63 21 A0 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80A15980  2C 03 FF FF */	cmpwi r3, -1
/* 80A15984  41 82 00 68 */	beq lbl_80A159EC
/* 80A15988  90 7E 0D AC */	stw r3, 0xdac(r30)
/* 80A1598C  7F E3 FB 78 */	mr r3, r31
/* 80A15990  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80A15994  3C A0 80 A2 */	lis r5, mCutNameList__13daNpc_Jagar_c@ha
/* 80A15998  38 A5 AA BC */	addi r5, r5, mCutNameList__13daNpc_Jagar_c@l
/* 80A1599C  38 C0 00 07 */	li r6, 7
/* 80A159A0  38 E0 00 00 */	li r7, 0
/* 80A159A4  39 00 00 00 */	li r8, 0
/* 80A159A8  4B 63 24 68 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80A159AC  7C 60 1B 78 */	mr r0, r3
/* 80A159B0  7F C3 F3 78 */	mr r3, r30
/* 80A159B4  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80A159B8  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80A159BC  3C A0 80 A2 */	lis r5, mCutList__13daNpc_Jagar_c@ha
/* 80A159C0  38 05 AB 20 */	addi r0, r5, mCutList__13daNpc_Jagar_c@l
/* 80A159C4  7D 80 32 14 */	add r12, r0, r6
/* 80A159C8  4B 94 C6 BC */	b __ptmf_scall
/* 80A159CC  60 00 00 00 */	nop 
/* 80A159D0  2C 03 00 00 */	cmpwi r3, 0
/* 80A159D4  41 82 00 10 */	beq lbl_80A159E4
/* 80A159D8  7F E3 FB 78 */	mr r3, r31
/* 80A159DC  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80A159E0  4B 63 27 9C */	b cutEnd__16dEvent_manager_cFi
lbl_80A159E4:
/* 80A159E4  38 60 00 01 */	li r3, 1
/* 80A159E8  48 00 00 08 */	b lbl_80A159F0
lbl_80A159EC:
/* 80A159EC  38 60 00 00 */	li r3, 0
lbl_80A159F0:
/* 80A159F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A159F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A159F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A159FC  7C 08 03 A6 */	mtlr r0
/* 80A15A00  38 21 00 10 */	addi r1, r1, 0x10
/* 80A15A04  4E 80 00 20 */	blr 
