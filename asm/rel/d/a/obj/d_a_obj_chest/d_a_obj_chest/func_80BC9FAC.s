lbl_80BC9FAC:
/* 80BC9FAC  88 83 00 00 */	lbz r4, 0(r3)
/* 80BC9FB0  28 04 00 00 */	cmplwi r4, 0
/* 80BC9FB4  41 82 00 0C */	beq lbl_80BC9FC0
/* 80BC9FB8  38 04 FF FF */	addi r0, r4, -1
/* 80BC9FBC  98 03 00 00 */	stb r0, 0(r3)
lbl_80BC9FC0:
/* 80BC9FC0  88 63 00 00 */	lbz r3, 0(r3)
/* 80BC9FC4  4E 80 00 20 */	blr 
