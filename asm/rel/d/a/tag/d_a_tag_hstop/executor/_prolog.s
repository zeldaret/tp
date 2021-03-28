lbl_805A4300:
/* 805A4300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A4304  7C 08 02 A6 */	mflr r0
/* 805A4308  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A430C  3C 60 80 5A */	lis r3, data_805A4B0C@ha
/* 805A4310  38 63 4B 0C */	addi r3, r3, data_805A4B0C@l
/* 805A4314  4B CB EE 38 */	b ModuleConstructorsX
/* 805A4318  4B CB ED 70 */	b ModuleProlog
/* 805A431C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A4320  7C 08 03 A6 */	mtlr r0
/* 805A4324  38 21 00 10 */	addi r1, r1, 0x10
/* 805A4328  4E 80 00 20 */	blr 
