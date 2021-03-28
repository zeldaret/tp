lbl_80AB5BC0:
/* 80AB5BC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB5BC4  7C 08 02 A6 */	mflr r0
/* 80AB5BC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB5BCC  3C 60 80 AC */	lis r3, data_80AB8EB4@ha
/* 80AB5BD0  38 63 8E B4 */	addi r3, r3, data_80AB8EB4@l
/* 80AB5BD4  4B 7A D5 78 */	b ModuleConstructorsX
/* 80AB5BD8  4B 7A D4 B0 */	b ModuleProlog
/* 80AB5BDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB5BE0  7C 08 03 A6 */	mtlr r0
/* 80AB5BE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB5BE8  4E 80 00 20 */	blr 
