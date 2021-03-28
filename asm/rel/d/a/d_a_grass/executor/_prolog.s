lbl_8051BC60:
/* 8051BC60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051BC64  7C 08 02 A6 */	mflr r0
/* 8051BC68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051BC6C  3C 60 80 52 */	lis r3, data_80523014@ha
/* 8051BC70  38 63 30 14 */	addi r3, r3, data_80523014@l
/* 8051BC74  4B D4 74 D8 */	b ModuleConstructorsX
/* 8051BC78  4B D4 74 10 */	b ModuleProlog
/* 8051BC7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051BC80  7C 08 03 A6 */	mtlr r0
/* 8051BC84  38 21 00 10 */	addi r1, r1, 0x10
/* 8051BC88  4E 80 00 20 */	blr 
