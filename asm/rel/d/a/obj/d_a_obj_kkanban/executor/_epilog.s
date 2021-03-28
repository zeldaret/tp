lbl_80C4664C:
/* 80C4664C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C46650  7C 08 02 A6 */	mflr r0
/* 80C46654  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C46658  4B 61 CA 34 */	b ModuleEpilog
/* 80C4665C  3C 60 80 C4 */	lis r3, data_80C46F50@ha
/* 80C46660  38 63 6F 50 */	addi r3, r3, data_80C46F50@l
/* 80C46664  4B 61 CB 2C */	b ModuleDestructorsX
/* 80C46668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4666C  7C 08 03 A6 */	mtlr r0
/* 80C46670  38 21 00 10 */	addi r1, r1, 0x10
/* 80C46674  4E 80 00 20 */	blr 
