lbl_8073C030:
/* 8073C030  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8073C034  7C 08 02 A6 */	mflr r0
/* 8073C038  90 01 00 14 */	stw r0, 0x14(r1)
/* 8073C03C  4B FF FF 49 */	bl execute__8daE_OT_cFv
/* 8073C040  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8073C044  7C 08 03 A6 */	mtlr r0
/* 8073C048  38 21 00 10 */	addi r1, r1, 0x10
/* 8073C04C  4E 80 00 20 */	blr 
