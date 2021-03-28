lbl_805ED860:
/* 805ED860  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805ED864  7C 08 02 A6 */	mflr r0
/* 805ED868  90 01 00 14 */	stw r0, 0x14(r1)
/* 805ED86C  3C 60 80 5F */	lis r3, data_805F4174@ha
/* 805ED870  38 63 41 74 */	addi r3, r3, data_805F4174@l
/* 805ED874  4B C7 58 D8 */	b ModuleConstructorsX
/* 805ED878  4B C7 58 10 */	b ModuleProlog
/* 805ED87C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805ED880  7C 08 03 A6 */	mtlr r0
/* 805ED884  38 21 00 10 */	addi r1, r1, 0x10
/* 805ED888  4E 80 00 20 */	blr 
