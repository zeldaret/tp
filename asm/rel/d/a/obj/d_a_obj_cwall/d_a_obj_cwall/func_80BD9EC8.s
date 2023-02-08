lbl_80BD9EC8:
/* 80BD9EC8  88 83 00 00 */	lbz r4, 0(r3)
/* 80BD9ECC  28 04 00 00 */	cmplwi r4, 0
/* 80BD9ED0  41 82 00 0C */	beq lbl_80BD9EDC
/* 80BD9ED4  38 04 FF FF */	addi r0, r4, -1
/* 80BD9ED8  98 03 00 00 */	stb r0, 0(r3)
lbl_80BD9EDC:
/* 80BD9EDC  88 63 00 00 */	lbz r3, 0(r3)
/* 80BD9EE0  4E 80 00 20 */	blr 
