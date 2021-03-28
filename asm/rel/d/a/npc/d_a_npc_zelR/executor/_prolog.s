lbl_80B6ED40:
/* 80B6ED40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6ED44  7C 08 02 A6 */	mflr r0
/* 80B6ED48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6ED4C  3C 60 80 B7 */	lis r3, data_80B71ACC@ha
/* 80B6ED50  38 63 1A CC */	addi r3, r3, data_80B71ACC@l
/* 80B6ED54  4B 6F 43 F8 */	b ModuleConstructorsX
/* 80B6ED58  4B 6F 43 30 */	b ModuleProlog
/* 80B6ED5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6ED60  7C 08 03 A6 */	mtlr r0
/* 80B6ED64  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6ED68  4E 80 00 20 */	blr 
