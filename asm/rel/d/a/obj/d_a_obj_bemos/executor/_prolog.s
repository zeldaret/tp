lbl_80BAE280:
/* 80BAE280  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAE284  7C 08 02 A6 */	mflr r0
/* 80BAE288  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAE28C  3C 60 80 BB */	lis r3, data_80BB37A4@ha
/* 80BAE290  38 63 37 A4 */	addi r3, r3, data_80BB37A4@l
/* 80BAE294  4B 6B 4E B8 */	b ModuleConstructorsX
/* 80BAE298  4B 6B 4D F0 */	b ModuleProlog
/* 80BAE29C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAE2A0  7C 08 03 A6 */	mtlr r0
/* 80BAE2A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAE2A8  4E 80 00 20 */	blr 
