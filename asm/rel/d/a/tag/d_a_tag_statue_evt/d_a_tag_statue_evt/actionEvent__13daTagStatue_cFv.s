lbl_805A77A0:
/* 805A77A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A77A4  7C 08 02 A6 */	mflr r0
/* 805A77A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A77AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A77B0  93 C1 00 08 */	stw r30, 8(r1)
/* 805A77B4  7C 7E 1B 78 */	mr r30, r3
/* 805A77B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A77BC  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 805A77C0  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 805A77C4  A8 9E 05 98 */	lha r4, 0x598(r30)
/* 805A77C8  4B AA 02 B0 */	b endCheck__16dEvent_manager_cFs
/* 805A77CC  2C 03 00 00 */	cmpwi r3, 0
/* 805A77D0  41 82 00 58 */	beq lbl_805A7828
/* 805A77D4  38 00 00 03 */	li r0, 3
/* 805A77D8  98 1E 05 94 */	stb r0, 0x594(r30)
/* 805A77DC  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 805A77E0  4B A9 AC 88 */	b reset__14dEvt_control_cFv
/* 805A77E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A77E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A77EC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 805A77F0  54 04 A6 3E */	rlwinm r4, r0, 0x14, 0x18, 0x1f
/* 805A77F4  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 805A77F8  7C 05 07 74 */	extsb r5, r0
/* 805A77FC  4B A8 DA 04 */	b onSwitch__10dSv_info_cFii
/* 805A7800  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A7804  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A7808  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 805A780C  88 1E 05 97 */	lbz r0, 0x597(r30)
/* 805A7810  54 00 08 3C */	slwi r0, r0, 1
/* 805A7814  3C 80 80 5B */	lis r4, l_event_bit@ha
/* 805A7818  38 84 81 04 */	addi r4, r4, l_event_bit@l
/* 805A781C  7C 84 02 2E */	lhzx r4, r4, r0
/* 805A7820  4B A8 D1 6C */	b onEventBit__11dSv_event_cFUs
/* 805A7824  48 00 00 0C */	b lbl_805A7830
lbl_805A7828:
/* 805A7828  7F C3 F3 78 */	mr r3, r30
/* 805A782C  48 00 00 21 */	bl demoProc__13daTagStatue_cFv
lbl_805A7830:
/* 805A7830  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A7834  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A7838  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A783C  7C 08 03 A6 */	mtlr r0
/* 805A7840  38 21 00 10 */	addi r1, r1, 0x10
/* 805A7844  4E 80 00 20 */	blr 
