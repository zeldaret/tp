lbl_80CDF614:
/* 80CDF614  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDF618  7C 08 02 A6 */	mflr r0
/* 80CDF61C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDF620  4B FF FE 79 */	bl Execute__14daSnowEffTag_cFv
/* 80CDF624  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDF628  7C 08 03 A6 */	mtlr r0
/* 80CDF62C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDF630  4E 80 00 20 */	blr 
