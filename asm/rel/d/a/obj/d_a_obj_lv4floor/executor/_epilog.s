lbl_80C677AC:
/* 80C677AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C677B0  7C 08 02 A6 */	mflr r0
/* 80C677B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C677B8  4B 5F B8 D4 */	b ModuleEpilog
/* 80C677BC  3C 60 80 C6 */	lis r3, data_80C67D7C@ha
/* 80C677C0  38 63 7D 7C */	addi r3, r3, data_80C67D7C@l
/* 80C677C4  4B 5F B9 CC */	b ModuleDestructorsX
/* 80C677C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C677CC  7C 08 03 A6 */	mtlr r0
/* 80C677D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C677D4  4E 80 00 20 */	blr 
