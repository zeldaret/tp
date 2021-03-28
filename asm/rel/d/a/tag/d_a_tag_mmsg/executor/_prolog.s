lbl_80D5B8A0:
/* 80D5B8A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5B8A4  7C 08 02 A6 */	mflr r0
/* 80D5B8A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5B8AC  3C 60 80 D6 */	lis r3, data_80D5BD30@ha
/* 80D5B8B0  38 63 BD 30 */	addi r3, r3, data_80D5BD30@l
/* 80D5B8B4  4B 50 78 98 */	b ModuleConstructorsX
/* 80D5B8B8  4B 50 77 D0 */	b ModuleProlog
/* 80D5B8BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5B8C0  7C 08 03 A6 */	mtlr r0
/* 80D5B8C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5B8C8  4E 80 00 20 */	blr 
