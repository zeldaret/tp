lbl_80CC46AC:
/* 80CC46AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC46B0  7C 08 02 A6 */	mflr r0
/* 80CC46B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC46B8  4B 59 E9 D4 */	b ModuleEpilog
/* 80CC46BC  3C 60 80 CC */	lis r3, data_80CC50B0@ha
/* 80CC46C0  38 63 50 B0 */	addi r3, r3, data_80CC50B0@l
/* 80CC46C4  4B 59 EA CC */	b ModuleDestructorsX
/* 80CC46C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC46CC  7C 08 03 A6 */	mtlr r0
/* 80CC46D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC46D4  4E 80 00 20 */	blr 
