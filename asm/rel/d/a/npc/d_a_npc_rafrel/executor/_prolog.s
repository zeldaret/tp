lbl_80AB9540:
/* 80AB9540  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB9544  7C 08 02 A6 */	mflr r0
/* 80AB9548  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB954C  3C 60 80 AC */	lis r3, data_80ABF9CC@ha
/* 80AB9550  38 63 F9 CC */	addi r3, r3, data_80ABF9CC@l
/* 80AB9554  4B 7A 9B F8 */	b ModuleConstructorsX
/* 80AB9558  4B 7A 9B 30 */	b ModuleProlog
/* 80AB955C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB9560  7C 08 03 A6 */	mtlr r0
/* 80AB9564  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB9568  4E 80 00 20 */	blr 
