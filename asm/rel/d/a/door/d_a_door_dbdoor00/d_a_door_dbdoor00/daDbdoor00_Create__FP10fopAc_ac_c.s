lbl_8045E50C:
/* 8045E50C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045E510  7C 08 02 A6 */	mflr r0
/* 8045E514  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045E518  4B FF F4 91 */	bl create__12daDbDoor00_cFv
/* 8045E51C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045E520  7C 08 03 A6 */	mtlr r0
/* 8045E524  38 21 00 10 */	addi r1, r1, 0x10
/* 8045E528  4E 80 00 20 */	blr 
