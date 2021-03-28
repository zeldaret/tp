lbl_80C6C860:
/* 80C6C860  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6C864  7C 08 02 A6 */	mflr r0
/* 80C6C868  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6C86C  3C 60 80 C7 */	lis r3, data_80C6D4F4@ha
/* 80C6C870  38 63 D4 F4 */	addi r3, r3, data_80C6D4F4@l
/* 80C6C874  4B 5F 68 D8 */	b ModuleConstructorsX
/* 80C6C878  4B 5F 68 10 */	b ModuleProlog
/* 80C6C87C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6C880  7C 08 03 A6 */	mtlr r0
/* 80C6C884  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6C888  4E 80 00 20 */	blr 
