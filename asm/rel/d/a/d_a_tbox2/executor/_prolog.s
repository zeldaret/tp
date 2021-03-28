lbl_804969A0:
/* 804969A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804969A4  7C 08 02 A6 */	mflr r0
/* 804969A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804969AC  3C 60 80 4A */	lis r3, data_80498158@ha
/* 804969B0  38 63 81 58 */	addi r3, r3, data_80498158@l
/* 804969B4  4B DC C7 98 */	b ModuleConstructorsX
/* 804969B8  4B DC C6 D0 */	b ModuleProlog
/* 804969BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804969C0  7C 08 03 A6 */	mtlr r0
/* 804969C4  38 21 00 10 */	addi r1, r1, 0x10
/* 804969C8  4E 80 00 20 */	blr 
