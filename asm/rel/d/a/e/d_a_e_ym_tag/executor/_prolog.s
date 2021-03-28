lbl_80815D80:
/* 80815D80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80815D84  7C 08 02 A6 */	mflr r0
/* 80815D88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80815D8C  3C 60 80 81 */	lis r3, data_80815FB0@ha
/* 80815D90  38 63 5F B0 */	addi r3, r3, data_80815FB0@l
/* 80815D94  4B A4 D3 B8 */	b ModuleConstructorsX
/* 80815D98  4B A4 D2 F0 */	b ModuleProlog
/* 80815D9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80815DA0  7C 08 03 A6 */	mtlr r0
/* 80815DA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80815DA8  4E 80 00 20 */	blr 
