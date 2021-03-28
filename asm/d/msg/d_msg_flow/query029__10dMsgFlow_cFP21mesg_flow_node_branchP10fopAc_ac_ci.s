lbl_8024BAA0:
/* 8024BAA0  38 A0 00 01 */	li r5, 1
/* 8024BAA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024BAA8  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 8024BAAC  A0 04 00 08 */	lhz r0, 8(r4)
/* 8024BAB0  54 03 04 3F */	clrlwi. r3, r0, 0x10
/* 8024BAB4  41 82 00 10 */	beq lbl_8024BAC4
/* 8024BAB8  A0 04 00 06 */	lhz r0, 6(r4)
/* 8024BABC  54 00 04 3F */	clrlwi. r0, r0, 0x10
/* 8024BAC0  40 82 00 0C */	bne lbl_8024BACC
lbl_8024BAC4:
/* 8024BAC4  38 A0 00 02 */	li r5, 2
/* 8024BAC8  48 00 00 10 */	b lbl_8024BAD8
lbl_8024BACC:
/* 8024BACC  7C 03 00 40 */	cmplw r3, r0
/* 8024BAD0  40 82 00 08 */	bne lbl_8024BAD8
/* 8024BAD4  38 A0 00 00 */	li r5, 0
lbl_8024BAD8:
/* 8024BAD8  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 8024BADC  4E 80 00 20 */	blr 
