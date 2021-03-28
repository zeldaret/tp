lbl_80A43480:
/* 80A43480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A43484  7C 08 02 A6 */	mflr r0
/* 80A43488  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A4348C  3C 60 80 A4 */	lis r3, data_80A454FC@ha
/* 80A43490  38 63 54 FC */	addi r3, r3, data_80A454FC@l
/* 80A43494  4B 81 FC B8 */	b ModuleConstructorsX
/* 80A43498  4B 81 FB F0 */	b ModuleProlog
/* 80A4349C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A434A0  7C 08 03 A6 */	mtlr r0
/* 80A434A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A434A8  4E 80 00 20 */	blr 
