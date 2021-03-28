lbl_80B9B96C:
/* 80B9B96C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9B970  7C 08 02 A6 */	mflr r0
/* 80B9B974  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9B978  4B 6C 77 14 */	b ModuleEpilog
/* 80B9B97C  3C 60 80 BA */	lis r3, data_80B9C91C@ha
/* 80B9B980  38 63 C9 1C */	addi r3, r3, data_80B9C91C@l
/* 80B9B984  4B 6C 78 0C */	b ModuleDestructorsX
/* 80B9B988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9B98C  7C 08 03 A6 */	mtlr r0
/* 80B9B990  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9B994  4E 80 00 20 */	blr 
