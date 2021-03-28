lbl_800EC76C:
/* 800EC76C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800EC770  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800EC774  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 800EC778  28 03 00 00 */	cmplwi r3, 0
/* 800EC77C  40 82 00 0C */	bne lbl_800EC788
/* 800EC780  38 60 00 00 */	li r3, 0
/* 800EC784  4E 80 00 20 */	blr 
lbl_800EC788:
/* 800EC788  80 83 12 58 */	lwz r4, 0x1258(r3)
/* 800EC78C  38 60 00 00 */	li r3, 0
/* 800EC790  28 04 00 00 */	cmplwi r4, 0
/* 800EC794  41 82 00 14 */	beq lbl_800EC7A8
/* 800EC798  88 04 06 D8 */	lbz r0, 0x6d8(r4)
/* 800EC79C  28 00 00 00 */	cmplwi r0, 0
/* 800EC7A0  41 82 00 08 */	beq lbl_800EC7A8
/* 800EC7A4  38 60 00 01 */	li r3, 1
lbl_800EC7A8:
/* 800EC7A8  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 800EC7AC  4E 80 00 20 */	blr 
