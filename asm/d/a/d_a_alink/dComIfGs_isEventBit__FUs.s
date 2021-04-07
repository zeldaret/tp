lbl_8014139C:
/* 8014139C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801413A0  7C 08 02 A6 */	mflr r0
/* 801413A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801413A8  7C 64 1B 78 */	mr r4, r3
/* 801413AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801413B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801413B4  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 801413B8  4B EF 36 05 */	bl isEventBit__11dSv_event_cCFUs
/* 801413BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801413C0  7C 08 03 A6 */	mtlr r0
/* 801413C4  38 21 00 10 */	addi r1, r1, 0x10
/* 801413C8  4E 80 00 20 */	blr 
