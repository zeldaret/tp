lbl_80BEB490:
/* 80BEB490  88 83 00 00 */	lbz r4, 0(r3)
/* 80BEB494  28 04 00 00 */	cmplwi r4, 0
/* 80BEB498  41 82 00 0C */	beq lbl_80BEB4A4
/* 80BEB49C  38 04 FF FF */	addi r0, r4, -1
/* 80BEB4A0  98 03 00 00 */	stb r0, 0(r3)
lbl_80BEB4A4:
/* 80BEB4A4  88 63 00 00 */	lbz r3, 0(r3)
/* 80BEB4A8  4E 80 00 20 */	blr 
