lbl_80D525AC:
/* 80D525AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D525B0  7C 08 02 A6 */	mflr r0
/* 80D525B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D525B8  4B 51 0A D4 */	b ModuleEpilog
/* 80D525BC  3C 60 80 D5 */	lis r3, data_80D557A8@ha
/* 80D525C0  38 63 57 A8 */	addi r3, r3, data_80D557A8@l
/* 80D525C4  4B 51 0B CC */	b ModuleDestructorsX
/* 80D525C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D525CC  7C 08 03 A6 */	mtlr r0
/* 80D525D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D525D4  4E 80 00 20 */	blr 
