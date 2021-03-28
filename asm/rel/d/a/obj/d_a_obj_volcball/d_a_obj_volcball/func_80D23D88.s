lbl_80D23D88:
/* 80D23D88  80 83 00 00 */	lwz r4, 0(r3)
/* 80D23D8C  28 04 00 00 */	cmplwi r4, 0
/* 80D23D90  41 82 00 0C */	beq lbl_80D23D9C
/* 80D23D94  38 04 FF FF */	addi r0, r4, -1
/* 80D23D98  90 03 00 00 */	stw r0, 0(r3)
lbl_80D23D9C:
/* 80D23D9C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D23DA0  4E 80 00 20 */	blr 
