lbl_8015C3BC:
/* 8015C3BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015C3C0  7C 08 02 A6 */	mflr r0
/* 8015C3C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015C3C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015C3CC  93 C1 00 08 */	stw r30, 8(r1)
/* 8015C3D0  7C 7E 1B 78 */	mr r30, r3
/* 8015C3D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8015C3D8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8015C3DC  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 8015C3E0  3C 80 80 39 */	lis r4, a_obj_d_a_obj_item__stringBase0@ha
/* 8015C3E4  38 84 3D 88 */	addi r4, r4, a_obj_d_a_obj_item__stringBase0@l
/* 8015C3E8  4B EE B6 F5 */	bl endCheckOld__16dEvent_manager_cFPCc
/* 8015C3EC  2C 03 00 00 */	cmpwi r3, 0
/* 8015C3F0  41 82 00 14 */	beq lbl_8015C404
/* 8015C3F4  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 8015C3F8  4B EE 60 71 */	bl reset__14dEvt_control_cFv
/* 8015C3FC  7F C3 F3 78 */	mr r3, r30
/* 8015C400  4B EB D8 7D */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_8015C404:
/* 8015C404  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015C408  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015C40C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015C410  7C 08 03 A6 */	mtlr r0
/* 8015C414  38 21 00 10 */	addi r1, r1, 0x10
/* 8015C418  4E 80 00 20 */	blr 
