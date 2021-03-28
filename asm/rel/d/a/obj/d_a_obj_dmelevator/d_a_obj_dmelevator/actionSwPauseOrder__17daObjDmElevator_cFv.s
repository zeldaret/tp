lbl_80BDE808:
/* 80BDE808  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDE80C  7C 08 02 A6 */	mflr r0
/* 80BDE810  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDE814  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80BDE818  28 00 00 02 */	cmplwi r0, 2
/* 80BDE81C  40 82 00 0C */	bne lbl_80BDE828
/* 80BDE820  48 00 00 1D */	bl actionSwPauseInit__17daObjDmElevator_cFv
/* 80BDE824  48 00 00 08 */	b lbl_80BDE82C
lbl_80BDE828:
/* 80BDE828  4B FF FF 79 */	bl actionSwPauseNoneInit__17daObjDmElevator_cFv
lbl_80BDE82C:
/* 80BDE82C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDE830  7C 08 03 A6 */	mtlr r0
/* 80BDE834  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDE838  4E 80 00 20 */	blr 
