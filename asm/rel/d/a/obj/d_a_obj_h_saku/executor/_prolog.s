lbl_80C15440:
/* 80C15440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C15444  7C 08 02 A6 */	mflr r0
/* 80C15448  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1544C  3C 60 80 C1 */	lis r3, data_80C164B4@ha
/* 80C15450  38 63 64 B4 */	addi r3, r3, data_80C164B4@l
/* 80C15454  4B 64 DC F8 */	b ModuleConstructorsX
/* 80C15458  4B 64 DC 30 */	b ModuleProlog
/* 80C1545C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C15460  7C 08 03 A6 */	mtlr r0
/* 80C15464  38 21 00 10 */	addi r1, r1, 0x10
/* 80C15468  4E 80 00 20 */	blr 
