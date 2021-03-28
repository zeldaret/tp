lbl_8024BB9C:
/* 8024BB9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024BBA0  7C 08 02 A6 */	mflr r0
/* 8024BBA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024BBA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024BBAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024BBB0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8024BBB4  38 80 00 01 */	li r4, 1
/* 8024BBB8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8024BBBC  81 8C 01 CC */	lwz r12, 0x1cc(r12)
/* 8024BBC0  7D 89 03 A6 */	mtctr r12
/* 8024BBC4  4E 80 04 21 */	bctrl 
/* 8024BBC8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8024BBCC  7C 00 00 34 */	cntlzw r0, r0
/* 8024BBD0  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8024BBD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024BBD8  7C 08 03 A6 */	mtlr r0
/* 8024BBDC  38 21 00 10 */	addi r1, r1, 0x10
/* 8024BBE0  4E 80 00 20 */	blr 
