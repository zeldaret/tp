lbl_80B607E4:
/* 80B607E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B607E8  7C 08 02 A6 */	mflr r0
/* 80B607EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B607F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B607F4  93 C1 00 08 */	stw r30, 8(r1)
/* 80B607F8  7C 7E 1B 78 */	mr r30, r3
/* 80B607FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B60800  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B60804  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80B60808  7F E3 FB 78 */	mr r3, r31
/* 80B6080C  3C 80 80 B6 */	lis r4, struct_80B67E68+0x0@ha
/* 80B60810  38 84 7E 68 */	addi r4, r4, struct_80B67E68+0x0@l
/* 80B60814  38 84 00 8C */	addi r4, r4, 0x8c
/* 80B60818  7F C5 F3 78 */	mr r5, r30
/* 80B6081C  38 C0 FF FF */	li r6, -1
/* 80B60820  4B 4E 72 FC */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80B60824  2C 03 FF FF */	cmpwi r3, -1
/* 80B60828  41 82 00 68 */	beq lbl_80B60890
/* 80B6082C  90 7E 0D AC */	stw r3, 0xdac(r30)
/* 80B60830  7F E3 FB 78 */	mr r3, r31
/* 80B60834  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80B60838  3C A0 80 B7 */	lis r5, mCutNameList__11daNpc_ykW_c@ha
/* 80B6083C  38 A5 88 48 */	addi r5, r5, mCutNameList__11daNpc_ykW_c@l
/* 80B60840  38 C0 00 08 */	li r6, 8
/* 80B60844  38 E0 00 00 */	li r7, 0
/* 80B60848  39 00 00 00 */	li r8, 0
/* 80B6084C  4B 4E 75 C4 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80B60850  7C 60 1B 78 */	mr r0, r3
/* 80B60854  7F C3 F3 78 */	mr r3, r30
/* 80B60858  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80B6085C  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80B60860  3C A0 80 B7 */	lis r5, mCutList__11daNpc_ykW_c@ha
/* 80B60864  38 05 88 BC */	addi r0, r5, mCutList__11daNpc_ykW_c@l
/* 80B60868  7D 80 32 14 */	add r12, r0, r6
/* 80B6086C  4B 80 18 18 */	b __ptmf_scall
/* 80B60870  60 00 00 00 */	nop 
/* 80B60874  2C 03 00 00 */	cmpwi r3, 0
/* 80B60878  41 82 00 10 */	beq lbl_80B60888
/* 80B6087C  7F E3 FB 78 */	mr r3, r31
/* 80B60880  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80B60884  4B 4E 78 F8 */	b cutEnd__16dEvent_manager_cFi
lbl_80B60888:
/* 80B60888  38 60 00 01 */	li r3, 1
/* 80B6088C  48 00 00 08 */	b lbl_80B60894
lbl_80B60890:
/* 80B60890  38 60 00 00 */	li r3, 0
lbl_80B60894:
/* 80B60894  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B60898  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B6089C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B608A0  7C 08 03 A6 */	mtlr r0
/* 80B608A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B608A8  4E 80 00 20 */	blr 
