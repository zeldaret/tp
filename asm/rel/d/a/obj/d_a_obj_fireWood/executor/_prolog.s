lbl_80BE7540:
/* 80BE7540  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE7544  7C 08 02 A6 */	mflr r0
/* 80BE7548  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE754C  3C 60 80 BE */	lis r3, data_80BE7FF0@ha
/* 80BE7550  38 63 7F F0 */	addi r3, r3, data_80BE7FF0@l
/* 80BE7554  4B 67 BB F8 */	b ModuleConstructorsX
/* 80BE7558  4B 67 BB 30 */	b ModuleProlog
/* 80BE755C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE7560  7C 08 03 A6 */	mtlr r0
/* 80BE7564  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE7568  4E 80 00 20 */	blr 
