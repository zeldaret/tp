lbl_80CF6CB0:
/* 80CF6CB0  88 83 00 00 */	lbz r4, 0(r3)
/* 80CF6CB4  28 04 00 00 */	cmplwi r4, 0
/* 80CF6CB8  41 82 00 0C */	beq lbl_80CF6CC4
/* 80CF6CBC  38 04 FF FF */	addi r0, r4, -1
/* 80CF6CC0  98 03 00 00 */	stb r0, 0(r3)
lbl_80CF6CC4:
/* 80CF6CC4  88 63 00 00 */	lbz r3, 0(r3)
/* 80CF6CC8  4E 80 00 20 */	blr 
