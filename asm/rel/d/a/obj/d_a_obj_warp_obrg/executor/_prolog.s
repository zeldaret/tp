lbl_80D29940:
/* 80D29940  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D29944  7C 08 02 A6 */	mflr r0
/* 80D29948  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2994C  3C 60 80 D3 */	lis r3, data_80D2B7F0@ha
/* 80D29950  38 63 B7 F0 */	addi r3, r3, data_80D2B7F0@l
/* 80D29954  4B 53 97 F8 */	b ModuleConstructorsX
/* 80D29958  4B 53 97 30 */	b ModuleProlog
/* 80D2995C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D29960  7C 08 03 A6 */	mtlr r0
/* 80D29964  38 21 00 10 */	addi r1, r1, 0x10
/* 80D29968  4E 80 00 20 */	blr 
