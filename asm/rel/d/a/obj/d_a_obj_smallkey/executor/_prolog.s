lbl_80CD9740:
/* 80CD9740  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD9744  7C 08 02 A6 */	mflr r0
/* 80CD9748  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD974C  3C 60 80 CE */	lis r3, data_80CDB7EC@ha
/* 80CD9750  38 63 B7 EC */	addi r3, r3, data_80CDB7EC@l
/* 80CD9754  4B 58 99 F8 */	b ModuleConstructorsX
/* 80CD9758  4B 58 99 30 */	b ModuleProlog
/* 80CD975C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD9760  7C 08 03 A6 */	mtlr r0
/* 80CD9764  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD9768  4E 80 00 20 */	blr 
