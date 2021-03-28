lbl_80CDE4A0:
/* 80CDE4A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDE4A4  7C 08 02 A6 */	mflr r0
/* 80CDE4A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDE4AC  3C 60 80 CE */	lis r3, data_80CDEEEC@ha
/* 80CDE4B0  38 63 EE EC */	addi r3, r3, data_80CDEEEC@l
/* 80CDE4B4  4B 58 4C 98 */	b ModuleConstructorsX
/* 80CDE4B8  4B 58 4B D0 */	b ModuleProlog
/* 80CDE4BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDE4C0  7C 08 03 A6 */	mtlr r0
/* 80CDE4C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDE4C8  4E 80 00 20 */	blr 
