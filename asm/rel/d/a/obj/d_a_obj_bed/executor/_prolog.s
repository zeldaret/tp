lbl_80BAD580:
/* 80BAD580  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAD584  7C 08 02 A6 */	mflr r0
/* 80BAD588  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAD58C  3C 60 80 BB */	lis r3, data_80BAE154@ha
/* 80BAD590  38 63 E1 54 */	addi r3, r3, data_80BAE154@l
/* 80BAD594  4B 6B 5B B8 */	b ModuleConstructorsX
/* 80BAD598  4B 6B 5A F0 */	b ModuleProlog
/* 80BAD59C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAD5A0  7C 08 03 A6 */	mtlr r0
/* 80BAD5A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAD5A8  4E 80 00 20 */	blr 
