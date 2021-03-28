lbl_80657B00:
/* 80657B00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80657B04  7C 08 02 A6 */	mflr r0
/* 80657B08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80657B0C  3C 60 80 66 */	lis r3, data_806583E0@ha
/* 80657B10  38 63 83 E0 */	addi r3, r3, data_806583E0@l
/* 80657B14  4B C0 B6 38 */	b ModuleConstructorsX
/* 80657B18  4B C0 B5 70 */	b ModuleProlog
/* 80657B1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80657B20  7C 08 03 A6 */	mtlr r0
/* 80657B24  38 21 00 10 */	addi r1, r1, 0x10
/* 80657B28  4E 80 00 20 */	blr 
