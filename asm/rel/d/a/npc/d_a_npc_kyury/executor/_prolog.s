lbl_80A5FFE0:
/* 80A5FFE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A5FFE4  7C 08 02 A6 */	mflr r0
/* 80A5FFE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A5FFEC  3C 60 80 A6 */	lis r3, data_80A63898@ha
/* 80A5FFF0  38 63 38 98 */	addi r3, r3, data_80A63898@l
/* 80A5FFF4  4B 80 31 58 */	b ModuleConstructorsX
/* 80A5FFF8  4B 80 30 90 */	b ModuleProlog
/* 80A5FFFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A60000  7C 08 03 A6 */	mtlr r0
/* 80A60004  38 21 00 10 */	addi r1, r1, 0x10
/* 80A60008  4E 80 00 20 */	blr 
