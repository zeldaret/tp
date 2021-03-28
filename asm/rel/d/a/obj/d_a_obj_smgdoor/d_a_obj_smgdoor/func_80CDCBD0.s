lbl_80CDCBD0:
/* 80CDCBD0  88 83 00 00 */	lbz r4, 0(r3)
/* 80CDCBD4  28 04 00 00 */	cmplwi r4, 0
/* 80CDCBD8  41 82 00 0C */	beq lbl_80CDCBE4
/* 80CDCBDC  38 04 FF FF */	addi r0, r4, -1
/* 80CDCBE0  98 03 00 00 */	stb r0, 0(r3)
lbl_80CDCBE4:
/* 80CDCBE4  88 63 00 00 */	lbz r3, 0(r3)
/* 80CDCBE8  4E 80 00 20 */	blr 
