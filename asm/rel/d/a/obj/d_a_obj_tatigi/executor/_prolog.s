lbl_80D07960:
/* 80D07960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D07964  7C 08 02 A6 */	mflr r0
/* 80D07968  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0796C  3C 60 80 D1 */	lis r3, data_80D085B8@ha
/* 80D07970  38 63 85 B8 */	addi r3, r3, data_80D085B8@l
/* 80D07974  4B 55 B7 D8 */	b ModuleConstructorsX
/* 80D07978  4B 55 B7 10 */	b ModuleProlog
/* 80D0797C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D07980  7C 08 03 A6 */	mtlr r0
/* 80D07984  38 21 00 10 */	addi r1, r1, 0x10
/* 80D07988  4E 80 00 20 */	blr 
