lbl_80B5C0E4:
/* 80B5C0E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5C0E8  7C 08 02 A6 */	mflr r0
/* 80B5C0EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5C0F0  4B FF 7F CD */	bl Delete__11daNpc_ykM_cFv
/* 80B5C0F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5C0F8  7C 08 03 A6 */	mtlr r0
/* 80B5C0FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5C100  4E 80 00 20 */	blr 
