lbl_80D5670C:
/* 80D5670C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D56710  7C 08 02 A6 */	mflr r0
/* 80D56714  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D56718  4B 50 C9 74 */	b ModuleEpilog
/* 80D5671C  3C 60 80 D5 */	lis r3, data_80D56AF0@ha
/* 80D56720  38 63 6A F0 */	addi r3, r3, data_80D56AF0@l
/* 80D56724  4B 50 CA 6C */	b ModuleDestructorsX
/* 80D56728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5672C  7C 08 03 A6 */	mtlr r0
/* 80D56730  38 21 00 10 */	addi r1, r1, 0x10
/* 80D56734  4E 80 00 20 */	blr 
