lbl_80A2A860:
/* 80A2A860  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A2A864  7C 08 02 A6 */	mflr r0
/* 80A2A868  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A2A86C  3C 60 80 A3 */	lis r3, data_80A2A8D8@ha
/* 80A2A870  38 63 A8 D8 */	addi r3, r3, data_80A2A8D8@l
/* 80A2A874  4B 83 88 D8 */	b ModuleConstructorsX
/* 80A2A878  4B 83 88 10 */	b ModuleProlog
/* 80A2A87C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A2A880  7C 08 03 A6 */	mtlr r0
/* 80A2A884  38 21 00 10 */	addi r1, r1, 0x10
/* 80A2A888  4E 80 00 20 */	blr 
