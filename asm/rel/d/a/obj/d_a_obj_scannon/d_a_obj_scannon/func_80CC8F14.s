lbl_80CC8F14:
/* 80CC8F14  80 83 00 00 */	lwz r4, 0(r3)
/* 80CC8F18  2C 04 00 00 */	cmpwi r4, 0
/* 80CC8F1C  41 82 00 0C */	beq lbl_80CC8F28
/* 80CC8F20  38 04 FF FF */	addi r0, r4, -1
/* 80CC8F24  90 03 00 00 */	stw r0, 0(r3)
lbl_80CC8F28:
/* 80CC8F28  80 63 00 00 */	lwz r3, 0(r3)
/* 80CC8F2C  4E 80 00 20 */	blr 
