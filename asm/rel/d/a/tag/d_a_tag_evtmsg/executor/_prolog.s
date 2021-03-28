lbl_8048CEC0:
/* 8048CEC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048CEC4  7C 08 02 A6 */	mflr r0
/* 8048CEC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048CECC  3C 60 80 49 */	lis r3, data_8048D7DC@ha
/* 8048CED0  38 63 D7 DC */	addi r3, r3, data_8048D7DC@l
/* 8048CED4  4B DD 62 78 */	b ModuleConstructorsX
/* 8048CED8  4B DD 61 B0 */	b ModuleProlog
/* 8048CEDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048CEE0  7C 08 03 A6 */	mtlr r0
/* 8048CEE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8048CEE8  4E 80 00 20 */	blr 
