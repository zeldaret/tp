lbl_80D0E5D4:
/* 80D0E5D4  88 83 00 00 */	lbz r4, 0(r3)
/* 80D0E5D8  28 04 00 00 */	cmplwi r4, 0
/* 80D0E5DC  41 82 00 0C */	beq lbl_80D0E5E8
/* 80D0E5E0  38 04 FF FF */	addi r0, r4, -1
/* 80D0E5E4  98 03 00 00 */	stb r0, 0(r3)
lbl_80D0E5E8:
/* 80D0E5E8  88 63 00 00 */	lbz r3, 0(r3)
/* 80D0E5EC  4E 80 00 20 */	blr 
