lbl_80CFD1A8:
/* 80CFD1A8  88 83 00 00 */	lbz r4, 0(r3)
/* 80CFD1AC  28 04 00 00 */	cmplwi r4, 0
/* 80CFD1B0  41 82 00 0C */	beq lbl_80CFD1BC
/* 80CFD1B4  38 04 FF FF */	addi r0, r4, -1
/* 80CFD1B8  98 03 00 00 */	stb r0, 0(r3)
lbl_80CFD1BC:
/* 80CFD1BC  88 63 00 00 */	lbz r3, 0(r3)
/* 80CFD1C0  4E 80 00 20 */	blr 
