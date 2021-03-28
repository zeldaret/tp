lbl_80C4EA2C:
/* 80C4EA2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4EA30  7C 08 02 A6 */	mflr r0
/* 80C4EA34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4EA38  4B 61 46 54 */	b ModuleEpilog
/* 80C4EA3C  3C 60 80 C5 */	lis r3, data_80C4F6B4@ha
/* 80C4EA40  38 63 F6 B4 */	addi r3, r3, data_80C4F6B4@l
/* 80C4EA44  4B 61 47 4C */	b ModuleDestructorsX
/* 80C4EA48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4EA4C  7C 08 03 A6 */	mtlr r0
/* 80C4EA50  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4EA54  4E 80 00 20 */	blr 
