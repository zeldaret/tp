lbl_807E23C4:
/* 807E23C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E23C8  7C 08 02 A6 */	mflr r0
/* 807E23CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E23D0  7C 64 1B 78 */	mr r4, r3
/* 807E23D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807E23D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807E23DC  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 807E23E0  4B 85 25 AD */	bl onEventBit__11dSv_event_cFUs
/* 807E23E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E23E8  7C 08 03 A6 */	mtlr r0
/* 807E23EC  38 21 00 10 */	addi r1, r1, 0x10
/* 807E23F0  4E 80 00 20 */	blr 
