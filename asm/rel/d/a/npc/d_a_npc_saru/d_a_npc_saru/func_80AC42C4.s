lbl_80AC42C4:
/* 80AC42C4  80 83 00 00 */	lwz r4, 0(r3)
/* 80AC42C8  2C 04 00 00 */	cmpwi r4, 0
/* 80AC42CC  41 82 00 0C */	beq lbl_80AC42D8
/* 80AC42D0  38 04 FF FF */	addi r0, r4, -1
/* 80AC42D4  90 03 00 00 */	stw r0, 0(r3)
lbl_80AC42D8:
/* 80AC42D8  80 63 00 00 */	lwz r3, 0(r3)
/* 80AC42DC  4E 80 00 20 */	blr 
