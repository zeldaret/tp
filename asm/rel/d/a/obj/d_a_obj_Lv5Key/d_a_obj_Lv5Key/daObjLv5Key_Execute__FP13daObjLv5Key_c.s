lbl_80B9C5CC:
/* 80B9C5CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9C5D0  7C 08 02 A6 */	mflr r0
/* 80B9C5D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9C5D8  4B FF FE 39 */	bl Execute__13daObjLv5Key_cFv
/* 80B9C5DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9C5E0  7C 08 03 A6 */	mtlr r0
/* 80B9C5E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9C5E8  4E 80 00 20 */	blr 
