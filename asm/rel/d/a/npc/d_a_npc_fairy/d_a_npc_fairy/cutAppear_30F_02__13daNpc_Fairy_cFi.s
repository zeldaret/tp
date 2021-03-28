lbl_809B55BC:
/* 809B55BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809B55C0  7C 08 02 A6 */	mflr r0
/* 809B55C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 809B55C8  39 61 00 20 */	addi r11, r1, 0x20
/* 809B55CC  4B 9A CC 0C */	b _savegpr_28
/* 809B55D0  7C 7C 1B 78 */	mr r28, r3
/* 809B55D4  7C 9D 23 78 */	mr r29, r4
/* 809B55D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809B55DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809B55E0  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 809B55E4  7F C3 F3 78 */	mr r3, r30
/* 809B55E8  3C A0 80 9C */	lis r5, struct_809B94CC+0x0@ha
/* 809B55EC  38 A5 94 CC */	addi r5, r5, struct_809B94CC+0x0@l
/* 809B55F0  38 A5 00 FE */	addi r5, r5, 0xfe
/* 809B55F4  38 C0 00 03 */	li r6, 3
/* 809B55F8  4B 69 2A F4 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 809B55FC  7C 7F 1B 79 */	or. r31, r3, r3
/* 809B5600  40 82 00 0C */	bne lbl_809B560C
/* 809B5604  38 60 00 01 */	li r3, 1
/* 809B5608  48 00 00 30 */	b lbl_809B5638
lbl_809B560C:
/* 809B560C  7F C3 F3 78 */	mr r3, r30
/* 809B5610  7F A4 EB 78 */	mr r4, r29
/* 809B5614  4B 69 27 38 */	b getIsAddvance__16dEvent_manager_cFi
/* 809B5618  2C 03 00 00 */	cmpwi r3, 0
/* 809B561C  41 82 00 10 */	beq lbl_809B562C
/* 809B5620  7F 83 E3 78 */	mr r3, r28
/* 809B5624  7F E4 FB 78 */	mr r4, r31
/* 809B5628  48 00 00 29 */	bl _cutAppear_30F_02_Init__13daNpc_Fairy_cFRCi
lbl_809B562C:
/* 809B562C  7F 83 E3 78 */	mr r3, r28
/* 809B5630  7F E4 FB 78 */	mr r4, r31
/* 809B5634  48 00 01 3D */	bl _cutAppear_30F_02_Main__13daNpc_Fairy_cFRCi
lbl_809B5638:
/* 809B5638  39 61 00 20 */	addi r11, r1, 0x20
/* 809B563C  4B 9A CB E8 */	b _restgpr_28
/* 809B5640  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809B5644  7C 08 03 A6 */	mtlr r0
/* 809B5648  38 21 00 20 */	addi r1, r1, 0x20
/* 809B564C  4E 80 00 20 */	blr 
