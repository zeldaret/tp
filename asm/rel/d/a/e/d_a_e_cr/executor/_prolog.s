lbl_80697F20:
/* 80697F20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80697F24  7C 08 02 A6 */	mflr r0
/* 80697F28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80697F2C  3C 60 80 6A */	lis r3, data_80699C9C@ha
/* 80697F30  38 63 9C 9C */	addi r3, r3, data_80699C9C@l
/* 80697F34  4B BC B2 18 */	b ModuleConstructorsX
/* 80697F38  4B BC B1 50 */	b ModuleProlog
/* 80697F3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80697F40  7C 08 03 A6 */	mtlr r0
/* 80697F44  38 21 00 10 */	addi r1, r1, 0x10
/* 80697F48  4E 80 00 20 */	blr 
