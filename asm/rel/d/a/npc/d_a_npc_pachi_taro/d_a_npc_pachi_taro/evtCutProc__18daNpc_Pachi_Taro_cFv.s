lbl_80A9D5D0:
/* 80A9D5D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9D5D4  7C 08 02 A6 */	mflr r0
/* 80A9D5D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9D5DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9D5E0  93 C1 00 08 */	stw r30, 8(r1)
/* 80A9D5E4  7C 7E 1B 78 */	mr r30, r3
/* 80A9D5E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A9D5EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A9D5F0  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80A9D5F4  7F E3 FB 78 */	mr r3, r31
/* 80A9D5F8  3C 80 80 AA */	lis r4, d_a_npc_pachi_taro__stringBase0@ha /* 0x80AA1814@ha */
/* 80A9D5FC  38 84 18 14 */	addi r4, r4, d_a_npc_pachi_taro__stringBase0@l /* 0x80AA1814@l */
/* 80A9D600  38 84 00 E7 */	addi r4, r4, 0xe7
/* 80A9D604  7F C5 F3 78 */	mr r5, r30
/* 80A9D608  38 C0 FF FF */	li r6, -1
/* 80A9D60C  4B 5A A5 11 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80A9D610  2C 03 FF FF */	cmpwi r3, -1
/* 80A9D614  41 82 00 68 */	beq lbl_80A9D67C
/* 80A9D618  90 7E 0D AC */	stw r3, 0xdac(r30)
/* 80A9D61C  7F E3 FB 78 */	mr r3, r31
/* 80A9D620  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80A9D624  3C A0 80 AA */	lis r5, mCutNameList__18daNpc_Pachi_Taro_c@ha /* 0x80AA2668@ha */
/* 80A9D628  38 A5 26 68 */	addi r5, r5, mCutNameList__18daNpc_Pachi_Taro_c@l /* 0x80AA2668@l */
/* 80A9D62C  38 C0 00 0B */	li r6, 0xb
/* 80A9D630  38 E0 00 00 */	li r7, 0
/* 80A9D634  39 00 00 00 */	li r8, 0
/* 80A9D638  4B 5A A7 D9 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80A9D63C  7C 60 1B 78 */	mr r0, r3
/* 80A9D640  7F C3 F3 78 */	mr r3, r30
/* 80A9D644  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80A9D648  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80A9D64C  3C A0 80 AA */	lis r5, mCutList__18daNpc_Pachi_Taro_c@ha /* 0x80AA270C@ha */
/* 80A9D650  38 05 27 0C */	addi r0, r5, mCutList__18daNpc_Pachi_Taro_c@l /* 0x80AA270C@l */
/* 80A9D654  7D 80 32 14 */	add r12, r0, r6
/* 80A9D658  4B 8C 4A 2D */	bl __ptmf_scall
/* 80A9D65C  60 00 00 00 */	nop 
/* 80A9D660  2C 03 00 00 */	cmpwi r3, 0
/* 80A9D664  41 82 00 10 */	beq lbl_80A9D674
/* 80A9D668  7F E3 FB 78 */	mr r3, r31
/* 80A9D66C  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80A9D670  4B 5A AB 0D */	bl cutEnd__16dEvent_manager_cFi
lbl_80A9D674:
/* 80A9D674  38 60 00 01 */	li r3, 1
/* 80A9D678  48 00 00 08 */	b lbl_80A9D680
lbl_80A9D67C:
/* 80A9D67C  38 60 00 00 */	li r3, 0
lbl_80A9D680:
/* 80A9D680  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9D684  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A9D688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9D68C  7C 08 03 A6 */	mtlr r0
/* 80A9D690  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9D694  4E 80 00 20 */	blr 
