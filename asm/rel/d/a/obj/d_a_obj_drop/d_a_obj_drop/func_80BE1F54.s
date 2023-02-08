lbl_80BE1F54:
/* 80BE1F54  88 83 00 00 */	lbz r4, 0(r3)
/* 80BE1F58  7C 80 07 75 */	extsb. r0, r4
/* 80BE1F5C  41 82 00 0C */	beq lbl_80BE1F68
/* 80BE1F60  38 04 FF FF */	addi r0, r4, -1
/* 80BE1F64  98 03 00 00 */	stb r0, 0(r3)
lbl_80BE1F68:
/* 80BE1F68  88 63 00 00 */	lbz r3, 0(r3)
/* 80BE1F6C  4E 80 00 20 */	blr 
