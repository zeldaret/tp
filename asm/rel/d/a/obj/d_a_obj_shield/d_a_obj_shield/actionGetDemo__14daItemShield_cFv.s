lbl_80CD7D80:
/* 80CD7D80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD7D84  7C 08 02 A6 */	mflr r0
/* 80CD7D88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD7D8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD7D90  93 C1 00 08 */	stw r30, 8(r1)
/* 80CD7D94  7C 7E 1B 78 */	mr r30, r3
/* 80CD7D98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CD7D9C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80CD7DA0  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80CD7DA4  3C 80 80 CE */	lis r4, stringBase0@ha
/* 80CD7DA8  38 84 83 2C */	addi r4, r4, stringBase0@l
/* 80CD7DAC  4B 36 FD 30 */	b endCheckOld__16dEvent_manager_cFPCc
/* 80CD7DB0  2C 03 00 00 */	cmpwi r3, 0
/* 80CD7DB4  41 82 00 30 */	beq lbl_80CD7DE4
/* 80CD7DB8  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80CD7DBC  4B 36 A6 AC */	b reset__14dEvt_control_cFv
/* 80CD7DC0  7F C3 F3 78 */	mr r3, r30
/* 80CD7DC4  4B 34 1E B8 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80CD7DC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CD7DCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CD7DD0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CD7DD4  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80CD7DD8  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80CD7DDC  7C 05 07 74 */	extsb r5, r0
/* 80CD7DE0  4B 35 D4 20 */	b onSwitch__10dSv_info_cFii
lbl_80CD7DE4:
/* 80CD7DE4  38 60 00 01 */	li r3, 1
/* 80CD7DE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD7DEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CD7DF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD7DF4  7C 08 03 A6 */	mtlr r0
/* 80CD7DF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD7DFC  4E 80 00 20 */	blr 
