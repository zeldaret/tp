lbl_809FED78:
/* 809FED78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809FED7C  7C 08 02 A6 */	mflr r0
/* 809FED80  90 01 00 14 */	stw r0, 0x14(r1)
/* 809FED84  4B FF AD B5 */	bl Delete__13daNpc_Hanjo_cFv
/* 809FED88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809FED8C  7C 08 03 A6 */	mtlr r0
/* 809FED90  38 21 00 10 */	addi r1, r1, 0x10
/* 809FED94  4E 80 00 20 */	blr 
