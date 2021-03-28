lbl_8045CE8C:
/* 8045CE8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045CE90  7C 08 02 A6 */	mflr r0
/* 8045CE94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045CE98  4B E0 61 F4 */	b ModuleEpilog
/* 8045CE9C  3C 60 80 46 */	lis r3, data_8045D28C@ha
/* 8045CEA0  38 63 D2 8C */	addi r3, r3, data_8045D28C@l
/* 8045CEA4  4B E0 62 EC */	b ModuleDestructorsX
/* 8045CEA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045CEAC  7C 08 03 A6 */	mtlr r0
/* 8045CEB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8045CEB4  4E 80 00 20 */	blr 
