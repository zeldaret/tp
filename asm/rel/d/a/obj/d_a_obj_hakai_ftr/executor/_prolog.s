lbl_80C17420:
/* 80C17420  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C17424  7C 08 02 A6 */	mflr r0
/* 80C17428  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1742C  3C 60 80 C2 */	lis r3, data_80C180B0@ha
/* 80C17430  38 63 80 B0 */	addi r3, r3, data_80C180B0@l
/* 80C17434  4B 64 BD 18 */	b ModuleConstructorsX
/* 80C17438  4B 64 BC 50 */	b ModuleProlog
/* 80C1743C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C17440  7C 08 03 A6 */	mtlr r0
/* 80C17444  38 21 00 10 */	addi r1, r1, 0x10
/* 80C17448  4E 80 00 20 */	blr 
