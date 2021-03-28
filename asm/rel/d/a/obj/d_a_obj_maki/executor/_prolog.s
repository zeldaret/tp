lbl_80C8FD20:
/* 80C8FD20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8FD24  7C 08 02 A6 */	mflr r0
/* 80C8FD28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8FD2C  3C 60 80 C9 */	lis r3, data_80C90920@ha
/* 80C8FD30  38 63 09 20 */	addi r3, r3, data_80C90920@l
/* 80C8FD34  4B 5D 34 18 */	b ModuleConstructorsX
/* 80C8FD38  4B 5D 33 50 */	b ModuleProlog
/* 80C8FD3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8FD40  7C 08 03 A6 */	mtlr r0
/* 80C8FD44  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8FD48  4E 80 00 20 */	blr 
