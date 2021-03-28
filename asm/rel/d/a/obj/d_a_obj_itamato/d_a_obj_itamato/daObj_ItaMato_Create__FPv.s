lbl_80C2A9C0:
/* 80C2A9C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2A9C4  7C 08 02 A6 */	mflr r0
/* 80C2A9C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2A9CC  4B FF ED 51 */	bl create__15daObj_ItaMato_cFv
/* 80C2A9D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2A9D4  7C 08 03 A6 */	mtlr r0
/* 80C2A9D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2A9DC  4E 80 00 20 */	blr 
