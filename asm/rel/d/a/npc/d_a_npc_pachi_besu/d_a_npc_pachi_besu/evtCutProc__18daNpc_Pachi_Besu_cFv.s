lbl_80A93FB0:
/* 80A93FB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A93FB4  7C 08 02 A6 */	mflr r0
/* 80A93FB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A93FBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A93FC0  93 C1 00 08 */	stw r30, 8(r1)
/* 80A93FC4  7C 7E 1B 78 */	mr r30, r3
/* 80A93FC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A93FCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A93FD0  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80A93FD4  7F E3 FB 78 */	mr r3, r31
/* 80A93FD8  3C 80 80 A9 */	lis r4, struct_80A96B60+0x0@ha
/* 80A93FDC  38 84 6B 60 */	addi r4, r4, struct_80A96B60+0x0@l
/* 80A93FE0  38 84 00 D0 */	addi r4, r4, 0xd0
/* 80A93FE4  7F C5 F3 78 */	mr r5, r30
/* 80A93FE8  38 C0 FF FF */	li r6, -1
/* 80A93FEC  4B 5B 3B 30 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80A93FF0  2C 03 FF FF */	cmpwi r3, -1
/* 80A93FF4  41 82 00 68 */	beq lbl_80A9405C
/* 80A93FF8  90 7E 0D AC */	stw r3, 0xdac(r30)
/* 80A93FFC  7F E3 FB 78 */	mr r3, r31
/* 80A94000  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80A94004  3C A0 80 A9 */	lis r5, mCutNameList__18daNpc_Pachi_Besu_c@ha
/* 80A94008  38 A5 77 78 */	addi r5, r5, mCutNameList__18daNpc_Pachi_Besu_c@l
/* 80A9400C  38 C0 00 0B */	li r6, 0xb
/* 80A94010  38 E0 00 00 */	li r7, 0
/* 80A94014  39 00 00 00 */	li r8, 0
/* 80A94018  4B 5B 3D F8 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80A9401C  7C 60 1B 78 */	mr r0, r3
/* 80A94020  7F C3 F3 78 */	mr r3, r30
/* 80A94024  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80A94028  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80A9402C  3C A0 80 A9 */	lis r5, mCutList__18daNpc_Pachi_Besu_c@ha
/* 80A94030  38 05 78 1C */	addi r0, r5, mCutList__18daNpc_Pachi_Besu_c@l
/* 80A94034  7D 80 32 14 */	add r12, r0, r6
/* 80A94038  4B 8C E0 4C */	b __ptmf_scall
/* 80A9403C  60 00 00 00 */	nop 
/* 80A94040  2C 03 00 00 */	cmpwi r3, 0
/* 80A94044  41 82 00 10 */	beq lbl_80A94054
/* 80A94048  7F E3 FB 78 */	mr r3, r31
/* 80A9404C  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80A94050  4B 5B 41 2C */	b cutEnd__16dEvent_manager_cFi
lbl_80A94054:
/* 80A94054  38 60 00 01 */	li r3, 1
/* 80A94058  48 00 00 08 */	b lbl_80A94060
lbl_80A9405C:
/* 80A9405C  38 60 00 00 */	li r3, 0
lbl_80A94060:
/* 80A94060  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A94064  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A94068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9406C  7C 08 03 A6 */	mtlr r0
/* 80A94070  38 21 00 10 */	addi r1, r1, 0x10
/* 80A94074  4E 80 00 20 */	blr 
