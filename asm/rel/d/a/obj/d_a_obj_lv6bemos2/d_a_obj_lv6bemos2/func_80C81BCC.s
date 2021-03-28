lbl_80C81BCC:
/* 80C81BCC  88 83 00 00 */	lbz r4, 0(r3)
/* 80C81BD0  28 04 00 00 */	cmplwi r4, 0
/* 80C81BD4  41 82 00 0C */	beq lbl_80C81BE0
/* 80C81BD8  38 04 FF FF */	addi r0, r4, -1
/* 80C81BDC  98 03 00 00 */	stb r0, 0(r3)
lbl_80C81BE0:
/* 80C81BE0  88 63 00 00 */	lbz r3, 0(r3)
/* 80C81BE4  4E 80 00 20 */	blr 
