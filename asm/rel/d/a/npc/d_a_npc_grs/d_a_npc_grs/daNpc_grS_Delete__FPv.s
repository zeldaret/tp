lbl_809E745C:
/* 809E745C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E7460  7C 08 02 A6 */	mflr r0
/* 809E7464  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E7468  4B FF D7 F1 */	bl Delete__11daNpc_grS_cFv
/* 809E746C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E7470  7C 08 03 A6 */	mtlr r0
/* 809E7474  38 21 00 10 */	addi r1, r1, 0x10
/* 809E7478  4E 80 00 20 */	blr 
