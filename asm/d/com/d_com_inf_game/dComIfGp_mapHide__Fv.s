lbl_8002E078:
/* 8002E078  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002E07C  7C 08 02 A6 */	mflr r0
/* 8002E080  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002E084  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002E088  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002E08C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8002E090  38 80 1D 01 */	li r4, 0x1d01
/* 8002E094  48 00 68 F9 */	bl onEventBit__11dSv_event_cFUs
/* 8002E098  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002E09C  7C 08 03 A6 */	mtlr r0
/* 8002E0A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8002E0A4  4E 80 00 20 */	blr 
