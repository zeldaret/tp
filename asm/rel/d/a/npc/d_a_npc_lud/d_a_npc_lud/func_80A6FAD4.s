lbl_80A6FAD4:
/* 80A6FAD4  80 83 00 00 */	lwz r4, 0(r3)
/* 80A6FAD8  2C 04 00 00 */	cmpwi r4, 0
/* 80A6FADC  41 82 00 0C */	beq lbl_80A6FAE8
/* 80A6FAE0  38 04 FF FF */	addi r0, r4, -1
/* 80A6FAE4  90 03 00 00 */	stw r0, 0(r3)
lbl_80A6FAE8:
/* 80A6FAE8  80 63 00 00 */	lwz r3, 0(r3)
/* 80A6FAEC  4E 80 00 20 */	blr 
