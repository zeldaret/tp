lbl_80D55DEC:
/* 80D55DEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D55DF0  7C 08 02 A6 */	mflr r0
/* 80D55DF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D55DF8  4B 50 D2 94 */	b ModuleEpilog
/* 80D55DFC  3C 60 80 D5 */	lis r3, data_80D55F04@ha
/* 80D55E00  38 63 5F 04 */	addi r3, r3, data_80D55F04@l
/* 80D55E04  4B 50 D3 8C */	b ModuleDestructorsX
/* 80D55E08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D55E0C  7C 08 03 A6 */	mtlr r0
/* 80D55E10  38 21 00 10 */	addi r1, r1, 0x10
/* 80D55E14  4E 80 00 20 */	blr 
