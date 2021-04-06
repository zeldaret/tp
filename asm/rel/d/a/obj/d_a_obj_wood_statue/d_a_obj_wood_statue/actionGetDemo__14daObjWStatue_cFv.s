lbl_80D3ACAC:
/* 80D3ACAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3ACB0  7C 08 02 A6 */	mflr r0
/* 80D3ACB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3ACB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3ACBC  93 C1 00 08 */	stw r30, 8(r1)
/* 80D3ACC0  7C 7E 1B 78 */	mr r30, r3
/* 80D3ACC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D3ACC8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D3ACCC  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80D3ACD0  3C 80 80 D4 */	lis r4, d_a_obj_wood_statue__stringBase0@ha /* 0x80D3B6D4@ha */
/* 80D3ACD4  38 84 B6 D4 */	addi r4, r4, d_a_obj_wood_statue__stringBase0@l /* 0x80D3B6D4@l */
/* 80D3ACD8  38 84 00 17 */	addi r4, r4, 0x17
/* 80D3ACDC  4B 30 CE 01 */	bl endCheckOld__16dEvent_manager_cFPCc
/* 80D3ACE0  2C 03 00 00 */	cmpwi r3, 0
/* 80D3ACE4  41 82 00 30 */	beq lbl_80D3AD14
/* 80D3ACE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D3ACEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D3ACF0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D3ACF4  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80D3ACF8  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D3ACFC  7C 05 07 74 */	extsb r5, r0
/* 80D3AD00  4B 2F A5 01 */	bl onSwitch__10dSv_info_cFii
/* 80D3AD04  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80D3AD08  4B 30 77 61 */	bl reset__14dEvt_control_cFv
/* 80D3AD0C  7F C3 F3 78 */	mr r3, r30
/* 80D3AD10  4B 2D EF 6D */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80D3AD14:
/* 80D3AD14  38 60 00 01 */	li r3, 1
/* 80D3AD18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3AD1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D3AD20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3AD24  7C 08 03 A6 */	mtlr r0
/* 80D3AD28  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3AD2C  4E 80 00 20 */	blr 
