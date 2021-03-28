lbl_805294A0:
/* 805294A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805294A4  7C 08 02 A6 */	mflr r0
/* 805294A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805294AC  3C 60 80 53 */	lis r3, data_8052988C@ha
/* 805294B0  38 63 98 8C */	addi r3, r3, data_8052988C@l
/* 805294B4  4B D3 9C 98 */	b ModuleConstructorsX
/* 805294B8  4B D3 9B D0 */	b ModuleProlog
/* 805294BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805294C0  7C 08 03 A6 */	mtlr r0
/* 805294C4  38 21 00 10 */	addi r1, r1, 0x10
/* 805294C8  4E 80 00 20 */	blr 
