lbl_8055B4A0:
/* 8055B4A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055B4A4  7C 08 02 A6 */	mflr r0
/* 8055B4A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055B4AC  3C 60 80 56 */	lis r3, data_80564B98@ha
/* 8055B4B0  38 63 4B 98 */	addi r3, r3, data_80564B98@l
/* 8055B4B4  4B D0 7C 98 */	b ModuleConstructorsX
/* 8055B4B8  4B D0 7B D0 */	b ModuleProlog
/* 8055B4BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055B4C0  7C 08 03 A6 */	mtlr r0
/* 8055B4C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8055B4C8  4E 80 00 20 */	blr 
