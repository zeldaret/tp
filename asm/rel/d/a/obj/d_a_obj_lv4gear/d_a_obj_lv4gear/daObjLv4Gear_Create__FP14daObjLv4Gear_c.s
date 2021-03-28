lbl_80C684D8:
/* 80C684D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C684DC  7C 08 02 A6 */	mflr r0
/* 80C684E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C684E4  4B FF FC 41 */	bl create__14daObjLv4Gear_cFv
/* 80C684E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C684EC  7C 08 03 A6 */	mtlr r0
/* 80C684F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C684F4  4E 80 00 20 */	blr 
