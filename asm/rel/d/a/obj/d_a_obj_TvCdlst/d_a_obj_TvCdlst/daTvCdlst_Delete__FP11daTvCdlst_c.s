lbl_80B9F770:
/* 80B9F770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9F774  7C 08 02 A6 */	mflr r0
/* 80B9F778  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9F77C  4B FF FF 5D */	bl Delete__11daTvCdlst_cFv
/* 80B9F780  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9F784  7C 08 03 A6 */	mtlr r0
/* 80B9F788  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9F78C  4E 80 00 20 */	blr 
