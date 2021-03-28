lbl_80BE9C6C:
/* 80BE9C6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE9C70  7C 08 02 A6 */	mflr r0
/* 80BE9C74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE9C78  4B 67 94 14 */	b ModuleEpilog
/* 80BE9C7C  3C 60 80 BF */	lis r3, data_80BEB4C0@ha
/* 80BE9C80  38 63 B4 C0 */	addi r3, r3, data_80BEB4C0@l
/* 80BE9C84  4B 67 95 0C */	b ModuleDestructorsX
/* 80BE9C88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE9C8C  7C 08 03 A6 */	mtlr r0
/* 80BE9C90  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE9C94  4E 80 00 20 */	blr 
