lbl_80593540:
/* 80593540  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80593544  7C 08 02 A6 */	mflr r0
/* 80593548  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059354C  3C 60 80 59 */	lis r3, data_80593E40@ha
/* 80593550  38 63 3E 40 */	addi r3, r3, data_80593E40@l
/* 80593554  4B CC FB F8 */	b ModuleConstructorsX
/* 80593558  4B CC FB 30 */	b ModuleProlog
/* 8059355C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80593560  7C 08 03 A6 */	mtlr r0
/* 80593564  38 21 00 10 */	addi r1, r1, 0x10
/* 80593568  4E 80 00 20 */	blr 
