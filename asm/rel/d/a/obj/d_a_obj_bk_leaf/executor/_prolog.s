lbl_80BB6060:
/* 80BB6060  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB6064  7C 08 02 A6 */	mflr r0
/* 80BB6068  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB606C  3C 60 80 BB */	lis r3, data_80BB6708@ha
/* 80BB6070  38 63 67 08 */	addi r3, r3, data_80BB6708@l
/* 80BB6074  4B 6A D0 D8 */	b ModuleConstructorsX
/* 80BB6078  4B 6A D0 10 */	b ModuleProlog
/* 80BB607C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB6080  7C 08 03 A6 */	mtlr r0
/* 80BB6084  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB6088  4E 80 00 20 */	blr 
