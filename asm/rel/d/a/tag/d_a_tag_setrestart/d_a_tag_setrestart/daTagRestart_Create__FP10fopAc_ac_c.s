lbl_80D6078C:
/* 80D6078C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D60790  7C 08 02 A6 */	mflr r0
/* 80D60794  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D60798  4B FF FC F5 */	bl create__14daTagRestart_cFv
/* 80D6079C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D607A0  7C 08 03 A6 */	mtlr r0
/* 80D607A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D607A8  4E 80 00 20 */	blr 
