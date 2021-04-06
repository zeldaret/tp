lbl_802D0EE4:
/* 802D0EE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D0EE8  7C 08 02 A6 */	mflr r0
/* 802D0EEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D0EF0  3C 60 80 3A */	lis r3, JKRSolidHeap__stringBase0@ha /* 0x8039CE50@ha */
/* 802D0EF4  38 63 CE 50 */	addi r3, r3, JKRSolidHeap__stringBase0@l /* 0x8039CE50@l */
/* 802D0EF8  38 63 00 62 */	addi r3, r3, 0x62
/* 802D0EFC  4C C6 31 82 */	crclr 6
/* 802D0F00  48 01 77 7D */	bl JUTWarningConsole_f
/* 802D0F04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D0F08  7C 08 03 A6 */	mtlr r0
/* 802D0F0C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D0F10  4E 80 00 20 */	blr 
