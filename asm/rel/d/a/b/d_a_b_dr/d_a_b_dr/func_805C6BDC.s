lbl_805C6BDC:
/* 805C6BDC  80 83 00 00 */	lwz r4, 0(r3)
/* 805C6BE0  2C 04 00 00 */	cmpwi r4, 0
/* 805C6BE4  41 82 00 0C */	beq lbl_805C6BF0
/* 805C6BE8  38 04 FF FF */	addi r0, r4, -1
/* 805C6BEC  90 03 00 00 */	stw r0, 0(r3)
lbl_805C6BF0:
/* 805C6BF0  80 63 00 00 */	lwz r3, 0(r3)
/* 805C6BF4  4E 80 00 20 */	blr 
