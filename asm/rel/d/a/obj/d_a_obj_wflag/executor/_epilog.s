lbl_80D36B4C:
/* 80D36B4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D36B50  7C 08 02 A6 */	mflr r0
/* 80D36B54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D36B58  4B 52 C5 34 */	b ModuleEpilog
/* 80D36B5C  3C 60 80 D3 */	lis r3, data_80D37888@ha
/* 80D36B60  38 63 78 88 */	addi r3, r3, data_80D37888@l
/* 80D36B64  4B 52 C6 2C */	b ModuleDestructorsX
/* 80D36B68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D36B6C  7C 08 03 A6 */	mtlr r0
/* 80D36B70  38 21 00 10 */	addi r1, r1, 0x10
/* 80D36B74  4E 80 00 20 */	blr 
