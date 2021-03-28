lbl_8067C6E0:
/* 8067C6E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8067C6E4  7C 08 02 A6 */	mflr r0
/* 8067C6E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067C6EC  3C 60 80 68 */	lis r3, data_8067E870@ha
/* 8067C6F0  38 63 E8 70 */	addi r3, r3, data_8067E870@l
/* 8067C6F4  4B BE 6A 58 */	b ModuleConstructorsX
/* 8067C6F8  4B BE 69 90 */	b ModuleProlog
/* 8067C6FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8067C700  7C 08 03 A6 */	mtlr r0
/* 8067C704  38 21 00 10 */	addi r1, r1, 0x10
/* 8067C708  4E 80 00 20 */	blr 
