lbl_80B4E868:
/* 80B4E868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4E86C  7C 08 02 A6 */	mflr r0
/* 80B4E870  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4E874  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4E878  93 C1 00 08 */	stw r30, 8(r1)
/* 80B4E87C  7C 7E 1B 78 */	mr r30, r3
/* 80B4E880  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B4E884  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B4E888  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80B4E88C  7F E3 FB 78 */	mr r3, r31
/* 80B4E890  3C 80 80 B5 */	lis r4, struct_80B52408+0x0@ha
/* 80B4E894  38 84 24 08 */	addi r4, r4, struct_80B52408+0x0@l
/* 80B4E898  38 84 00 45 */	addi r4, r4, 0x45
/* 80B4E89C  7F C5 F3 78 */	mr r5, r30
/* 80B4E8A0  38 C0 FF FF */	li r6, -1
/* 80B4E8A4  4B 4F 92 78 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80B4E8A8  2C 03 FF FF */	cmpwi r3, -1
/* 80B4E8AC  41 82 00 68 */	beq lbl_80B4E914
/* 80B4E8B0  90 7E 0D AC */	stw r3, 0xdac(r30)
/* 80B4E8B4  7F E3 FB 78 */	mr r3, r31
/* 80B4E8B8  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80B4E8BC  3C A0 80 B5 */	lis r5, mCutNameList__13daNpc_Yelia_c@ha
/* 80B4E8C0  38 A5 30 64 */	addi r5, r5, mCutNameList__13daNpc_Yelia_c@l
/* 80B4E8C4  38 C0 00 06 */	li r6, 6
/* 80B4E8C8  38 E0 00 00 */	li r7, 0
/* 80B4E8CC  39 00 00 00 */	li r8, 0
/* 80B4E8D0  4B 4F 95 40 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80B4E8D4  7C 60 1B 78 */	mr r0, r3
/* 80B4E8D8  7F C3 F3 78 */	mr r3, r30
/* 80B4E8DC  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80B4E8E0  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80B4E8E4  3C A0 80 B5 */	lis r5, mCutList__13daNpc_Yelia_c@ha
/* 80B4E8E8  38 05 30 B8 */	addi r0, r5, mCutList__13daNpc_Yelia_c@l
/* 80B4E8EC  7D 80 32 14 */	add r12, r0, r6
/* 80B4E8F0  4B 81 37 94 */	b __ptmf_scall
/* 80B4E8F4  60 00 00 00 */	nop 
/* 80B4E8F8  2C 03 00 00 */	cmpwi r3, 0
/* 80B4E8FC  41 82 00 10 */	beq lbl_80B4E90C
/* 80B4E900  7F E3 FB 78 */	mr r3, r31
/* 80B4E904  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80B4E908  4B 4F 98 74 */	b cutEnd__16dEvent_manager_cFi
lbl_80B4E90C:
/* 80B4E90C  38 60 00 01 */	li r3, 1
/* 80B4E910  48 00 00 08 */	b lbl_80B4E918
lbl_80B4E914:
/* 80B4E914  38 60 00 00 */	li r3, 0
lbl_80B4E918:
/* 80B4E918  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4E91C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B4E920  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4E924  7C 08 03 A6 */	mtlr r0
/* 80B4E928  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4E92C  4E 80 00 20 */	blr 
