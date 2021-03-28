lbl_80AC95A0:
/* 80AC95A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC95A4  7C 08 02 A6 */	mflr r0
/* 80AC95A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC95AC  3C 60 80 AD */	lis r3, data_80ACB348@ha
/* 80AC95B0  38 63 B3 48 */	addi r3, r3, data_80ACB348@l
/* 80AC95B4  4B 79 9B 98 */	b ModuleConstructorsX
/* 80AC95B8  4B 79 9A D0 */	b ModuleProlog
/* 80AC95BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC95C0  7C 08 03 A6 */	mtlr r0
/* 80AC95C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC95C8  4E 80 00 20 */	blr 
