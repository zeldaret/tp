lbl_80CFE020:
/* 80CFE020  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFE024  7C 08 02 A6 */	mflr r0
/* 80CFE028  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFE02C  3C 60 80 D0 */	lis r3, data_80CFFBEC@ha
/* 80CFE030  38 63 FB EC */	addi r3, r3, data_80CFFBEC@l
/* 80CFE034  4B 56 51 18 */	b ModuleConstructorsX
/* 80CFE038  4B 56 50 50 */	b ModuleProlog
/* 80CFE03C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFE040  7C 08 03 A6 */	mtlr r0
/* 80CFE044  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFE048  4E 80 00 20 */	blr 
