lbl_804DD8E0:
/* 804DD8E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DD8E4  7C 08 02 A6 */	mflr r0
/* 804DD8E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DD8EC  3C 60 80 4E */	lis r3, data_804DF8AC@ha
/* 804DD8F0  38 63 F8 AC */	addi r3, r3, data_804DF8AC@l
/* 804DD8F4  4B D8 58 58 */	b ModuleConstructorsX
/* 804DD8F8  4B D8 57 90 */	b ModuleProlog
/* 804DD8FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DD900  7C 08 03 A6 */	mtlr r0
/* 804DD904  38 21 00 10 */	addi r1, r1, 0x10
/* 804DD908  4E 80 00 20 */	blr 
