lbl_8082F860:
/* 8082F860  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8082F864  7C 08 02 A6 */	mflr r0
/* 8082F868  90 01 00 14 */	stw r0, 0x14(r1)
/* 8082F86C  3C 60 80 83 */	lis r3, data_80832CE4@ha
/* 8082F870  38 63 2C E4 */	addi r3, r3, data_80832CE4@l
/* 8082F874  4B A3 38 D8 */	b ModuleConstructorsX
/* 8082F878  4B A3 38 10 */	b ModuleProlog
/* 8082F87C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8082F880  7C 08 03 A6 */	mtlr r0
/* 8082F884  38 21 00 10 */	addi r1, r1, 0x10
/* 8082F888  4E 80 00 20 */	blr 
