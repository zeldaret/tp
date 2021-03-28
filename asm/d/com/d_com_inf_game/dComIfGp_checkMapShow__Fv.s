lbl_8002E0A8:
/* 8002E0A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002E0AC  7C 08 02 A6 */	mflr r0
/* 8002E0B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002E0B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002E0B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002E0BC  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8002E0C0  38 80 1D 01 */	li r4, 0x1d01
/* 8002E0C4  48 00 68 F9 */	bl isEventBit__11dSv_event_cCFUs
/* 8002E0C8  7C 60 00 34 */	cntlzw r0, r3
/* 8002E0CC  54 03 D9 7E */	srwi r3, r0, 5
/* 8002E0D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002E0D4  7C 08 03 A6 */	mtlr r0
/* 8002E0D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8002E0DC  4E 80 00 20 */	blr 
