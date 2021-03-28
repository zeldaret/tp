lbl_80B42E60:
/* 80B42E60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B42E64  7C 08 02 A6 */	mflr r0
/* 80B42E68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B42E6C  3C 60 80 B4 */	lis r3, data_80B46038@ha
/* 80B42E70  38 63 60 38 */	addi r3, r3, data_80B46038@l
/* 80B42E74  4B 72 02 D8 */	b ModuleConstructorsX
/* 80B42E78  4B 72 02 10 */	b ModuleProlog
/* 80B42E7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B42E80  7C 08 03 A6 */	mtlr r0
/* 80B42E84  38 21 00 10 */	addi r1, r1, 0x10
/* 80B42E88  4E 80 00 20 */	blr 
