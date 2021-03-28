lbl_80BD32C0:
/* 80BD32C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD32C4  7C 08 02 A6 */	mflr r0
/* 80BD32C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD32CC  3C 60 80 BD */	lis r3, data_80BD3FE8@ha
/* 80BD32D0  38 63 3F E8 */	addi r3, r3, data_80BD3FE8@l
/* 80BD32D4  4B 68 FE 78 */	b ModuleConstructorsX
/* 80BD32D8  4B 68 FD B0 */	b ModuleProlog
/* 80BD32DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD32E0  7C 08 03 A6 */	mtlr r0
/* 80BD32E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD32E8  4E 80 00 20 */	blr 
