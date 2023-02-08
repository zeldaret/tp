lbl_801828A4:
/* 801828A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801828A8  7C 08 02 A6 */	mflr r0
/* 801828AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801828B0  7C 64 1B 78 */	mr r4, r3
/* 801828B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801828B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801828BC  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 801828C0  4B EB 20 FD */	bl isEventBit__11dSv_event_cCFUs
/* 801828C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801828C8  7C 08 03 A6 */	mtlr r0
/* 801828CC  38 21 00 10 */	addi r1, r1, 0x10
/* 801828D0  4E 80 00 20 */	blr 
