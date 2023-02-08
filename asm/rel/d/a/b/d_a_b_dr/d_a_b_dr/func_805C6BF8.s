lbl_805C6BF8:
/* 805C6BF8  88 83 00 00 */	lbz r4, 0(r3)
/* 805C6BFC  28 04 00 00 */	cmplwi r4, 0
/* 805C6C00  41 82 00 0C */	beq lbl_805C6C0C
/* 805C6C04  38 04 FF FF */	addi r0, r4, -1
/* 805C6C08  98 03 00 00 */	stb r0, 0(r3)
lbl_805C6C0C:
/* 805C6C0C  88 63 00 00 */	lbz r3, 0(r3)
/* 805C6C10  4E 80 00 20 */	blr 
