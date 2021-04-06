lbl_80A657B0:
/* 80A657B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A657B4  7C 08 02 A6 */	mflr r0
/* 80A657B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A657BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A657C0  93 C1 00 08 */	stw r30, 8(r1)
/* 80A657C4  7C 7E 1B 78 */	mr r30, r3
/* 80A657C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A657CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A657D0  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80A657D4  7F E3 FB 78 */	mr r3, r31
/* 80A657D8  3C 80 80 A7 */	lis r4, d_a_npc_len__stringBase0@ha /* 0x80A68FDC@ha */
/* 80A657DC  38 84 8F DC */	addi r4, r4, d_a_npc_len__stringBase0@l /* 0x80A68FDC@l */
/* 80A657E0  38 84 00 5C */	addi r4, r4, 0x5c
/* 80A657E4  7F C5 F3 78 */	mr r5, r30
/* 80A657E8  38 C0 FF FF */	li r6, -1
/* 80A657EC  4B 5E 23 31 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80A657F0  2C 03 FF FF */	cmpwi r3, -1
/* 80A657F4  41 82 00 68 */	beq lbl_80A6585C
/* 80A657F8  90 7E 0D AC */	stw r3, 0xdac(r30)
/* 80A657FC  7F E3 FB 78 */	mr r3, r31
/* 80A65800  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80A65804  3C A0 80 A7 */	lis r5, mCutNameList__11daNpc_Len_c@ha /* 0x80A69774@ha */
/* 80A65808  38 A5 97 74 */	addi r5, r5, mCutNameList__11daNpc_Len_c@l /* 0x80A69774@l */
/* 80A6580C  38 C0 00 04 */	li r6, 4
/* 80A65810  38 E0 00 00 */	li r7, 0
/* 80A65814  39 00 00 00 */	li r8, 0
/* 80A65818  4B 5E 25 F9 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80A6581C  7C 60 1B 78 */	mr r0, r3
/* 80A65820  7F C3 F3 78 */	mr r3, r30
/* 80A65824  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80A65828  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80A6582C  3C A0 80 A7 */	lis r5, mCutList__11daNpc_Len_c@ha /* 0x80A697A8@ha */
/* 80A65830  38 05 97 A8 */	addi r0, r5, mCutList__11daNpc_Len_c@l /* 0x80A697A8@l */
/* 80A65834  7D 80 32 14 */	add r12, r0, r6
/* 80A65838  4B 8F C8 4D */	bl __ptmf_scall
/* 80A6583C  60 00 00 00 */	nop 
/* 80A65840  2C 03 00 00 */	cmpwi r3, 0
/* 80A65844  41 82 00 10 */	beq lbl_80A65854
/* 80A65848  7F E3 FB 78 */	mr r3, r31
/* 80A6584C  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80A65850  4B 5E 29 2D */	bl cutEnd__16dEvent_manager_cFi
lbl_80A65854:
/* 80A65854  38 60 00 01 */	li r3, 1
/* 80A65858  48 00 00 08 */	b lbl_80A65860
lbl_80A6585C:
/* 80A6585C  38 60 00 00 */	li r3, 0
lbl_80A65860:
/* 80A65860  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A65864  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A65868  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6586C  7C 08 03 A6 */	mtlr r0
/* 80A65870  38 21 00 10 */	addi r1, r1, 0x10
/* 80A65874  4E 80 00 20 */	blr 
