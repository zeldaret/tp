lbl_80D135DC:
/* 80D135DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D135E0  7C 08 02 A6 */	mflr r0
/* 80D135E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D135E8  4B FF FE B9 */	bl draw__16daObjToaruMaki_cFv
/* 80D135EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D135F0  7C 08 03 A6 */	mtlr r0
/* 80D135F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D135F8  4E 80 00 20 */	blr 
