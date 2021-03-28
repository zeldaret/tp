lbl_8058DF8C:
/* 8058DF8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058DF90  7C 08 02 A6 */	mflr r0
/* 8058DF94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058DF98  4B CD 50 F4 */	b ModuleEpilog
/* 8058DF9C  3C 60 80 59 */	lis r3, __destroy_global_chain_reference@ha
/* 8058DFA0  38 63 F1 24 */	addi r3, r3, __destroy_global_chain_reference@l
/* 8058DFA4  4B CD 51 EC */	b ModuleDestructorsX
/* 8058DFA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058DFAC  7C 08 03 A6 */	mtlr r0
/* 8058DFB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8058DFB4  4E 80 00 20 */	blr 
