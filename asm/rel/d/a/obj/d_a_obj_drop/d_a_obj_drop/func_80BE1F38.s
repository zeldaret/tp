lbl_80BE1F38:
/* 80BE1F38  88 83 00 00 */	lbz r4, 0(r3)
/* 80BE1F3C  28 04 00 00 */	cmplwi r4, 0
/* 80BE1F40  41 82 00 0C */	beq lbl_80BE1F4C
/* 80BE1F44  38 04 FF FF */	addi r0, r4, -1
/* 80BE1F48  98 03 00 00 */	stb r0, 0(r3)
lbl_80BE1F4C:
/* 80BE1F4C  88 63 00 00 */	lbz r3, 0(r3)
/* 80BE1F50  4E 80 00 20 */	blr 
