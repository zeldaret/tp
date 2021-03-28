lbl_80C69A4C:
/* 80C69A4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C69A50  7C 08 02 A6 */	mflr r0
/* 80C69A54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C69A58  4B 5F 96 34 */	b ModuleEpilog
/* 80C69A5C  3C 60 80 C7 */	lis r3, data_80C6A3B4@ha
/* 80C69A60  38 63 A3 B4 */	addi r3, r3, data_80C6A3B4@l
/* 80C69A64  4B 5F 97 2C */	b ModuleDestructorsX
/* 80C69A68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C69A6C  7C 08 03 A6 */	mtlr r0
/* 80C69A70  38 21 00 10 */	addi r1, r1, 0x10
/* 80C69A74  4E 80 00 20 */	blr 
