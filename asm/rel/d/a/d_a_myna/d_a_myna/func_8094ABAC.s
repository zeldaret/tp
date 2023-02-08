lbl_8094ABAC:
/* 8094ABAC  A8 83 00 00 */	lha r4, 0(r3)
/* 8094ABB0  2C 04 00 00 */	cmpwi r4, 0
/* 8094ABB4  41 82 00 0C */	beq lbl_8094ABC0
/* 8094ABB8  38 04 FF FF */	addi r0, r4, -1
/* 8094ABBC  B0 03 00 00 */	sth r0, 0(r3)
lbl_8094ABC0:
/* 8094ABC0  A8 63 00 00 */	lha r3, 0(r3)
/* 8094ABC4  4E 80 00 20 */	blr 
