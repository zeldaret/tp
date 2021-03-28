lbl_804CE274:
/* 804CE274  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CE278  7C 08 02 A6 */	mflr r0
/* 804CE27C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CE280  4B FF FF 1D */	bl draw__11daObjLife_cFv
/* 804CE284  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CE288  7C 08 03 A6 */	mtlr r0
/* 804CE28C  38 21 00 10 */	addi r1, r1, 0x10
/* 804CE290  4E 80 00 20 */	blr 
