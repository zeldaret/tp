lbl_80D666E4:
/* 80D666E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D666E8  7C 08 02 A6 */	mflr r0
/* 80D666EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D666F0  4B FF FC F5 */	bl create__8daTalk_cFv
/* 80D666F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D666F8  7C 08 03 A6 */	mtlr r0
/* 80D666FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D66700  4E 80 00 20 */	blr 
