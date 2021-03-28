lbl_80BE4A8C:
/* 80BE4A8C  88 83 00 00 */	lbz r4, 0(r3)
/* 80BE4A90  28 04 00 00 */	cmplwi r4, 0
/* 80BE4A94  41 82 00 0C */	beq lbl_80BE4AA0
/* 80BE4A98  38 04 FF FF */	addi r0, r4, -1
/* 80BE4A9C  98 03 00 00 */	stb r0, 0(r3)
lbl_80BE4AA0:
/* 80BE4AA0  88 63 00 00 */	lbz r3, 0(r3)
/* 80BE4AA4  4E 80 00 20 */	blr 
