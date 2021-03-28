lbl_8048F1E0:
/* 8048F1E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048F1E4  7C 08 02 A6 */	mflr r0
/* 8048F1E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048F1EC  3C 60 80 49 */	lis r3, data_8048F6F8@ha
/* 8048F1F0  38 63 F6 F8 */	addi r3, r3, data_8048F6F8@l
/* 8048F1F4  4B DD 3F 58 */	b ModuleConstructorsX
/* 8048F1F8  4B DD 3E 90 */	b ModuleProlog
/* 8048F1FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048F200  7C 08 03 A6 */	mtlr r0
/* 8048F204  38 21 00 10 */	addi r1, r1, 0x10
/* 8048F208  4E 80 00 20 */	blr 
