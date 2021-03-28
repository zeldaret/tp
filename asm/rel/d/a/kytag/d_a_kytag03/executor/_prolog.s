lbl_80855E60:
/* 80855E60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80855E64  7C 08 02 A6 */	mflr r0
/* 80855E68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80855E6C  3C 60 80 85 */	lis r3, data_80857648@ha
/* 80855E70  38 63 76 48 */	addi r3, r3, data_80857648@l
/* 80855E74  4B A0 D2 D8 */	b ModuleConstructorsX
/* 80855E78  4B A0 D2 10 */	b ModuleProlog
/* 80855E7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80855E80  7C 08 03 A6 */	mtlr r0
/* 80855E84  38 21 00 10 */	addi r1, r1, 0x10
/* 80855E88  4E 80 00 20 */	blr 
