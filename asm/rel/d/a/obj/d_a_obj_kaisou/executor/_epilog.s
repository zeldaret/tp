lbl_80C3400C:
/* 80C3400C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C34010  7C 08 02 A6 */	mflr r0
/* 80C34014  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C34018  4B 62 F0 74 */	b ModuleEpilog
/* 80C3401C  3C 60 80 C3 */	lis r3, data_80C34EE8@ha
/* 80C34020  38 63 4E E8 */	addi r3, r3, data_80C34EE8@l
/* 80C34024  4B 62 F1 6C */	b ModuleDestructorsX
/* 80C34028  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3402C  7C 08 03 A6 */	mtlr r0
/* 80C34030  38 21 00 10 */	addi r1, r1, 0x10
/* 80C34034  4E 80 00 20 */	blr 
