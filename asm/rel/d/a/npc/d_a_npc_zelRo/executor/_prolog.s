lbl_80B71EC0:
/* 80B71EC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B71EC4  7C 08 02 A6 */	mflr r0
/* 80B71EC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B71ECC  3C 60 80 B7 */	lis r3, data_80B74C48@ha
/* 80B71ED0  38 63 4C 48 */	addi r3, r3, data_80B74C48@l
/* 80B71ED4  4B 6F 12 78 */	b ModuleConstructorsX
/* 80B71ED8  4B 6F 11 B0 */	b ModuleProlog
/* 80B71EDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B71EE0  7C 08 03 A6 */	mtlr r0
/* 80B71EE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B71EE8  4E 80 00 20 */	blr 
