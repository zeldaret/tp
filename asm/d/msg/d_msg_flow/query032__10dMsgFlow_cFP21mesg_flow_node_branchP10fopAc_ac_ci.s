lbl_8024BB74:
/* 8024BB74  38 A0 00 01 */	li r5, 1
/* 8024BB78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024BB7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024BB80  A0 63 00 02 */	lhz r3, 2(r3)
/* 8024BB84  A0 04 00 04 */	lhz r0, 4(r4)
/* 8024BB88  7C 03 00 00 */	cmpw r3, r0
/* 8024BB8C  41 80 00 08 */	blt lbl_8024BB94
/* 8024BB90  38 A0 00 00 */	li r5, 0
lbl_8024BB94:
/* 8024BB94  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 8024BB98  4E 80 00 20 */	blr 
