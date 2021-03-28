lbl_809F12D0:
/* 809F12D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F12D4  7C 08 02 A6 */	mflr r0
/* 809F12D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F12DC  48 00 00 15 */	bl create__12daNpcGuard_cFv
/* 809F12E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F12E4  7C 08 03 A6 */	mtlr r0
/* 809F12E8  38 21 00 10 */	addi r1, r1, 0x10
/* 809F12EC  4E 80 00 20 */	blr 
