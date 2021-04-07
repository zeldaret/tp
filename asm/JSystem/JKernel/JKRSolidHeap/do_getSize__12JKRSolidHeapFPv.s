lbl_802D1038:
/* 802D1038  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D103C  7C 08 02 A6 */	mflr r0
/* 802D1040  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D1044  3C 60 80 3A */	lis r3, JKRSolidHeap__stringBase0@ha /* 0x8039CE50@ha */
/* 802D1048  38 63 CE 50 */	addi r3, r3, JKRSolidHeap__stringBase0@l /* 0x8039CE50@l */
/* 802D104C  38 63 00 B8 */	addi r3, r3, 0xb8
/* 802D1050  4C C6 31 82 */	crclr 6
/* 802D1054  48 01 76 29 */	bl JUTWarningConsole_f
/* 802D1058  38 60 FF FF */	li r3, -1
/* 802D105C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D1060  7C 08 03 A6 */	mtlr r0
/* 802D1064  38 21 00 10 */	addi r1, r1, 0x10
/* 802D1068  4E 80 00 20 */	blr 
