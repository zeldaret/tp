lbl_80D6369C:
/* 80D6369C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D636A0  7C 08 02 A6 */	mflr r0
/* 80D636A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D636A8  4B FF F7 11 */	bl create__15daTag_SSDrink_cFv
/* 80D636AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D636B0  7C 08 03 A6 */	mtlr r0
/* 80D636B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D636B8  4E 80 00 20 */	blr 
