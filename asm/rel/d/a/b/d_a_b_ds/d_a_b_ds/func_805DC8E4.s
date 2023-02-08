lbl_805DC8E4:
/* 805DC8E4  80 83 00 00 */	lwz r4, 0(r3)
/* 805DC8E8  2C 04 00 00 */	cmpwi r4, 0
/* 805DC8EC  41 82 00 0C */	beq lbl_805DC8F8
/* 805DC8F0  38 04 FF FF */	addi r0, r4, -1
/* 805DC8F4  90 03 00 00 */	stw r0, 0(r3)
lbl_805DC8F8:
/* 805DC8F8  80 63 00 00 */	lwz r3, 0(r3)
/* 805DC8FC  4E 80 00 20 */	blr 
