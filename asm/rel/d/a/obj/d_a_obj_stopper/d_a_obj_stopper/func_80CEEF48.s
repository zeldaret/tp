lbl_80CEEF48:
/* 80CEEF48  A0 83 00 00 */	lhz r4, 0(r3)
/* 80CEEF4C  28 04 00 00 */	cmplwi r4, 0
/* 80CEEF50  41 82 00 0C */	beq lbl_80CEEF5C
/* 80CEEF54  38 04 FF FF */	addi r0, r4, -1
/* 80CEEF58  B0 03 00 00 */	sth r0, 0(r3)
lbl_80CEEF5C:
/* 80CEEF5C  A0 63 00 00 */	lhz r3, 0(r3)
/* 80CEEF60  4E 80 00 20 */	blr 
