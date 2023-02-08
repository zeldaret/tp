lbl_80870BB8:
/* 80870BB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80870BBC  7C 08 02 A6 */	mflr r0
/* 80870BC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80870BC4  48 00 13 45 */	bl createHeap__10daMirror_cFv
/* 80870BC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80870BCC  7C 08 03 A6 */	mtlr r0
/* 80870BD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80870BD4  4E 80 00 20 */	blr 
