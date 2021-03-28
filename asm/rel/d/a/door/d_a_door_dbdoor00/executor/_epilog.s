lbl_8045D32C:
/* 8045D32C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045D330  7C 08 02 A6 */	mflr r0
/* 8045D334  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045D338  4B E0 5D 54 */	b ModuleEpilog
/* 8045D33C  3C 60 80 46 */	lis r3, data_8045E530@ha
/* 8045D340  38 63 E5 30 */	addi r3, r3, data_8045E530@l
/* 8045D344  4B E0 5E 4C */	b ModuleDestructorsX
/* 8045D348  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045D34C  7C 08 03 A6 */	mtlr r0
/* 8045D350  38 21 00 10 */	addi r1, r1, 0x10
/* 8045D354  4E 80 00 20 */	blr 
