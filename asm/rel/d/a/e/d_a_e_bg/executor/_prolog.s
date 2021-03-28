lbl_80685720:
/* 80685720  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80685724  7C 08 02 A6 */	mflr r0
/* 80685728  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068572C  3C 60 80 69 */	lis r3, data_8068A230@ha
/* 80685730  38 63 A2 30 */	addi r3, r3, data_8068A230@l
/* 80685734  4B BD DA 18 */	b ModuleConstructorsX
/* 80685738  4B BD D9 50 */	b ModuleProlog
/* 8068573C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80685740  7C 08 03 A6 */	mtlr r0
/* 80685744  38 21 00 10 */	addi r1, r1, 0x10
/* 80685748  4E 80 00 20 */	blr 
