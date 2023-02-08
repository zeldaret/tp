lbl_809D5D70:
/* 809D5D70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D5D74  7C 08 02 A6 */	mflr r0
/* 809D5D78  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D5D7C  4B FF E8 49 */	bl Delete__11daNpc_grM_cFv
/* 809D5D80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D5D84  7C 08 03 A6 */	mtlr r0
/* 809D5D88  38 21 00 10 */	addi r1, r1, 0x10
/* 809D5D8C  4E 80 00 20 */	blr 
