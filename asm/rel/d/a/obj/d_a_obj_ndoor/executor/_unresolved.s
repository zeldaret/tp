lbl_80CA3518:
/* 80CA3518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA351C  7C 08 02 A6 */	mflr r0
/* 80CA3520  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA3524  4B 5B FB 6C */	b ModuleUnresolved
/* 80CA3528  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA352C  7C 08 03 A6 */	mtlr r0
/* 80CA3530  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA3534  4E 80 00 20 */	blr 
