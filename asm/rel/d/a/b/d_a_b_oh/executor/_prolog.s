lbl_8061B640:
/* 8061B640  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061B644  7C 08 02 A6 */	mflr r0
/* 8061B648  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061B64C  3C 60 80 62 */	lis r3, data_8061D9C0@ha
/* 8061B650  38 63 D9 C0 */	addi r3, r3, data_8061D9C0@l
/* 8061B654  4B C4 7A F8 */	b ModuleConstructorsX
/* 8061B658  4B C4 7A 30 */	b ModuleProlog
/* 8061B65C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061B660  7C 08 03 A6 */	mtlr r0
/* 8061B664  38 21 00 10 */	addi r1, r1, 0x10
/* 8061B668  4E 80 00 20 */	blr 
