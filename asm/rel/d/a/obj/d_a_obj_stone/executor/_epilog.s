lbl_80CE902C:
/* 80CE902C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE9030  7C 08 02 A6 */	mflr r0
/* 80CE9034  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE9038  4B 57 A0 54 */	b ModuleEpilog
/* 80CE903C  3C 60 80 CF */	lis r3, data_80CECAB0@ha
/* 80CE9040  38 63 CA B0 */	addi r3, r3, data_80CECAB0@l
/* 80CE9044  4B 57 A1 4C */	b ModuleDestructorsX
/* 80CE9048  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE904C  7C 08 03 A6 */	mtlr r0
/* 80CE9050  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE9054  4E 80 00 20 */	blr 
