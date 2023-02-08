lbl_80BC9F44:
/* 80BC9F44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC9F48  7C 08 02 A6 */	mflr r0
/* 80BC9F4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC9F50  4B FF F3 61 */	bl create__12daObjChest_cFv
/* 80BC9F54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC9F58  7C 08 03 A6 */	mtlr r0
/* 80BC9F5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC9F60  4E 80 00 20 */	blr 
