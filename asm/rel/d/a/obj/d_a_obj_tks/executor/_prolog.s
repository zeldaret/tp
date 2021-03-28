lbl_80D0F1A0:
/* 80D0F1A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0F1A4  7C 08 02 A6 */	mflr r0
/* 80D0F1A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0F1AC  3C 60 80 D1 */	lis r3, data_80D12728@ha
/* 80D0F1B0  38 63 27 28 */	addi r3, r3, data_80D12728@l
/* 80D0F1B4  4B 55 3F 98 */	b ModuleConstructorsX
/* 80D0F1B8  4B 55 3E D0 */	b ModuleProlog
/* 80D0F1BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0F1C0  7C 08 03 A6 */	mtlr r0
/* 80D0F1C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0F1C8  4E 80 00 20 */	blr 
