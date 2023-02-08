lbl_80BA7CD8:
/* 80BA7CD8  88 83 00 00 */	lbz r4, 0(r3)
/* 80BA7CDC  28 04 00 00 */	cmplwi r4, 0
/* 80BA7CE0  41 82 00 0C */	beq lbl_80BA7CEC
/* 80BA7CE4  38 04 FF FF */	addi r0, r4, -1
/* 80BA7CE8  98 03 00 00 */	stb r0, 0(r3)
lbl_80BA7CEC:
/* 80BA7CEC  88 63 00 00 */	lbz r3, 0(r3)
/* 80BA7CF0  4E 80 00 20 */	blr 
