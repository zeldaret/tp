lbl_804CE294:
/* 804CE294  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CE298  7C 08 02 A6 */	mflr r0
/* 804CE29C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CE2A0  4B FF FB D1 */	bl execute__11daObjLife_cFv
/* 804CE2A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CE2A8  7C 08 03 A6 */	mtlr r0
/* 804CE2AC  38 21 00 10 */	addi r1, r1, 0x10
/* 804CE2B0  4E 80 00 20 */	blr 
