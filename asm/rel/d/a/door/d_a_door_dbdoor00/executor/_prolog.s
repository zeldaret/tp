lbl_8045D300:
/* 8045D300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045D304  7C 08 02 A6 */	mflr r0
/* 8045D308  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045D30C  3C 60 80 46 */	lis r3, data_8045E52C@ha
/* 8045D310  38 63 E5 2C */	addi r3, r3, data_8045E52C@l
/* 8045D314  4B E0 5E 38 */	b ModuleConstructorsX
/* 8045D318  4B E0 5D 70 */	b ModuleProlog
/* 8045D31C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045D320  7C 08 03 A6 */	mtlr r0
/* 8045D324  38 21 00 10 */	addi r1, r1, 0x10
/* 8045D328  4E 80 00 20 */	blr 
