lbl_80BF4848:
/* 80BF4848  80 83 00 00 */	lwz r4, 0(r3)
/* 80BF484C  2C 04 00 00 */	cmpwi r4, 0
/* 80BF4850  41 82 00 0C */	beq lbl_80BF485C
/* 80BF4854  38 04 FF FF */	addi r0, r4, -1
/* 80BF4858  90 03 00 00 */	stw r0, 0(r3)
lbl_80BF485C:
/* 80BF485C  80 63 00 00 */	lwz r3, 0(r3)
/* 80BF4860  4E 80 00 20 */	blr 
