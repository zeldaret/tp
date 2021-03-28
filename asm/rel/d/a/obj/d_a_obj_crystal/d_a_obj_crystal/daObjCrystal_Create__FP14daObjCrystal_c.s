lbl_80BD6894:
/* 80BD6894  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD6898  7C 08 02 A6 */	mflr r0
/* 80BD689C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD68A0  4B FF FD C5 */	bl create__14daObjCrystal_cFv
/* 80BD68A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD68A8  7C 08 03 A6 */	mtlr r0
/* 80BD68AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD68B0  4E 80 00 20 */	blr 
