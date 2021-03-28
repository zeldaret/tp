lbl_8070A678:
/* 8070A678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8070A67C  7C 08 02 A6 */	mflr r0
/* 8070A680  90 01 00 14 */	stw r0, 0x14(r1)
/* 8070A684  4B B5 8A 0C */	b ModuleUnresolved
/* 8070A688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8070A68C  7C 08 03 A6 */	mtlr r0
/* 8070A690  38 21 00 10 */	addi r1, r1, 0x10
/* 8070A694  4E 80 00 20 */	blr 
