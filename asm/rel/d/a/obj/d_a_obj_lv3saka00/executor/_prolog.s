lbl_80C5BDE0:
/* 80C5BDE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5BDE4  7C 08 02 A6 */	mflr r0
/* 80C5BDE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5BDEC  3C 60 80 C6 */	lis r3, data_80C5C3BC@ha
/* 80C5BDF0  38 63 C3 BC */	addi r3, r3, data_80C5C3BC@l
/* 80C5BDF4  4B 60 73 58 */	b ModuleConstructorsX
/* 80C5BDF8  4B 60 72 90 */	b ModuleProlog
/* 80C5BDFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5BE00  7C 08 03 A6 */	mtlr r0
/* 80C5BE04  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5BE08  4E 80 00 20 */	blr 
