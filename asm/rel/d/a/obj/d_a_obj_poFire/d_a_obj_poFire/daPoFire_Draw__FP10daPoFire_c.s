lbl_80CB3CA4:
/* 80CB3CA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB3CA8  7C 08 02 A6 */	mflr r0
/* 80CB3CAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB3CB0  4B FF FF BD */	bl Draw__10daPoFire_cFv
/* 80CB3CB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB3CB8  7C 08 03 A6 */	mtlr r0
/* 80CB3CBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB3CC0  4E 80 00 20 */	blr 
