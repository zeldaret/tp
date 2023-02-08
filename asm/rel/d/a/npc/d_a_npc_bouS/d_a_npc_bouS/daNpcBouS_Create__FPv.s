lbl_80976B48:
/* 80976B48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80976B4C  7C 08 02 A6 */	mflr r0
/* 80976B50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80976B54  4B FF CD F5 */	bl Create__11daNpcBouS_cFv
/* 80976B58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80976B5C  7C 08 03 A6 */	mtlr r0
/* 80976B60  38 21 00 10 */	addi r1, r1, 0x10
/* 80976B64  4E 80 00 20 */	blr 
