lbl_8058802C:
/* 8058802C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80588030  7C 08 02 A6 */	mflr r0
/* 80588034  90 01 00 14 */	stw r0, 0x14(r1)
/* 80588038  4B CD B0 54 */	b ModuleEpilog
/* 8058803C  3C 60 80 59 */	lis r3, data_8058AB2C@ha
/* 80588040  38 63 AB 2C */	addi r3, r3, data_8058AB2C@l
/* 80588044  4B CD B1 4C */	b ModuleDestructorsX
/* 80588048  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058804C  7C 08 03 A6 */	mtlr r0
/* 80588050  38 21 00 10 */	addi r1, r1, 0x10
/* 80588054  4E 80 00 20 */	blr 
