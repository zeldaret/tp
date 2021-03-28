lbl_805A3A40:
/* 805A3A40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A3A44  7C 08 02 A6 */	mflr r0
/* 805A3A48  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A3A4C  3C 60 80 5A */	lis r3, data_805A4230@ha
/* 805A3A50  38 63 42 30 */	addi r3, r3, data_805A4230@l
/* 805A3A54  4B CB F6 F8 */	b ModuleConstructorsX
/* 805A3A58  4B CB F6 30 */	b ModuleProlog
/* 805A3A5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A3A60  7C 08 03 A6 */	mtlr r0
/* 805A3A64  38 21 00 10 */	addi r1, r1, 0x10
/* 805A3A68  4E 80 00 20 */	blr 
