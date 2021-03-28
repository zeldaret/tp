lbl_8048B8A0:
/* 8048B8A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048B8A4  7C 08 02 A6 */	mflr r0
/* 8048B8A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048B8AC  3C 60 80 49 */	lis r3, data_8048C390@ha
/* 8048B8B0  38 63 C3 90 */	addi r3, r3, data_8048C390@l
/* 8048B8B4  4B DD 78 98 */	b ModuleConstructorsX
/* 8048B8B8  4B DD 77 D0 */	b ModuleProlog
/* 8048B8BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048B8C0  7C 08 03 A6 */	mtlr r0
/* 8048B8C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8048B8C8  4E 80 00 20 */	blr 
