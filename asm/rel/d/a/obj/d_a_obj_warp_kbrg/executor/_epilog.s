lbl_80D26EEC:
/* 80D26EEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D26EF0  7C 08 02 A6 */	mflr r0
/* 80D26EF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D26EF8  4B 53 C1 94 */	b ModuleEpilog
/* 80D26EFC  3C 60 80 D3 */	lis r3, data_80D295B0@ha
/* 80D26F00  38 63 95 B0 */	addi r3, r3, data_80D295B0@l
/* 80D26F04  4B 53 C2 8C */	b ModuleDestructorsX
/* 80D26F08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D26F0C  7C 08 03 A6 */	mtlr r0
/* 80D26F10  38 21 00 10 */	addi r1, r1, 0x10
/* 80D26F14  4E 80 00 20 */	blr 
