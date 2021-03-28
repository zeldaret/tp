lbl_809516A0:
/* 809516A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809516A4  7C 08 02 A6 */	mflr r0
/* 809516A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809516AC  3C 60 80 95 */	lis r3, data_809576BC@ha
/* 809516B0  38 63 76 BC */	addi r3, r3, data_809576BC@l
/* 809516B4  4B 91 1A 98 */	b ModuleConstructorsX
/* 809516B8  4B 91 19 D0 */	b ModuleProlog
/* 809516BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809516C0  7C 08 03 A6 */	mtlr r0
/* 809516C4  38 21 00 10 */	addi r1, r1, 0x10
/* 809516C8  4E 80 00 20 */	blr 
