lbl_80D2B7D4:
/* 80D2B7D4  88 83 00 00 */	lbz r4, 0(r3)
/* 80D2B7D8  28 04 00 00 */	cmplwi r4, 0
/* 80D2B7DC  41 82 00 0C */	beq lbl_80D2B7E8
/* 80D2B7E0  38 04 FF FF */	addi r0, r4, -1
/* 80D2B7E4  98 03 00 00 */	stb r0, 0(r3)
lbl_80D2B7E8:
/* 80D2B7E8  88 63 00 00 */	lbz r3, 0(r3)
/* 80D2B7EC  4E 80 00 20 */	blr 
