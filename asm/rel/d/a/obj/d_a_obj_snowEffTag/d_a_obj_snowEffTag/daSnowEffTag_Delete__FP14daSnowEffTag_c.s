lbl_80CDF634:
/* 80CDF634  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDF638  7C 08 02 A6 */	mflr r0
/* 80CDF63C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDF640  4B FF FF AD */	bl Delete__14daSnowEffTag_cFv
/* 80CDF644  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDF648  7C 08 03 A6 */	mtlr r0
/* 80CDF64C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDF650  4E 80 00 20 */	blr 
