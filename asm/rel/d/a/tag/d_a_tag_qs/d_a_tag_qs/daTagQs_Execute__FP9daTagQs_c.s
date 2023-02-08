lbl_80D5EC20:
/* 80D5EC20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5EC24  7C 08 02 A6 */	mflr r0
/* 80D5EC28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5EC2C  4B FF FD CD */	bl execute__9daTagQs_cFv
/* 80D5EC30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5EC34  7C 08 03 A6 */	mtlr r0
/* 80D5EC38  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5EC3C  4E 80 00 20 */	blr 
