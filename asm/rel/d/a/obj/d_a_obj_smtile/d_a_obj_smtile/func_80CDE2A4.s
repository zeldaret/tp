lbl_80CDE2A4:
/* 80CDE2A4  80 83 00 00 */	lwz r4, 0(r3)
/* 80CDE2A8  2C 04 00 00 */	cmpwi r4, 0
/* 80CDE2AC  41 82 00 0C */	beq lbl_80CDE2B8
/* 80CDE2B0  38 04 FF FF */	addi r0, r4, -1
/* 80CDE2B4  90 03 00 00 */	stw r0, 0(r3)
lbl_80CDE2B8:
/* 80CDE2B8  80 63 00 00 */	lwz r3, 0(r3)
/* 80CDE2BC  4E 80 00 20 */	blr 
