lbl_80699EEC:
/* 80699EEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80699EF0  7C 08 02 A6 */	mflr r0
/* 80699EF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80699EF8  4B BC 91 94 */	b ModuleEpilog
/* 80699EFC  3C 60 80 6A */	lis r3, data_8069A8C8@ha
/* 80699F00  38 63 A8 C8 */	addi r3, r3, data_8069A8C8@l
/* 80699F04  4B BC 92 8C */	b ModuleDestructorsX
/* 80699F08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80699F0C  7C 08 03 A6 */	mtlr r0
/* 80699F10  38 21 00 10 */	addi r1, r1, 0x10
/* 80699F14  4E 80 00 20 */	blr 
