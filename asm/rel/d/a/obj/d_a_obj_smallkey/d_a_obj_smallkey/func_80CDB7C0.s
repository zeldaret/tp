lbl_80CDB7C0:
/* 80CDB7C0  88 83 00 00 */	lbz r4, 0(r3)
/* 80CDB7C4  28 04 00 00 */	cmplwi r4, 0
/* 80CDB7C8  41 82 00 0C */	beq lbl_80CDB7D4
/* 80CDB7CC  38 04 FF FF */	addi r0, r4, -1
/* 80CDB7D0  98 03 00 00 */	stb r0, 0(r3)
lbl_80CDB7D4:
/* 80CDB7D4  88 63 00 00 */	lbz r3, 0(r3)
/* 80CDB7D8  4E 80 00 20 */	blr 
