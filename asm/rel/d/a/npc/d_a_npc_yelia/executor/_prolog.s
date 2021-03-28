lbl_80B4D220:
/* 80B4D220  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4D224  7C 08 02 A6 */	mflr r0
/* 80B4D228  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4D22C  3C 60 80 B5 */	lis r3, data_80B522A0@ha
/* 80B4D230  38 63 22 A0 */	addi r3, r3, data_80B522A0@l
/* 80B4D234  4B 71 5F 18 */	b ModuleConstructorsX
/* 80B4D238  4B 71 5E 50 */	b ModuleProlog
/* 80B4D23C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4D240  7C 08 03 A6 */	mtlr r0
/* 80B4D244  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4D248  4E 80 00 20 */	blr 
