lbl_8054B280:
/* 8054B280  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054B284  7C 08 02 A6 */	mflr r0
/* 8054B288  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054B28C  3C 60 80 55 */	lis r3, data_8054EAB0@ha
/* 8054B290  38 63 EA B0 */	addi r3, r3, data_8054EAB0@l
/* 8054B294  4B D1 7E B8 */	b ModuleConstructorsX
/* 8054B298  4B D1 7D F0 */	b ModuleProlog
/* 8054B29C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054B2A0  7C 08 03 A6 */	mtlr r0
/* 8054B2A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8054B2A8  4E 80 00 20 */	blr 
