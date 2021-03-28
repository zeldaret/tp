lbl_80489A4C:
/* 80489A4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80489A50  7C 08 02 A6 */	mflr r0
/* 80489A54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80489A58  4B DD 96 34 */	b ModuleEpilog
/* 80489A5C  3C 60 80 49 */	lis r3, data_8048A58C@ha
/* 80489A60  38 63 A5 8C */	addi r3, r3, data_8048A58C@l
/* 80489A64  4B DD 97 2C */	b ModuleDestructorsX
/* 80489A68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80489A6C  7C 08 03 A6 */	mtlr r0
/* 80489A70  38 21 00 10 */	addi r1, r1, 0x10
/* 80489A74  4E 80 00 20 */	blr 
