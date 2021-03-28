lbl_80B2CB10:
/* 80B2CB10  80 83 00 00 */	lwz r4, 0(r3)
/* 80B2CB14  2C 04 00 00 */	cmpwi r4, 0
/* 80B2CB18  41 82 00 0C */	beq lbl_80B2CB24
/* 80B2CB1C  38 04 FF FF */	addi r0, r4, -1
/* 80B2CB20  90 03 00 00 */	stw r0, 0(r3)
lbl_80B2CB24:
/* 80B2CB24  80 63 00 00 */	lwz r3, 0(r3)
/* 80B2CB28  4E 80 00 20 */	blr 
