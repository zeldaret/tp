lbl_80C98A60:
/* 80C98A60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C98A64  7C 08 02 A6 */	mflr r0
/* 80C98A68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C98A6C  3C 60 80 CA */	lis r3, data_80C99750@ha
/* 80C98A70  38 63 97 50 */	addi r3, r3, data_80C99750@l
/* 80C98A74  4B 5C A6 D8 */	b ModuleConstructorsX
/* 80C98A78  4B 5C A6 10 */	b ModuleProlog
/* 80C98A7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C98A80  7C 08 03 A6 */	mtlr r0
/* 80C98A84  38 21 00 10 */	addi r1, r1, 0x10
/* 80C98A88  4E 80 00 20 */	blr 
