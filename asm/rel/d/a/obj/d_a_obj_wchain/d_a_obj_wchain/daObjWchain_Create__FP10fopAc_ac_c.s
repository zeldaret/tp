lbl_80D30414:
/* 80D30414  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D30418  7C 08 02 A6 */	mflr r0
/* 80D3041C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D30420  4B FF FB 9D */	bl create__13daObjWchain_cFv
/* 80D30424  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D30428  7C 08 03 A6 */	mtlr r0
/* 80D3042C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D30430  4E 80 00 20 */	blr 
