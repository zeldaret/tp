lbl_804D569C:
/* 804D569C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D56A0  7C 08 02 A6 */	mflr r0
/* 804D56A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D56A8  4B FF FF E5 */	bl draw__8daAttp_cFv
/* 804D56AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D56B0  7C 08 03 A6 */	mtlr r0
/* 804D56B4  38 21 00 10 */	addi r1, r1, 0x10
/* 804D56B8  4E 80 00 20 */	blr 
