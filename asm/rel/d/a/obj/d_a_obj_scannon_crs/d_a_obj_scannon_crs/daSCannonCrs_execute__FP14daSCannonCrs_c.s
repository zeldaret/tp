lbl_80CCAF94:
/* 80CCAF94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCAF98  7C 08 02 A6 */	mflr r0
/* 80CCAF9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCAFA0  4B FF EC C5 */	bl execute__14daSCannonCrs_cFv
/* 80CCAFA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCAFA8  7C 08 03 A6 */	mtlr r0
/* 80CCAFAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCAFB0  4E 80 00 20 */	blr 
