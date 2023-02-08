lbl_80A3BD48:
/* 80A3BD48  80 83 00 00 */	lwz r4, 0(r3)
/* 80A3BD4C  2C 04 00 00 */	cmpwi r4, 0
/* 80A3BD50  41 82 00 0C */	beq lbl_80A3BD5C
/* 80A3BD54  38 04 FF FF */	addi r0, r4, -1
/* 80A3BD58  90 03 00 00 */	stw r0, 0(r3)
lbl_80A3BD5C:
/* 80A3BD5C  80 63 00 00 */	lwz r3, 0(r3)
/* 80A3BD60  4E 80 00 20 */	blr 
