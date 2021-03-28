lbl_80CF6F4C:
/* 80CF6F4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF6F50  7C 08 02 A6 */	mflr r0
/* 80CF6F54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF6F58  4B 56 C1 34 */	b ModuleEpilog
/* 80CF6F5C  3C 60 80 D0 */	lis r3, data_80CF839C@ha
/* 80CF6F60  38 63 83 9C */	addi r3, r3, data_80CF839C@l
/* 80CF6F64  4B 56 C2 2C */	b ModuleDestructorsX
/* 80CF6F68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF6F6C  7C 08 03 A6 */	mtlr r0
/* 80CF6F70  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF6F74  4E 80 00 20 */	blr 
