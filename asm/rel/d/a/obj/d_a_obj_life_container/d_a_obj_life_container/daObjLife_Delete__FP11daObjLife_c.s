lbl_804CE2B4:
/* 804CE2B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CE2B8  7C 08 02 A6 */	mflr r0
/* 804CE2BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CE2C0  4B FF FF 55 */	bl _delete__11daObjLife_cFv
/* 804CE2C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CE2C8  7C 08 03 A6 */	mtlr r0
/* 804CE2CC  38 21 00 10 */	addi r1, r1, 0x10
/* 804CE2D0  4E 80 00 20 */	blr 
