lbl_805A1F40:
/* 805A1F40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A1F44  7C 08 02 A6 */	mflr r0
/* 805A1F48  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A1F4C  3C 60 80 5A */	lis r3, data_805A2518@ha
/* 805A1F50  38 63 25 18 */	addi r3, r3, data_805A2518@l
/* 805A1F54  4B CC 11 F8 */	b ModuleConstructorsX
/* 805A1F58  4B CC 11 30 */	b ModuleProlog
/* 805A1F5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A1F60  7C 08 03 A6 */	mtlr r0
/* 805A1F64  38 21 00 10 */	addi r1, r1, 0x10
/* 805A1F68  4E 80 00 20 */	blr 
