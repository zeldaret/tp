lbl_80D5BA94:
/* 80D5BA94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5BA98  7C 08 02 A6 */	mflr r0
/* 80D5BA9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5BAA0  4B FF FE 79 */	bl create__11daTagMmsg_cFv
/* 80D5BAA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5BAA8  7C 08 03 A6 */	mtlr r0
/* 80D5BAAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5BAB0  4E 80 00 20 */	blr 
