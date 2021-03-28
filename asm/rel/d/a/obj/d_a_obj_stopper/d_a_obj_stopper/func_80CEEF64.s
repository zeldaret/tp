lbl_80CEEF64:
/* 80CEEF64  88 83 00 00 */	lbz r4, 0(r3)
/* 80CEEF68  28 04 00 00 */	cmplwi r4, 0
/* 80CEEF6C  41 82 00 0C */	beq lbl_80CEEF78
/* 80CEEF70  38 04 FF FF */	addi r0, r4, -1
/* 80CEEF74  98 03 00 00 */	stb r0, 0(r3)
lbl_80CEEF78:
/* 80CEEF78  88 63 00 00 */	lbz r3, 0(r3)
/* 80CEEF7C  4E 80 00 20 */	blr 
