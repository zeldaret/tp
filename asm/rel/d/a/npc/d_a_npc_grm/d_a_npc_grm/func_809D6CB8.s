lbl_809D6CB8:
/* 809D6CB8  80 83 00 00 */	lwz r4, 0(r3)
/* 809D6CBC  2C 04 00 00 */	cmpwi r4, 0
/* 809D6CC0  41 82 00 0C */	beq lbl_809D6CCC
/* 809D6CC4  38 04 FF FF */	addi r0, r4, -1
/* 809D6CC8  90 03 00 00 */	stw r0, 0(r3)
lbl_809D6CCC:
/* 809D6CCC  80 63 00 00 */	lwz r3, 0(r3)
/* 809D6CD0  4E 80 00 20 */	blr 
