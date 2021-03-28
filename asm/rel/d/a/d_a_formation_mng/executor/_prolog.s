lbl_808354E0:
/* 808354E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808354E4  7C 08 02 A6 */	mflr r0
/* 808354E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 808354EC  3C 60 80 83 */	lis r3, data_8083789C@ha
/* 808354F0  38 63 78 9C */	addi r3, r3, data_8083789C@l
/* 808354F4  4B A2 DC 58 */	b ModuleConstructorsX
/* 808354F8  4B A2 DB 90 */	b ModuleProlog
/* 808354FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80835500  7C 08 03 A6 */	mtlr r0
/* 80835504  38 21 00 10 */	addi r1, r1, 0x10
/* 80835508  4E 80 00 20 */	blr 
