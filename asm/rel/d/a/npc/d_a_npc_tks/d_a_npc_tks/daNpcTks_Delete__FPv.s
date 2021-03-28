lbl_80B1C3E8:
/* 80B1C3E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1C3EC  7C 08 02 A6 */	mflr r0
/* 80B1C3F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1C3F4  4B FF 8F E5 */	bl Delete__10daNpcTks_cFv
/* 80B1C3F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1C3FC  7C 08 03 A6 */	mtlr r0
/* 80B1C400  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1C404  4E 80 00 20 */	blr 
