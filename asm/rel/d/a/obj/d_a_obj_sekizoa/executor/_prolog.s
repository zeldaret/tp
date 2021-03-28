lbl_80CCE260:
/* 80CCE260  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCE264  7C 08 02 A6 */	mflr r0
/* 80CCE268  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCE26C  3C 60 80 CD */	lis r3, data_80CD5CE8@ha
/* 80CCE270  38 63 5C E8 */	addi r3, r3, data_80CD5CE8@l
/* 80CCE274  4B 59 4E D8 */	b ModuleConstructorsX
/* 80CCE278  4B 59 4E 10 */	b ModuleProlog
/* 80CCE27C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCE280  7C 08 03 A6 */	mtlr r0
/* 80CCE284  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCE288  4E 80 00 20 */	blr 
