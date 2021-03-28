lbl_80CA8200:
/* 80CA8200  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA8204  7C 08 02 A6 */	mflr r0
/* 80CA8208  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA820C  3C 60 80 CB */	lis r3, data_80CA846C@ha
/* 80CA8210  38 63 84 6C */	addi r3, r3, data_80CA846C@l
/* 80CA8214  4B 5B AF 38 */	b ModuleConstructorsX
/* 80CA8218  4B 5B AE 70 */	b ModuleProlog
/* 80CA821C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA8220  7C 08 03 A6 */	mtlr r0
/* 80CA8224  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA8228  4E 80 00 20 */	blr 
