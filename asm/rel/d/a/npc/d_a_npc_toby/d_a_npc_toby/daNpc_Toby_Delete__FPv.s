lbl_80B23648:
/* 80B23648  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2364C  7C 08 02 A6 */	mflr r0
/* 80B23650  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B23654  4B FF B8 D5 */	bl Delete__12daNpc_Toby_cFv
/* 80B23658  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2365C  7C 08 03 A6 */	mtlr r0
/* 80B23660  38 21 00 10 */	addi r1, r1, 0x10
/* 80B23664  4E 80 00 20 */	blr 
