lbl_80A70B80:
/* 80A70B80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A70B84  7C 08 02 A6 */	mflr r0
/* 80A70B88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A70B8C  3C 60 80 A7 */	lis r3, data_80A739AC@ha
/* 80A70B90  38 63 39 AC */	addi r3, r3, data_80A739AC@l
/* 80A70B94  4B 7F 25 B8 */	b ModuleConstructorsX
/* 80A70B98  4B 7F 24 F0 */	b ModuleProlog
/* 80A70B9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A70BA0  7C 08 03 A6 */	mtlr r0
/* 80A70BA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A70BA8  4E 80 00 20 */	blr 
