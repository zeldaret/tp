lbl_809CFC40:
/* 809CFC40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CFC44  7C 08 02 A6 */	mflr r0
/* 809CFC48  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CFC4C  3C 60 80 9D */	lis r3, data_809D39F0@ha
/* 809CFC50  38 63 39 F0 */	addi r3, r3, data_809D39F0@l
/* 809CFC54  4B 89 34 F8 */	b ModuleConstructorsX
/* 809CFC58  4B 89 34 30 */	b ModuleProlog
/* 809CFC5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CFC60  7C 08 03 A6 */	mtlr r0
/* 809CFC64  38 21 00 10 */	addi r1, r1, 0x10
/* 809CFC68  4E 80 00 20 */	blr 
