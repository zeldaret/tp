lbl_80D62D40:
/* 80D62D40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D62D44  7C 08 02 A6 */	mflr r0
/* 80D62D48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D62D4C  3C 60 80 D6 */	lis r3, data_80D63798@ha
/* 80D62D50  38 63 37 98 */	addi r3, r3, data_80D63798@l
/* 80D62D54  4B 50 03 F8 */	b ModuleConstructorsX
/* 80D62D58  4B 50 03 30 */	b ModuleProlog
/* 80D62D5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D62D60  7C 08 03 A6 */	mtlr r0
/* 80D62D64  38 21 00 10 */	addi r1, r1, 0x10
/* 80D62D68  4E 80 00 20 */	blr 
