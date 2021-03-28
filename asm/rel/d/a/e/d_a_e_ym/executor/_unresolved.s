lbl_80808098:
/* 80808098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8080809C  7C 08 02 A6 */	mflr r0
/* 808080A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 808080A4  4B A5 AF EC */	b ModuleUnresolved
/* 808080A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808080AC  7C 08 03 A6 */	mtlr r0
/* 808080B0  38 21 00 10 */	addi r1, r1, 0x10
/* 808080B4  4E 80 00 20 */	blr 
