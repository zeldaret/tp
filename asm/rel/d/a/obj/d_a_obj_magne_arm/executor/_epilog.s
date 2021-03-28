lbl_8058F30C:
/* 8058F30C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058F310  7C 08 02 A6 */	mflr r0
/* 8058F314  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058F318  4B CD 3D 74 */	b ModuleEpilog
/* 8058F31C  3C 60 80 59 */	lis r3, data_80592844@ha
/* 8058F320  38 63 28 44 */	addi r3, r3, data_80592844@l
/* 8058F324  4B CD 3E 6C */	b ModuleDestructorsX
/* 8058F328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058F32C  7C 08 03 A6 */	mtlr r0
/* 8058F330  38 21 00 10 */	addi r1, r1, 0x10
/* 8058F334  4E 80 00 20 */	blr 
