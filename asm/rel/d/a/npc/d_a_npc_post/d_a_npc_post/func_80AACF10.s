lbl_80AACF10:
/* 80AACF10  80 83 00 00 */	lwz r4, 0(r3)
/* 80AACF14  2C 04 00 00 */	cmpwi r4, 0
/* 80AACF18  41 82 00 0C */	beq lbl_80AACF24
/* 80AACF1C  38 04 FF FF */	addi r0, r4, -1
/* 80AACF20  90 03 00 00 */	stw r0, 0(r3)
lbl_80AACF24:
/* 80AACF24  80 63 00 00 */	lwz r3, 0(r3)
/* 80AACF28  4E 80 00 20 */	blr 
