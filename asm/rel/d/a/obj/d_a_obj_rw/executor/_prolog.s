lbl_80CC28A0:
/* 80CC28A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC28A4  7C 08 02 A6 */	mflr r0
/* 80CC28A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC28AC  3C 60 80 CC */	lis r3, data_80CC3AE0@ha
/* 80CC28B0  38 63 3A E0 */	addi r3, r3, data_80CC3AE0@l
/* 80CC28B4  4B 5A 08 98 */	b ModuleConstructorsX
/* 80CC28B8  4B 5A 07 D0 */	b ModuleProlog
/* 80CC28BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC28C0  7C 08 03 A6 */	mtlr r0
/* 80CC28C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC28C8  4E 80 00 20 */	blr 
