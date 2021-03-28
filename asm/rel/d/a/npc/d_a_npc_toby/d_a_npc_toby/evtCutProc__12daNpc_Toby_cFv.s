lbl_80B1FBD4:
/* 80B1FBD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1FBD8  7C 08 02 A6 */	mflr r0
/* 80B1FBDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1FBE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B1FBE4  93 C1 00 08 */	stw r30, 8(r1)
/* 80B1FBE8  7C 7E 1B 78 */	mr r30, r3
/* 80B1FBEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B1FBF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B1FBF4  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80B1FBF8  7F E3 FB 78 */	mr r3, r31
/* 80B1FBFC  3C 80 80 B2 */	lis r4, struct_80B24B8C+0x0@ha
/* 80B1FC00  38 84 4B 8C */	addi r4, r4, struct_80B24B8C+0x0@l
/* 80B1FC04  38 84 00 65 */	addi r4, r4, 0x65
/* 80B1FC08  7F C5 F3 78 */	mr r5, r30
/* 80B1FC0C  38 C0 FF FF */	li r6, -1
/* 80B1FC10  4B 52 7F 0C */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80B1FC14  2C 03 FF FF */	cmpwi r3, -1
/* 80B1FC18  41 82 00 68 */	beq lbl_80B1FC80
/* 80B1FC1C  90 7E 0D AC */	stw r3, 0xdac(r30)
/* 80B1FC20  7F E3 FB 78 */	mr r3, r31
/* 80B1FC24  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80B1FC28  3C A0 80 B2 */	lis r5, mCutNameList__12daNpc_Toby_c@ha
/* 80B1FC2C  38 A5 54 34 */	addi r5, r5, mCutNameList__12daNpc_Toby_c@l
/* 80B1FC30  38 C0 00 07 */	li r6, 7
/* 80B1FC34  38 E0 00 00 */	li r7, 0
/* 80B1FC38  39 00 00 00 */	li r8, 0
/* 80B1FC3C  4B 52 81 D4 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80B1FC40  7C 60 1B 78 */	mr r0, r3
/* 80B1FC44  7F C3 F3 78 */	mr r3, r30
/* 80B1FC48  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80B1FC4C  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80B1FC50  3C A0 80 B2 */	lis r5, mCutList__12daNpc_Toby_c@ha
/* 80B1FC54  38 05 54 98 */	addi r0, r5, mCutList__12daNpc_Toby_c@l
/* 80B1FC58  7D 80 32 14 */	add r12, r0, r6
/* 80B1FC5C  4B 84 24 28 */	b __ptmf_scall
/* 80B1FC60  60 00 00 00 */	nop 
/* 80B1FC64  2C 03 00 00 */	cmpwi r3, 0
/* 80B1FC68  41 82 00 10 */	beq lbl_80B1FC78
/* 80B1FC6C  7F E3 FB 78 */	mr r3, r31
/* 80B1FC70  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80B1FC74  4B 52 85 08 */	b cutEnd__16dEvent_manager_cFi
lbl_80B1FC78:
/* 80B1FC78  38 60 00 01 */	li r3, 1
/* 80B1FC7C  48 00 00 08 */	b lbl_80B1FC84
lbl_80B1FC80:
/* 80B1FC80  38 60 00 00 */	li r3, 0
lbl_80B1FC84:
/* 80B1FC84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B1FC88  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B1FC8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1FC90  7C 08 03 A6 */	mtlr r0
/* 80B1FC94  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1FC98  4E 80 00 20 */	blr 
