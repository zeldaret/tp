lbl_80857780:
/* 80857780  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80857784  7C 08 02 A6 */	mflr r0
/* 80857788  90 01 00 14 */	stw r0, 0x14(r1)
/* 8085778C  3C 60 80 86 */	lis r3, data_80859E68@ha
/* 80857790  38 63 9E 68 */	addi r3, r3, data_80859E68@l
/* 80857794  4B A0 B9 B8 */	b ModuleConstructorsX
/* 80857798  4B A0 B8 F0 */	b ModuleProlog
/* 8085779C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808577A0  7C 08 03 A6 */	mtlr r0
/* 808577A4  38 21 00 10 */	addi r1, r1, 0x10
/* 808577A8  4E 80 00 20 */	blr 
