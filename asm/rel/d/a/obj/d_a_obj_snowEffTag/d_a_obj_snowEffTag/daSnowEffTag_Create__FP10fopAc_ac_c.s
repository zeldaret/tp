lbl_80CDF654:
/* 80CDF654  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDF658  7C 08 02 A6 */	mflr r0
/* 80CDF65C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDF660  4B FF FB 25 */	bl create__14daSnowEffTag_cFv
/* 80CDF664  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDF668  7C 08 03 A6 */	mtlr r0
/* 80CDF66C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDF670  4E 80 00 20 */	blr 
