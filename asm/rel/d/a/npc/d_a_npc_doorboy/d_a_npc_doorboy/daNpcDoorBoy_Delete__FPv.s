lbl_809AC92C:
/* 809AC92C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AC930  7C 08 02 A6 */	mflr r0
/* 809AC934  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AC938  4B FF EB 6D */	bl Delete__14daNpcDoorBoy_cFv
/* 809AC93C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AC940  7C 08 03 A6 */	mtlr r0
/* 809AC944  38 21 00 10 */	addi r1, r1, 0x10
/* 809AC948  4E 80 00 20 */	blr 
