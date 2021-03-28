lbl_80C10BAC:
/* 80C10BAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C10BB0  7C 08 02 A6 */	mflr r0
/* 80C10BB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C10BB8  4B 65 24 D4 */	b ModuleEpilog
/* 80C10BBC  3C 60 80 C1 */	lis r3, data_80C10FAC@ha
/* 80C10BC0  38 63 0F AC */	addi r3, r3, data_80C10FAC@l
/* 80C10BC4  4B 65 25 CC */	b ModuleDestructorsX
/* 80C10BC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C10BCC  7C 08 03 A6 */	mtlr r0
/* 80C10BD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C10BD4  4E 80 00 20 */	blr 
