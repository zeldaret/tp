lbl_80A260E0:
/* 80A260E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A260E4  7C 08 02 A6 */	mflr r0
/* 80A260E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A260EC  3C 60 80 A3 */	lis r3, data_80A2A038@ha
/* 80A260F0  38 63 A0 38 */	addi r3, r3, data_80A2A038@l
/* 80A260F4  4B 83 D0 58 */	b ModuleConstructorsX
/* 80A260F8  4B 83 CF 90 */	b ModuleProlog
/* 80A260FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A26100  7C 08 03 A6 */	mtlr r0
/* 80A26104  38 21 00 10 */	addi r1, r1, 0x10
/* 80A26108  4E 80 00 20 */	blr 
