lbl_80CE4F2C:
/* 80CE4F2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE4F30  7C 08 02 A6 */	mflr r0
/* 80CE4F34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE4F38  4B 57 E1 54 */	b ModuleEpilog
/* 80CE4F3C  3C 60 80 CE */	lis r3, data_80CE692C@ha
/* 80CE4F40  38 63 69 2C */	addi r3, r3, data_80CE692C@l
/* 80CE4F44  4B 57 E2 4C */	b ModuleDestructorsX
/* 80CE4F48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE4F4C  7C 08 03 A6 */	mtlr r0
/* 80CE4F50  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE4F54  4E 80 00 20 */	blr 
