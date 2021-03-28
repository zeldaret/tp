lbl_8057F96C:
/* 8057F96C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057F970  7C 08 02 A6 */	mflr r0
/* 8057F974  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057F978  4B CE 37 14 */	b ModuleEpilog
/* 8057F97C  3C 60 80 58 */	lis r3, data_805814A8@ha
/* 8057F980  38 63 14 A8 */	addi r3, r3, data_805814A8@l
/* 8057F984  4B CE 38 0C */	b ModuleDestructorsX
/* 8057F988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057F98C  7C 08 03 A6 */	mtlr r0
/* 8057F990  38 21 00 10 */	addi r1, r1, 0x10
/* 8057F994  4E 80 00 20 */	blr 
