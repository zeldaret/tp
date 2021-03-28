lbl_80CC962C:
/* 80CC962C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC9630  7C 08 02 A6 */	mflr r0
/* 80CC9634  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC9638  4B 59 9A 54 */	b ModuleEpilog
/* 80CC963C  3C 60 80 CD */	lis r3, data_80CCB07C@ha
/* 80CC9640  38 63 B0 7C */	addi r3, r3, data_80CCB07C@l
/* 80CC9644  4B 59 9B 4C */	b ModuleDestructorsX
/* 80CC9648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC964C  7C 08 03 A6 */	mtlr r0
/* 80CC9650  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC9654  4E 80 00 20 */	blr 
