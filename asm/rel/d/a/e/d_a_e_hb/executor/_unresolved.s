lbl_804FBCD8:
/* 804FBCD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FBCDC  7C 08 02 A6 */	mflr r0
/* 804FBCE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FBCE4  4B D6 73 AC */	b ModuleUnresolved
/* 804FBCE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FBCEC  7C 08 03 A6 */	mtlr r0
/* 804FBCF0  38 21 00 10 */	addi r1, r1, 0x10
/* 804FBCF4  4E 80 00 20 */	blr 
