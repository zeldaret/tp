lbl_8063E5A4:
/* 8063E5A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063E5A8  7C 08 02 A6 */	mflr r0
/* 8063E5AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063E5B0  4B FF FD 01 */	bl draw__10daB_ZANT_cFv
/* 8063E5B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063E5B8  7C 08 03 A6 */	mtlr r0
/* 8063E5BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8063E5C0  4E 80 00 20 */	blr 
