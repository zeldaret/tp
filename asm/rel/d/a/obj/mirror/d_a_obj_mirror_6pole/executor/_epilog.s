lbl_80C95DCC:
/* 80C95DCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C95DD0  7C 08 02 A6 */	mflr r0
/* 80C95DD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C95DD8  4B 5C D2 B4 */	b ModuleEpilog
/* 80C95DDC  3C 60 80 C9 */	lis r3, data_80C9650C@ha
/* 80C95DE0  38 63 65 0C */	addi r3, r3, data_80C9650C@l
/* 80C95DE4  4B 5C D3 AC */	b ModuleDestructorsX
/* 80C95DE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C95DEC  7C 08 03 A6 */	mtlr r0
/* 80C95DF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C95DF4  4E 80 00 20 */	blr 
