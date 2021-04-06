lbl_802D1004:
/* 802D1004  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D1008  7C 08 02 A6 */	mflr r0
/* 802D100C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D1010  3C 60 80 3A */	lis r3, JKRSolidHeap__stringBase0@ha /* 0x8039CE50@ha */
/* 802D1014  38 63 CE 50 */	addi r3, r3, JKRSolidHeap__stringBase0@l /* 0x8039CE50@l */
/* 802D1018  38 63 00 89 */	addi r3, r3, 0x89
/* 802D101C  4C C6 31 82 */	crclr 6
/* 802D1020  48 01 76 5D */	bl JUTWarningConsole_f
/* 802D1024  38 60 FF FF */	li r3, -1
/* 802D1028  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D102C  7C 08 03 A6 */	mtlr r0
/* 802D1030  38 21 00 10 */	addi r1, r1, 0x10
/* 802D1034  4E 80 00 20 */	blr 
