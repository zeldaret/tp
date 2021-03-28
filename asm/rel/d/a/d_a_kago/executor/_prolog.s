lbl_808494C0:
/* 808494C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808494C4  7C 08 02 A6 */	mflr r0
/* 808494C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 808494CC  3C 60 80 85 */	lis r3, data_80854AF0@ha
/* 808494D0  38 63 4A F0 */	addi r3, r3, data_80854AF0@l
/* 808494D4  4B A1 9C 78 */	b ModuleConstructorsX
/* 808494D8  4B A1 9B B0 */	b ModuleProlog
/* 808494DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808494E0  7C 08 03 A6 */	mtlr r0
/* 808494E4  38 21 00 10 */	addi r1, r1, 0x10
/* 808494E8  4E 80 00 20 */	blr 
