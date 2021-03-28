lbl_80485FAC:
/* 80485FAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80485FB0  7C 08 02 A6 */	mflr r0
/* 80485FB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80485FB8  4B DD D0 D4 */	b ModuleEpilog
/* 80485FBC  3C 60 80 48 */	lis r3, data_8048736C@ha
/* 80485FC0  38 63 73 6C */	addi r3, r3, data_8048736C@l
/* 80485FC4  4B DD D1 CC */	b ModuleDestructorsX
/* 80485FC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80485FCC  7C 08 03 A6 */	mtlr r0
/* 80485FD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80485FD4  4E 80 00 20 */	blr 
