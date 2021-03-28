lbl_80CD8540:
/* 80CD8540  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD8544  7C 08 02 A6 */	mflr r0
/* 80CD8548  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD854C  3C 60 80 CE */	lis r3, data_80CD9588@ha
/* 80CD8550  38 63 95 88 */	addi r3, r3, data_80CD9588@l
/* 80CD8554  4B 58 AB F8 */	b ModuleConstructorsX
/* 80CD8558  4B 58 AB 30 */	b ModuleProlog
/* 80CD855C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD8560  7C 08 03 A6 */	mtlr r0
/* 80CD8564  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD8568  4E 80 00 20 */	blr 
