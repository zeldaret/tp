lbl_807E2418:
/* 807E2418  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E241C  7C 08 02 A6 */	mflr r0
/* 807E2420  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E2424  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807E2428  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807E242C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 807E2430  4B 86 00 38 */	b reset__14dEvt_control_cFv
/* 807E2434  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E2438  7C 08 03 A6 */	mtlr r0
/* 807E243C  38 21 00 10 */	addi r1, r1, 0x10
/* 807E2440  4E 80 00 20 */	blr 
