lbl_8019D8AC:
/* 8019D8AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019D8B0  7C 08 02 A6 */	mflr r0
/* 8019D8B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019D8B8  4B FF FF C1 */	bl get_parcent__Ffff
/* 8019D8BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019D8C0  7C 08 03 A6 */	mtlr r0
/* 8019D8C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8019D8C8  4E 80 00 20 */	blr 
