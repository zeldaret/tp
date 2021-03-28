lbl_809AFC60:
/* 809AFC60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AFC64  7C 08 02 A6 */	mflr r0
/* 809AFC68  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AFC6C  3C 60 80 9B */	lis r3, data_809B1834@ha
/* 809AFC70  38 63 18 34 */	addi r3, r3, data_809B1834@l
/* 809AFC74  4B 8B 34 D8 */	b ModuleConstructorsX
/* 809AFC78  4B 8B 34 10 */	b ModuleProlog
/* 809AFC7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AFC80  7C 08 03 A6 */	mtlr r0
/* 809AFC84  38 21 00 10 */	addi r1, r1, 0x10
/* 809AFC88  4E 80 00 20 */	blr 
