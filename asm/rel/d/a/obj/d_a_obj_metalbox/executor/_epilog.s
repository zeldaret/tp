lbl_80592E4C:
/* 80592E4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80592E50  7C 08 02 A6 */	mflr r0
/* 80592E54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80592E58  4B CD 02 34 */	b ModuleEpilog
/* 80592E5C  3C 60 80 59 */	lis r3, data_80593468@ha
/* 80592E60  38 63 34 68 */	addi r3, r3, data_80593468@l
/* 80592E64  4B CD 03 2C */	b ModuleDestructorsX
/* 80592E68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80592E6C  7C 08 03 A6 */	mtlr r0
/* 80592E70  38 21 00 10 */	addi r1, r1, 0x10
/* 80592E74  4E 80 00 20 */	blr 
