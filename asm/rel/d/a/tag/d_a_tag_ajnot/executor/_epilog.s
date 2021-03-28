lbl_805A260C:
/* 805A260C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A2610  7C 08 02 A6 */	mflr r0
/* 805A2614  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A2618  4B CC 0A 74 */	b ModuleEpilog
/* 805A261C  3C 60 80 5A */	lis r3, data_805A287C@ha
/* 805A2620  38 63 28 7C */	addi r3, r3, data_805A287C@l
/* 805A2624  4B CC 0B 6C */	b ModuleDestructorsX
/* 805A2628  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A262C  7C 08 03 A6 */	mtlr r0
/* 805A2630  38 21 00 10 */	addi r1, r1, 0x10
/* 805A2634  4E 80 00 20 */	blr 
