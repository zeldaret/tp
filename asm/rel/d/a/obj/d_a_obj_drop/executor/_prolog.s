lbl_80BDFC60:
/* 80BDFC60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDFC64  7C 08 02 A6 */	mflr r0
/* 80BDFC68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDFC6C  3C 60 80 BE */	lis r3, data_80BE1F80@ha
/* 80BDFC70  38 63 1F 80 */	addi r3, r3, data_80BE1F80@l
/* 80BDFC74  4B 68 34 D8 */	b ModuleConstructorsX
/* 80BDFC78  4B 68 34 10 */	b ModuleProlog
/* 80BDFC7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDFC80  7C 08 03 A6 */	mtlr r0
/* 80BDFC84  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDFC88  4E 80 00 20 */	blr 
