lbl_80BC4A40:
/* 80BC4A40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC4A44  7C 08 02 A6 */	mflr r0
/* 80BC4A48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC4A4C  3C 60 80 BC */	lis r3, data_80BC57D0@ha
/* 80BC4A50  38 63 57 D0 */	addi r3, r3, data_80BC57D0@l
/* 80BC4A54  4B 69 E6 F8 */	b ModuleConstructorsX
/* 80BC4A58  4B 69 E6 30 */	b ModuleProlog
/* 80BC4A5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC4A60  7C 08 03 A6 */	mtlr r0
/* 80BC4A64  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC4A68  4E 80 00 20 */	blr 
