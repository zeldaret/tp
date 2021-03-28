lbl_805C7A40:
/* 805C7A40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C7A44  7C 08 02 A6 */	mflr r0
/* 805C7A48  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C7A4C  3C 60 80 5D */	lis r3, data_805CAD48@ha
/* 805C7A50  38 63 AD 48 */	addi r3, r3, data_805CAD48@l
/* 805C7A54  4B C9 B6 F8 */	b ModuleConstructorsX
/* 805C7A58  4B C9 B6 30 */	b ModuleProlog
/* 805C7A5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C7A60  7C 08 03 A6 */	mtlr r0
/* 805C7A64  38 21 00 10 */	addi r1, r1, 0x10
/* 805C7A68  4E 80 00 20 */	blr 
