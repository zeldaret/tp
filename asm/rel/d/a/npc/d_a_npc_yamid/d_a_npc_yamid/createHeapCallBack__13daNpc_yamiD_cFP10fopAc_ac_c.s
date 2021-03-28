lbl_80B43884:
/* 80B43884  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B43888  7C 08 02 A6 */	mflr r0
/* 80B4388C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B43890  4B FF FA A9 */	bl CreateHeap__13daNpc_yamiD_cFv
/* 80B43894  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B43898  7C 08 03 A6 */	mtlr r0
/* 80B4389C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B438A0  4E 80 00 20 */	blr 
