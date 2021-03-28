lbl_80B2F1A0:
/* 80B2F1A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2F1A4  7C 08 02 A6 */	mflr r0
/* 80B2F1A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2F1AC  3C 60 80 B4 */	lis r3, data_80B416C8@ha
/* 80B2F1B0  38 63 16 C8 */	addi r3, r3, data_80B416C8@l
/* 80B2F1B4  4B 73 3F 98 */	b ModuleConstructorsX
/* 80B2F1B8  4B 73 3E D0 */	b ModuleProlog
/* 80B2F1BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2F1C0  7C 08 03 A6 */	mtlr r0
/* 80B2F1C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2F1C8  4E 80 00 20 */	blr 
