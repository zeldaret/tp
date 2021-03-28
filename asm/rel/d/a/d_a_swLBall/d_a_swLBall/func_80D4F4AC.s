lbl_80D4F4AC:
/* 80D4F4AC  88 83 00 00 */	lbz r4, 0(r3)
/* 80D4F4B0  28 04 00 00 */	cmplwi r4, 0
/* 80D4F4B4  41 82 00 0C */	beq lbl_80D4F4C0
/* 80D4F4B8  38 04 FF FF */	addi r0, r4, -1
/* 80D4F4BC  98 03 00 00 */	stb r0, 0(r3)
lbl_80D4F4C0:
/* 80D4F4C0  88 63 00 00 */	lbz r3, 0(r3)
/* 80D4F4C4  4E 80 00 20 */	blr 
