lbl_80CFE04C:
/* 80CFE04C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFE050  7C 08 02 A6 */	mflr r0
/* 80CFE054  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFE058  4B 56 50 34 */	b ModuleEpilog
/* 80CFE05C  3C 60 80 D0 */	lis r3, data_80CFFBF0@ha
/* 80CFE060  38 63 FB F0 */	addi r3, r3, data_80CFFBF0@l
/* 80CFE064  4B 56 51 2C */	b ModuleDestructorsX
/* 80CFE068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFE06C  7C 08 03 A6 */	mtlr r0
/* 80CFE070  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFE074  4E 80 00 20 */	blr 
