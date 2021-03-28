lbl_80D51BEC:
/* 80D51BEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D51BF0  7C 08 02 A6 */	mflr r0
/* 80D51BF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D51BF8  4B 51 14 94 */	b ModuleEpilog
/* 80D51BFC  3C 60 80 D5 */	lis r3, data_80D524C8@ha
/* 80D51C00  38 63 24 C8 */	addi r3, r3, data_80D524C8@l
/* 80D51C04  4B 51 15 8C */	b ModuleDestructorsX
/* 80D51C08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D51C0C  7C 08 03 A6 */	mtlr r0
/* 80D51C10  38 21 00 10 */	addi r1, r1, 0x10
/* 80D51C14  4E 80 00 20 */	blr 
