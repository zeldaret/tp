lbl_80B1C428:
/* 80B1C428  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1C42C  7C 08 02 A6 */	mflr r0
/* 80B1C430  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1C434  4B FF 8F FD */	bl Draw__10daNpcTks_cFv
/* 80B1C438  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1C43C  7C 08 03 A6 */	mtlr r0
/* 80B1C440  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1C444  4E 80 00 20 */	blr 
