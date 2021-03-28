lbl_80D4DF60:
/* 80D4DF60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4DF64  7C 08 02 A6 */	mflr r0
/* 80D4DF68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4DF6C  3C 60 80 D5 */	lis r3, data_80D4E990@ha
/* 80D4DF70  38 63 E9 90 */	addi r3, r3, data_80D4E990@l
/* 80D4DF74  4B 51 51 D8 */	b ModuleConstructorsX
/* 80D4DF78  4B 51 51 10 */	b ModuleProlog
/* 80D4DF7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4DF80  7C 08 03 A6 */	mtlr r0
/* 80D4DF84  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4DF88  4E 80 00 20 */	blr 
