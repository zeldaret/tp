lbl_80C2A9E0:
/* 80C2A9E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2A9E4  7C 08 02 A6 */	mflr r0
/* 80C2A9E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2A9EC  4B FF F3 C1 */	bl Delete__15daObj_ItaMato_cFv
/* 80C2A9F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2A9F4  7C 08 03 A6 */	mtlr r0
/* 80C2A9F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2A9FC  4E 80 00 20 */	blr 
