lbl_805A566C:
/* 805A566C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A5670  7C 08 02 A6 */	mflr r0
/* 805A5674  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A5678  4B CB DA 14 */	b ModuleEpilog
/* 805A567C  3C 60 80 5A */	lis r3, data_805A6030@ha
/* 805A5680  38 63 60 30 */	addi r3, r3, data_805A6030@l
/* 805A5684  4B CB DB 0C */	b ModuleDestructorsX
/* 805A5688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A568C  7C 08 03 A6 */	mtlr r0
/* 805A5690  38 21 00 10 */	addi r1, r1, 0x10
/* 805A5694  4E 80 00 20 */	blr 
