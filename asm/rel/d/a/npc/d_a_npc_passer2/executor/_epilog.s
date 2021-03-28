lbl_80AA748C:
/* 80AA748C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA7490  7C 08 02 A6 */	mflr r0
/* 80AA7494  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA7498  4B 7B BB F4 */	b ModuleEpilog
/* 80AA749C  3C 60 80 AB */	lis r3, data_80AA8A14@ha
/* 80AA74A0  38 63 8A 14 */	addi r3, r3, data_80AA8A14@l
/* 80AA74A4  4B 7B BC EC */	b ModuleDestructorsX
/* 80AA74A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA74AC  7C 08 03 A6 */	mtlr r0
/* 80AA74B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA74B4  4E 80 00 20 */	blr 
