lbl_80C73300:
/* 80C73300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C73304  7C 08 02 A6 */	mflr r0
/* 80C73308  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7330C  3C 60 80 C7 */	lis r3, data_80C73CA8@ha
/* 80C73310  38 63 3C A8 */	addi r3, r3, data_80C73CA8@l
/* 80C73314  4B 5E FE 38 */	b ModuleConstructorsX
/* 80C73318  4B 5E FD 70 */	b ModuleProlog
/* 80C7331C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C73320  7C 08 03 A6 */	mtlr r0
/* 80C73324  38 21 00 10 */	addi r1, r1, 0x10
/* 80C73328  4E 80 00 20 */	blr 
