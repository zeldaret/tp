lbl_8048F78C:
/* 8048F78C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048F790  7C 08 02 A6 */	mflr r0
/* 8048F794  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048F798  4B DD 38 F4 */	b ModuleEpilog
/* 8048F79C  3C 60 80 49 */	lis r3, data_80490174@ha
/* 8048F7A0  38 63 01 74 */	addi r3, r3, data_80490174@l
/* 8048F7A4  4B DD 39 EC */	b ModuleDestructorsX
/* 8048F7A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048F7AC  7C 08 03 A6 */	mtlr r0
/* 8048F7B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8048F7B4  4E 80 00 20 */	blr 
