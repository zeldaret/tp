lbl_80B106B8:
/* 80B106B8  80 83 00 00 */	lwz r4, 0(r3)
/* 80B106BC  2C 04 00 00 */	cmpwi r4, 0
/* 80B106C0  41 82 00 0C */	beq lbl_80B106CC
/* 80B106C4  38 04 FF FF */	addi r0, r4, -1
/* 80B106C8  90 03 00 00 */	stw r0, 0(r3)
lbl_80B106CC:
/* 80B106CC  80 63 00 00 */	lwz r3, 0(r3)
/* 80B106D0  4E 80 00 20 */	blr 
