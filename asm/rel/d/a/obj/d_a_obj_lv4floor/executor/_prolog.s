lbl_80C67780:
/* 80C67780  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C67784  7C 08 02 A6 */	mflr r0
/* 80C67788  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6778C  3C 60 80 C6 */	lis r3, data_80C67D78@ha
/* 80C67790  38 63 7D 78 */	addi r3, r3, data_80C67D78@l
/* 80C67794  4B 5F B9 B8 */	b ModuleConstructorsX
/* 80C67798  4B 5F B8 F0 */	b ModuleProlog
/* 80C6779C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C677A0  7C 08 03 A6 */	mtlr r0
/* 80C677A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C677A8  4E 80 00 20 */	blr 
