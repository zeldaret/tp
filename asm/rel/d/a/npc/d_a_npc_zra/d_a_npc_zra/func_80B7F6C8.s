lbl_80B7F6C8:
/* 80B7F6C8  88 83 00 00 */	lbz r4, 0(r3)
/* 80B7F6CC  28 04 00 00 */	cmplwi r4, 0
/* 80B7F6D0  41 82 00 0C */	beq lbl_80B7F6DC
/* 80B7F6D4  38 04 FF FF */	addi r0, r4, -1
/* 80B7F6D8  98 03 00 00 */	stb r0, 0(r3)
lbl_80B7F6DC:
/* 80B7F6DC  88 63 00 00 */	lbz r3, 0(r3)
/* 80B7F6E0  4E 80 00 20 */	blr 
