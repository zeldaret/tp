lbl_80A125A0:
/* 80A125A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A125A4  7C 08 02 A6 */	mflr r0
/* 80A125A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A125AC  4B FF C9 C5 */	bl Execute__10daNpcIns_cFv
/* 80A125B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A125B4  7C 08 03 A6 */	mtlr r0
/* 80A125B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A125BC  4E 80 00 20 */	blr 
