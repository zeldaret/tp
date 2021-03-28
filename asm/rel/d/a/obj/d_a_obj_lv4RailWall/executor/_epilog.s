lbl_80C60A2C:
/* 80C60A2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C60A30  7C 08 02 A6 */	mflr r0
/* 80C60A34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C60A38  4B 60 26 54 */	b ModuleEpilog
/* 80C60A3C  3C 60 80 C6 */	lis r3, data_80C61B34@ha
/* 80C60A40  38 63 1B 34 */	addi r3, r3, data_80C61B34@l
/* 80C60A44  4B 60 27 4C */	b ModuleDestructorsX
/* 80C60A48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C60A4C  7C 08 03 A6 */	mtlr r0
/* 80C60A50  38 21 00 10 */	addi r1, r1, 0x10
/* 80C60A54  4E 80 00 20 */	blr 
