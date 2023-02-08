lbl_80331FAC:
/* 80331FAC  80 C3 00 04 */	lwz r6, 4(r3)
/* 80331FB0  80 A3 00 08 */	lwz r5, 8(r3)
/* 80331FB4  54 80 08 3C */	slwi r0, r4, 1
/* 80331FB8  7C 05 02 2E */	lhzx r0, r5, r0
/* 80331FBC  1C 00 01 4C */	mulli r0, r0, 0x14c
/* 80331FC0  7C 86 02 14 */	add r4, r6, r0
/* 80331FC4  88 04 00 03 */	lbz r0, 3(r4)
/* 80331FC8  28 00 00 FF */	cmplwi r0, 0xff
/* 80331FCC  41 82 00 10 */	beq lbl_80331FDC
/* 80331FD0  80 63 00 24 */	lwz r3, 0x24(r3)
/* 80331FD4  7C 63 00 AE */	lbzx r3, r3, r0
/* 80331FD8  4E 80 00 20 */	blr 
lbl_80331FDC:
/* 80331FDC  38 60 00 00 */	li r3, 0
/* 80331FE0  4E 80 00 20 */	blr 
