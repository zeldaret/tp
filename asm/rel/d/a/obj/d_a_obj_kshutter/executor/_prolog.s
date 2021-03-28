lbl_80C47A40:
/* 80C47A40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C47A44  7C 08 02 A6 */	mflr r0
/* 80C47A48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C47A4C  3C 60 80 C5 */	lis r3, data_80C49CA0@ha
/* 80C47A50  38 63 9C A0 */	addi r3, r3, data_80C49CA0@l
/* 80C47A54  4B 61 B6 F8 */	b ModuleConstructorsX
/* 80C47A58  4B 61 B6 30 */	b ModuleProlog
/* 80C47A5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C47A60  7C 08 03 A6 */	mtlr r0
/* 80C47A64  38 21 00 10 */	addi r1, r1, 0x10
/* 80C47A68  4E 80 00 20 */	blr 
