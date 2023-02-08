lbl_80678EA8:
/* 80678EA8  88 83 00 00 */	lbz r4, 0(r3)
/* 80678EAC  28 04 00 00 */	cmplwi r4, 0
/* 80678EB0  41 82 00 0C */	beq lbl_80678EBC
/* 80678EB4  38 04 FF FF */	addi r0, r4, -1
/* 80678EB8  98 03 00 00 */	stb r0, 0(r3)
lbl_80678EBC:
/* 80678EBC  88 63 00 00 */	lbz r3, 0(r3)
/* 80678EC0  4E 80 00 20 */	blr 
