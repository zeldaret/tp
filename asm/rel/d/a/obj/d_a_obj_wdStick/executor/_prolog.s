lbl_80D31A60:
/* 80D31A60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D31A64  7C 08 02 A6 */	mflr r0
/* 80D31A68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D31A6C  3C 60 80 D3 */	lis r3, data_80D34124@ha
/* 80D31A70  38 63 41 24 */	addi r3, r3, data_80D34124@l
/* 80D31A74  4B 53 16 D8 */	b ModuleConstructorsX
/* 80D31A78  4B 53 16 10 */	b ModuleProlog
/* 80D31A7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D31A80  7C 08 03 A6 */	mtlr r0
/* 80D31A84  38 21 00 10 */	addi r1, r1, 0x10
/* 80D31A88  4E 80 00 20 */	blr 
