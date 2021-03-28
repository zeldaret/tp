lbl_8048F20C:
/* 8048F20C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048F210  7C 08 02 A6 */	mflr r0
/* 8048F214  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048F218  4B DD 3E 74 */	b ModuleEpilog
/* 8048F21C  3C 60 80 49 */	lis r3, data_8048F6FC@ha
/* 8048F220  38 63 F6 FC */	addi r3, r3, data_8048F6FC@l
/* 8048F224  4B DD 3F 6C */	b ModuleDestructorsX
/* 8048F228  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048F22C  7C 08 03 A6 */	mtlr r0
/* 8048F230  38 21 00 10 */	addi r1, r1, 0x10
/* 8048F234  4E 80 00 20 */	blr 
