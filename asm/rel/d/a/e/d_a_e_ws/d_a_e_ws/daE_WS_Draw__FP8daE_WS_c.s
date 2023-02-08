lbl_807E3C00:
/* 807E3C00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E3C04  7C 08 02 A6 */	mflr r0
/* 807E3C08  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E3C0C  4B FF FE 61 */	bl draw__8daE_WS_cFv
/* 807E3C10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E3C14  7C 08 03 A6 */	mtlr r0
/* 807E3C18  38 21 00 10 */	addi r1, r1, 0x10
/* 807E3C1C  4E 80 00 20 */	blr 
