lbl_80CB2860:
/* 80CB2860  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB2864  7C 08 02 A6 */	mflr r0
/* 80CB2868  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB286C  3C 60 80 CB */	lis r3, data_80CB3ED8@ha
/* 80CB2870  38 63 3E D8 */	addi r3, r3, data_80CB3ED8@l
/* 80CB2874  4B 5B 08 D8 */	b ModuleConstructorsX
/* 80CB2878  4B 5B 08 10 */	b ModuleProlog
/* 80CB287C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB2880  7C 08 03 A6 */	mtlr r0
/* 80CB2884  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB2888  4E 80 00 20 */	blr 
