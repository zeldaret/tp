lbl_80457B80:
/* 80457B80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80457B84  7C 08 02 A6 */	mflr r0
/* 80457B88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80457B8C  3C 60 80 46 */	lis r3, data_8045936C@ha
/* 80457B90  38 63 93 6C */	addi r3, r3, data_8045936C@l
/* 80457B94  4B E0 B5 B8 */	b ModuleConstructorsX
/* 80457B98  4B E0 B4 F0 */	b ModuleProlog
/* 80457B9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80457BA0  7C 08 03 A6 */	mtlr r0
/* 80457BA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80457BA8  4E 80 00 20 */	blr 
