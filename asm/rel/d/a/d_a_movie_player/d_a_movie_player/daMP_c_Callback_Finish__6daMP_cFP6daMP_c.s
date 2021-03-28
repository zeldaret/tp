lbl_80878F18:
/* 80878F18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80878F1C  7C 08 02 A6 */	mflr r0
/* 80878F20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80878F24  4B FF FE 41 */	bl daMP_c_Finish__6daMP_cFv
/* 80878F28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80878F2C  7C 08 03 A6 */	mtlr r0
/* 80878F30  38 21 00 10 */	addi r1, r1, 0x10
/* 80878F34  4E 80 00 20 */	blr 
