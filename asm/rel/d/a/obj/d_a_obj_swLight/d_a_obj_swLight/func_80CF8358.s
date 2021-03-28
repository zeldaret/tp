lbl_80CF8358:
/* 80CF8358  A0 83 00 00 */	lhz r4, 0(r3)
/* 80CF835C  28 04 00 00 */	cmplwi r4, 0
/* 80CF8360  41 82 00 0C */	beq lbl_80CF836C
/* 80CF8364  38 04 FF FF */	addi r0, r4, -1
/* 80CF8368  B0 03 00 00 */	sth r0, 0(r3)
lbl_80CF836C:
/* 80CF836C  A0 63 00 00 */	lhz r3, 0(r3)
/* 80CF8370  4E 80 00 20 */	blr 
