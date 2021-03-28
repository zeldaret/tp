lbl_8001CFD8:
/* 8001CFD8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8001CFDC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8001CFE0  80 A5 5D AC */	lwz r5, 0x5dac(r5)
/* 8001CFE4  A8 A5 04 E6 */	lha r5, 0x4e6(r5)
/* 8001CFE8  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 8001CFEC  7C 05 00 50 */	subf r0, r5, r0
/* 8001CFF0  7C 03 07 34 */	extsh r3, r0
/* 8001CFF4  7C 80 07 34 */	extsh r0, r4
/* 8001CFF8  7C 03 00 00 */	cmpw r3, r0
/* 8001CFFC  41 81 00 1C */	bgt lbl_8001D018
/* 8001D000  7C 04 00 D0 */	neg r0, r4
/* 8001D004  7C 00 07 34 */	extsh r0, r0
/* 8001D008  7C 03 00 00 */	cmpw r3, r0
/* 8001D00C  41 80 00 0C */	blt lbl_8001D018
/* 8001D010  38 60 00 00 */	li r3, 0
/* 8001D014  4E 80 00 20 */	blr 
lbl_8001D018:
/* 8001D018  38 60 00 01 */	li r3, 1
/* 8001D01C  4E 80 00 20 */	blr 
