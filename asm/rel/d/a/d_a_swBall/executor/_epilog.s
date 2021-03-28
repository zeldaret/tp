lbl_80D4DF8C:
/* 80D4DF8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4DF90  7C 08 02 A6 */	mflr r0
/* 80D4DF94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4DF98  4B 51 50 F4 */	b ModuleEpilog
/* 80D4DF9C  3C 60 80 D5 */	lis r3, data_80D4E994@ha
/* 80D4DFA0  38 63 E9 94 */	addi r3, r3, data_80D4E994@l
/* 80D4DFA4  4B 51 51 EC */	b ModuleDestructorsX
/* 80D4DFA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4DFAC  7C 08 03 A6 */	mtlr r0
/* 80D4DFB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4DFB4  4E 80 00 20 */	blr 
