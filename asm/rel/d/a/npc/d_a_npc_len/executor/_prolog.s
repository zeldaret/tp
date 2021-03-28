lbl_80A64240:
/* 80A64240  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A64244  7C 08 02 A6 */	mflr r0
/* 80A64248  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6424C  3C 60 80 A7 */	lis r3, data_80A68E90@ha
/* 80A64250  38 63 8E 90 */	addi r3, r3, data_80A68E90@l
/* 80A64254  4B 7F EE F8 */	b ModuleConstructorsX
/* 80A64258  4B 7F EE 30 */	b ModuleProlog
/* 80A6425C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A64260  7C 08 03 A6 */	mtlr r0
/* 80A64264  38 21 00 10 */	addi r1, r1, 0x10
/* 80A64268  4E 80 00 20 */	blr 
