lbl_80332FA8:
/* 80332FA8  80 C3 00 04 */	lwz r6, 4(r3)
/* 80332FAC  80 A3 00 08 */	lwz r5, 8(r3)
/* 80332FB0  54 80 08 3C */	slwi r0, r4, 1
/* 80332FB4  7C 05 02 2E */	lhzx r0, r5, r0
/* 80332FB8  1C 00 01 38 */	mulli r0, r0, 0x138
/* 80332FBC  7C 86 02 14 */	add r4, r6, r0
/* 80332FC0  88 04 00 03 */	lbz r0, 3(r4)
/* 80332FC4  28 00 00 FF */	cmplwi r0, 0xff
/* 80332FC8  41 82 00 10 */	beq lbl_80332FD8
/* 80332FCC  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80332FD0  7C 63 00 AE */	lbzx r3, r3, r0
/* 80332FD4  4E 80 00 20 */	blr 
lbl_80332FD8:
/* 80332FD8  38 60 00 00 */	li r3, 0
/* 80332FDC  4E 80 00 20 */	blr 
