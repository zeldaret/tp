lbl_80828F40:
/* 80828F40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80828F44  7C 08 02 A6 */	mflr r0
/* 80828F48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80828F4C  3C 60 80 83 */	lis r3, data_8082F1F4@ha
/* 80828F50  38 63 F1 F4 */	addi r3, r3, data_8082F1F4@l
/* 80828F54  4B A3 A1 F8 */	b ModuleConstructorsX
/* 80828F58  4B A3 A1 30 */	b ModuleProlog
/* 80828F5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80828F60  7C 08 03 A6 */	mtlr r0
/* 80828F64  38 21 00 10 */	addi r1, r1, 0x10
/* 80828F68  4E 80 00 20 */	blr 
