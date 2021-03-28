lbl_80BDF844:
/* 80BDF844  88 83 00 00 */	lbz r4, 0(r3)
/* 80BDF848  28 04 00 00 */	cmplwi r4, 0
/* 80BDF84C  41 82 00 0C */	beq lbl_80BDF858
/* 80BDF850  38 04 FF FF */	addi r0, r4, -1
/* 80BDF854  98 03 00 00 */	stb r0, 0(r3)
lbl_80BDF858:
/* 80BDF858  88 63 00 00 */	lbz r3, 0(r3)
/* 80BDF85C  4E 80 00 20 */	blr 
