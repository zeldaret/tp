lbl_80C7DE90:
/* 80C7DE90  88 83 00 00 */	lbz r4, 0(r3)
/* 80C7DE94  28 04 00 00 */	cmplwi r4, 0
/* 80C7DE98  41 82 00 0C */	beq lbl_80C7DEA4
/* 80C7DE9C  38 04 FF FF */	addi r0, r4, -1
/* 80C7DEA0  98 03 00 00 */	stb r0, 0(r3)
lbl_80C7DEA4:
/* 80C7DEA4  88 63 00 00 */	lbz r3, 0(r3)
/* 80C7DEA8  4E 80 00 20 */	blr 
