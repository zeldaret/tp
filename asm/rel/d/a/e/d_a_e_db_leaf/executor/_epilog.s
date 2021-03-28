lbl_806A1DEC:
/* 806A1DEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A1DF0  7C 08 02 A6 */	mflr r0
/* 806A1DF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A1DF8  4B BC 12 94 */	b ModuleEpilog
/* 806A1DFC  3C 60 80 6A */	lis r3, data_806A2110@ha
/* 806A1E00  38 63 21 10 */	addi r3, r3, data_806A2110@l
/* 806A1E04  4B BC 13 8C */	b ModuleDestructorsX
/* 806A1E08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A1E0C  7C 08 03 A6 */	mtlr r0
/* 806A1E10  38 21 00 10 */	addi r1, r1, 0x10
/* 806A1E14  4E 80 00 20 */	blr 
