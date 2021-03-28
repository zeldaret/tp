lbl_80BC4240:
/* 80BC4240  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC4244  7C 08 02 A6 */	mflr r0
/* 80BC4248  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC424C  3C 60 80 BC */	lis r3, data_80BC49AC@ha
/* 80BC4250  38 63 49 AC */	addi r3, r3, data_80BC49AC@l
/* 80BC4254  4B 69 EE F8 */	b ModuleConstructorsX
/* 80BC4258  4B 69 EE 30 */	b ModuleProlog
/* 80BC425C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC4260  7C 08 03 A6 */	mtlr r0
/* 80BC4264  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC4268  4E 80 00 20 */	blr 
