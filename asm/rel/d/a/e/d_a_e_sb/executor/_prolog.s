lbl_80781560:
/* 80781560  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80781564  7C 08 02 A6 */	mflr r0
/* 80781568  90 01 00 14 */	stw r0, 0x14(r1)
/* 8078156C  3C 60 80 78 */	lis r3, data_80784D54@ha
/* 80781570  38 63 4D 54 */	addi r3, r3, data_80784D54@l
/* 80781574  4B AE 1B D8 */	b ModuleConstructorsX
/* 80781578  4B AE 1B 10 */	b ModuleProlog
/* 8078157C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80781580  7C 08 03 A6 */	mtlr r0
/* 80781584  38 21 00 10 */	addi r1, r1, 0x10
/* 80781588  4E 80 00 20 */	blr 
