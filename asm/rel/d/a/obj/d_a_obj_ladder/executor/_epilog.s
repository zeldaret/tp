lbl_8058D10C:
/* 8058D10C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058D110  7C 08 02 A6 */	mflr r0
/* 8058D114  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058D118  4B CD 5F 74 */	b ModuleEpilog
/* 8058D11C  3C 60 80 59 */	lis r3, data_8058DD4C@ha
/* 8058D120  38 63 DD 4C */	addi r3, r3, data_8058DD4C@l
/* 8058D124  4B CD 60 6C */	b ModuleDestructorsX
/* 8058D128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058D12C  7C 08 03 A6 */	mtlr r0
/* 8058D130  38 21 00 10 */	addi r1, r1, 0x10
/* 8058D134  4E 80 00 20 */	blr 
