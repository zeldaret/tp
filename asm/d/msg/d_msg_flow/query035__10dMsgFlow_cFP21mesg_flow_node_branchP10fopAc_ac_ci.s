lbl_8024BC14:
/* 8024BC14  38 A0 00 00 */	li r5, 0
/* 8024BC18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024BC1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024BC20  88 63 00 1B */	lbz r3, 0x1b(r3)
/* 8024BC24  A0 04 00 04 */	lhz r0, 4(r4)
/* 8024BC28  7C 03 00 00 */	cmpw r3, r0
/* 8024BC2C  40 80 00 08 */	bge lbl_8024BC34
/* 8024BC30  38 A0 00 01 */	li r5, 1
lbl_8024BC34:
/* 8024BC34  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 8024BC38  4E 80 00 20 */	blr 
