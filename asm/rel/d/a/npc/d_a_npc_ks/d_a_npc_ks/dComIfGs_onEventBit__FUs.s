lbl_80A5DEB8:
/* 80A5DEB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A5DEBC  7C 08 02 A6 */	mflr r0
/* 80A5DEC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A5DEC4  7C 64 1B 78 */	mr r4, r3
/* 80A5DEC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5DECC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5DED0  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80A5DED4  4B 5D 6A B8 */	b onEventBit__11dSv_event_cFUs
/* 80A5DED8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A5DEDC  7C 08 03 A6 */	mtlr r0
/* 80A5DEE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A5DEE4  4E 80 00 20 */	blr 
