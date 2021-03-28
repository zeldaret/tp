lbl_801FD860:
/* 801FD860  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FD864  7C 08 02 A6 */	mflr r0
/* 801FD868  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FD86C  4B FF FA 6D */	bl _execute__5dMw_cFv
/* 801FD870  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FD874  7C 08 03 A6 */	mtlr r0
/* 801FD878  38 21 00 10 */	addi r1, r1, 0x10
/* 801FD87C  4E 80 00 20 */	blr 
