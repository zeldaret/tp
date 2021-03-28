lbl_80D5BDCC:
/* 80D5BDCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5BDD0  7C 08 02 A6 */	mflr r0
/* 80D5BDD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5BDD8  4B 50 72 B4 */	b ModuleEpilog
/* 80D5BDDC  3C 60 80 D6 */	lis r3, data_80D5C57C@ha
/* 80D5BDE0  38 63 C5 7C */	addi r3, r3, data_80D5C57C@l
/* 80D5BDE4  4B 50 73 AC */	b ModuleDestructorsX
/* 80D5BDE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5BDEC  7C 08 03 A6 */	mtlr r0
/* 80D5BDF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5BDF4  4E 80 00 20 */	blr 
