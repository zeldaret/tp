lbl_80457BAC:
/* 80457BAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80457BB0  7C 08 02 A6 */	mflr r0
/* 80457BB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80457BB8  4B E0 B4 D4 */	b ModuleEpilog
/* 80457BBC  3C 60 80 46 */	lis r3, data_80459370@ha
/* 80457BC0  38 63 93 70 */	addi r3, r3, data_80459370@l
/* 80457BC4  4B E0 B5 CC */	b ModuleDestructorsX
/* 80457BC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80457BCC  7C 08 03 A6 */	mtlr r0
/* 80457BD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80457BD4  4E 80 00 20 */	blr 
