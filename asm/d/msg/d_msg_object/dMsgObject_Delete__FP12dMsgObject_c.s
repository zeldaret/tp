lbl_80237F60:
/* 80237F60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80237F64  7C 08 02 A6 */	mflr r0
/* 80237F68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80237F6C  4B FF BB 7D */	bl _delete__12dMsgObject_cFv
/* 80237F70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80237F74  7C 08 03 A6 */	mtlr r0
/* 80237F78  38 21 00 10 */	addi r1, r1, 0x10
/* 80237F7C  4E 80 00 20 */	blr 
