lbl_80B50F00:
/* 80B50F00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B50F04  7C 08 02 A6 */	mflr r0
/* 80B50F08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B50F0C  4B FF CD 15 */	bl Delete__13daNpc_Yelia_cFv
/* 80B50F10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B50F14  7C 08 03 A6 */	mtlr r0
/* 80B50F18  38 21 00 10 */	addi r1, r1, 0x10
/* 80B50F1C  4E 80 00 20 */	blr 
