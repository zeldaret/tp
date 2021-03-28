lbl_8069AA00:
/* 8069AA00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8069AA04  7C 08 02 A6 */	mflr r0
/* 8069AA08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8069AA0C  3C 60 80 6A */	lis r3, data_806A18F8@ha
/* 8069AA10  38 63 18 F8 */	addi r3, r3, data_806A18F8@l
/* 8069AA14  4B BC 87 38 */	b ModuleConstructorsX
/* 8069AA18  4B BC 86 70 */	b ModuleProlog
/* 8069AA1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8069AA20  7C 08 03 A6 */	mtlr r0
/* 8069AA24  38 21 00 10 */	addi r1, r1, 0x10
/* 8069AA28  4E 80 00 20 */	blr 
