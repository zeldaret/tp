lbl_80CDE4CC:
/* 80CDE4CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDE4D0  7C 08 02 A6 */	mflr r0
/* 80CDE4D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDE4D8  4B 58 4B B4 */	b ModuleEpilog
/* 80CDE4DC  3C 60 80 CE */	lis r3, data_80CDEEF0@ha
/* 80CDE4E0  38 63 EE F0 */	addi r3, r3, data_80CDEEF0@l
/* 80CDE4E4  4B 58 4C AC */	b ModuleDestructorsX
/* 80CDE4E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDE4EC  7C 08 03 A6 */	mtlr r0
/* 80CDE4F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDE4F4  4E 80 00 20 */	blr 
