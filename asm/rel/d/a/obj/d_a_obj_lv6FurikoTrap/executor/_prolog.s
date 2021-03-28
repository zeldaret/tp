lbl_80C723A0:
/* 80C723A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C723A4  7C 08 02 A6 */	mflr r0
/* 80C723A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C723AC  3C 60 80 C7 */	lis r3, data_80C7311C@ha
/* 80C723B0  38 63 31 1C */	addi r3, r3, data_80C7311C@l
/* 80C723B4  4B 5F 0D 98 */	b ModuleConstructorsX
/* 80C723B8  4B 5F 0C D0 */	b ModuleProlog
/* 80C723BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C723C0  7C 08 03 A6 */	mtlr r0
/* 80C723C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C723C8  4E 80 00 20 */	blr 
