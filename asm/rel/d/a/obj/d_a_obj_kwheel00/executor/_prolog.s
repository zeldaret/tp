lbl_80C4D680:
/* 80C4D680  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4D684  7C 08 02 A6 */	mflr r0
/* 80C4D688  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4D68C  3C 60 80 C5 */	lis r3, data_80C4E7F8@ha
/* 80C4D690  38 63 E7 F8 */	addi r3, r3, data_80C4E7F8@l
/* 80C4D694  4B 61 5A B8 */	b ModuleConstructorsX
/* 80C4D698  4B 61 59 F0 */	b ModuleProlog
/* 80C4D69C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4D6A0  7C 08 03 A6 */	mtlr r0
/* 80C4D6A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4D6A8  4E 80 00 20 */	blr 
