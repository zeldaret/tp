lbl_809C9AE4:
/* 809C9AE4  80 83 00 00 */	lwz r4, 0(r3)
/* 809C9AE8  2C 04 00 00 */	cmpwi r4, 0
/* 809C9AEC  41 82 00 0C */	beq lbl_809C9AF8
/* 809C9AF0  38 04 FF FF */	addi r0, r4, -1
/* 809C9AF4  90 03 00 00 */	stw r0, 0(r3)
lbl_809C9AF8:
/* 809C9AF8  80 63 00 00 */	lwz r3, 0(r3)
/* 809C9AFC  4E 80 00 20 */	blr 
