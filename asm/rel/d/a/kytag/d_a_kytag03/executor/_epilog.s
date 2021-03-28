lbl_80855E8C:
/* 80855E8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80855E90  7C 08 02 A6 */	mflr r0
/* 80855E94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80855E98  4B A0 D1 F4 */	b ModuleEpilog
/* 80855E9C  3C 60 80 85 */	lis r3, data_8085764C@ha
/* 80855EA0  38 63 76 4C */	addi r3, r3, data_8085764C@l
/* 80855EA4  4B A0 D2 EC */	b ModuleDestructorsX
/* 80855EA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80855EAC  7C 08 03 A6 */	mtlr r0
/* 80855EB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80855EB4  4E 80 00 20 */	blr 
