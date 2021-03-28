lbl_80A2A88C:
/* 80A2A88C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A2A890  7C 08 02 A6 */	mflr r0
/* 80A2A894  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A2A898  4B 83 87 F4 */	b ModuleEpilog
/* 80A2A89C  3C 60 80 A3 */	lis r3, data_80A2A8DC@ha
/* 80A2A8A0  38 63 A8 DC */	addi r3, r3, data_80A2A8DC@l
/* 80A2A8A4  4B 83 88 EC */	b ModuleDestructorsX
/* 80A2A8A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A2A8AC  7C 08 03 A6 */	mtlr r0
/* 80A2A8B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A2A8B4  4E 80 00 20 */	blr 
