lbl_80CFB69C:
/* 80CFB69C  88 83 00 00 */	lbz r4, 0(r3)
/* 80CFB6A0  28 04 00 00 */	cmplwi r4, 0
/* 80CFB6A4  41 82 00 0C */	beq lbl_80CFB6B0
/* 80CFB6A8  38 04 FF FF */	addi r0, r4, -1
/* 80CFB6AC  98 03 00 00 */	stb r0, 0(r3)
lbl_80CFB6B0:
/* 80CFB6B0  88 63 00 00 */	lbz r3, 0(r3)
/* 80CFB6B4  4E 80 00 20 */	blr 
