lbl_80BD9EAC:
/* 80BD9EAC  A8 83 00 00 */	lha r4, 0(r3)
/* 80BD9EB0  2C 04 00 00 */	cmpwi r4, 0
/* 80BD9EB4  41 82 00 0C */	beq lbl_80BD9EC0
/* 80BD9EB8  38 04 FF FF */	addi r0, r4, -1
/* 80BD9EBC  B0 03 00 00 */	sth r0, 0(r3)
lbl_80BD9EC0:
/* 80BD9EC0  A8 63 00 00 */	lha r3, 0(r3)
/* 80BD9EC4  4E 80 00 20 */	blr 
