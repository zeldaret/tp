lbl_80D56B60:
/* 80D56B60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D56B64  7C 08 02 A6 */	mflr r0
/* 80D56B68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D56B6C  3C 60 80 D6 */	lis r3, data_80D585B0@ha
/* 80D56B70  38 63 85 B0 */	addi r3, r3, data_80D585B0@l
/* 80D56B74  4B 50 C5 D8 */	b ModuleConstructorsX
/* 80D56B78  4B 50 C5 10 */	b ModuleProlog
/* 80D56B7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D56B80  7C 08 03 A6 */	mtlr r0
/* 80D56B84  38 21 00 10 */	addi r1, r1, 0x10
/* 80D56B88  4E 80 00 20 */	blr 
