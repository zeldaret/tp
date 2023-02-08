lbl_80D63BC0:
/* 80D63BC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D63BC4  7C 08 02 A6 */	mflr r0
/* 80D63BC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D63BCC  4B FF FF 8D */	bl execute__13daTagStream_cFv
/* 80D63BD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D63BD4  7C 08 03 A6 */	mtlr r0
/* 80D63BD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D63BDC  4E 80 00 20 */	blr 
