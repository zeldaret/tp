lbl_80D3DB20:
/* 80D3DB20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3DB24  7C 08 02 A6 */	mflr r0
/* 80D3DB28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3DB2C  4B FF F8 01 */	bl Draw__12daObj_YBag_cFv
/* 80D3DB30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3DB34  7C 08 03 A6 */	mtlr r0
/* 80D3DB38  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3DB3C  4E 80 00 20 */	blr 
