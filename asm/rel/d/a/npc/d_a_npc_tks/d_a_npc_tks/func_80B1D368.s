lbl_80B1D368:
/* 80B1D368  80 83 00 00 */	lwz r4, 0(r3)
/* 80B1D36C  2C 04 00 00 */	cmpwi r4, 0
/* 80B1D370  41 82 00 0C */	beq lbl_80B1D37C
/* 80B1D374  38 04 FF FF */	addi r0, r4, -1
/* 80B1D378  90 03 00 00 */	stw r0, 0(r3)
lbl_80B1D37C:
/* 80B1D37C  80 63 00 00 */	lwz r3, 0(r3)
/* 80B1D380  4E 80 00 20 */	blr 
