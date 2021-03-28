lbl_809627E0:
/* 809627E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809627E4  7C 08 02 A6 */	mflr r0
/* 809627E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809627EC  3C 60 80 96 */	lis r3, data_80967E0C@ha
/* 809627F0  38 63 7E 0C */	addi r3, r3, data_80967E0C@l
/* 809627F4  4B 90 09 58 */	b ModuleConstructorsX
/* 809627F8  4B 90 08 90 */	b ModuleProlog
/* 809627FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80962800  7C 08 03 A6 */	mtlr r0
/* 80962804  38 21 00 10 */	addi r1, r1, 0x10
/* 80962808  4E 80 00 20 */	blr 
