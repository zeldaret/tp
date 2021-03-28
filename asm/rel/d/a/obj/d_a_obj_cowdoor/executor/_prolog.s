lbl_80BCC780:
/* 80BCC780  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCC784  7C 08 02 A6 */	mflr r0
/* 80BCC788  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCC78C  3C 60 80 BD */	lis r3, data_80BCCBAC@ha
/* 80BCC790  38 63 CB AC */	addi r3, r3, data_80BCCBAC@l
/* 80BCC794  4B 69 69 B8 */	b ModuleConstructorsX
/* 80BCC798  4B 69 68 F0 */	b ModuleProlog
/* 80BCC79C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCC7A0  7C 08 03 A6 */	mtlr r0
/* 80BCC7A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCC7A8  4E 80 00 20 */	blr 
