lbl_80BC6D40:
/* 80BC6D40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC6D44  7C 08 02 A6 */	mflr r0
/* 80BC6D48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC6D4C  3C 60 80 BC */	lis r3, data_80BC7D10@ha
/* 80BC6D50  38 63 7D 10 */	addi r3, r3, data_80BC7D10@l
/* 80BC6D54  4B 69 C3 F8 */	b ModuleConstructorsX
/* 80BC6D58  4B 69 C3 30 */	b ModuleProlog
/* 80BC6D5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC6D60  7C 08 03 A6 */	mtlr r0
/* 80BC6D64  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC6D68  4E 80 00 20 */	blr 
