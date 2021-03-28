lbl_804C6CE0:
/* 804C6CE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C6CE4  7C 08 02 A6 */	mflr r0
/* 804C6CE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C6CEC  3C 60 80 4D */	lis r3, data_804CC32C@ha
/* 804C6CF0  38 63 C3 2C */	addi r3, r3, data_804CC32C@l
/* 804C6CF4  4B D9 C4 58 */	b ModuleConstructorsX
/* 804C6CF8  4B D9 C3 90 */	b ModuleProlog
/* 804C6CFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C6D00  7C 08 03 A6 */	mtlr r0
/* 804C6D04  38 21 00 10 */	addi r1, r1, 0x10
/* 804C6D08  4E 80 00 20 */	blr 
