lbl_80C81BB0:
/* 80C81BB0  A0 83 00 00 */	lhz r4, 0(r3)
/* 80C81BB4  28 04 00 00 */	cmplwi r4, 0
/* 80C81BB8  41 82 00 0C */	beq lbl_80C81BC4
/* 80C81BBC  38 04 FF FF */	addi r0, r4, -1
/* 80C81BC0  B0 03 00 00 */	sth r0, 0(r3)
lbl_80C81BC4:
/* 80C81BC4  A0 63 00 00 */	lhz r3, 0(r3)
/* 80C81BC8  4E 80 00 20 */	blr 
