lbl_805769E0:
/* 805769E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805769E4  7C 08 02 A6 */	mflr r0
/* 805769E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805769EC  3C 60 80 58 */	lis r3, data_80578A80@ha
/* 805769F0  38 63 8A 80 */	addi r3, r3, data_80578A80@l
/* 805769F4  4B CE C7 58 */	b ModuleConstructorsX
/* 805769F8  4B CE C6 90 */	b ModuleProlog
/* 805769FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80576A00  7C 08 03 A6 */	mtlr r0
/* 80576A04  38 21 00 10 */	addi r1, r1, 0x10
/* 80576A08  4E 80 00 20 */	blr 
