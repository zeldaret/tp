lbl_80D26EC0:
/* 80D26EC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D26EC4  7C 08 02 A6 */	mflr r0
/* 80D26EC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D26ECC  3C 60 80 D3 */	lis r3, data_80D295AC@ha
/* 80D26ED0  38 63 95 AC */	addi r3, r3, data_80D295AC@l
/* 80D26ED4  4B 53 C2 78 */	b ModuleConstructorsX
/* 80D26ED8  4B 53 C1 B0 */	b ModuleProlog
/* 80D26EDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D26EE0  7C 08 03 A6 */	mtlr r0
/* 80D26EE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D26EE8  4E 80 00 20 */	blr 
