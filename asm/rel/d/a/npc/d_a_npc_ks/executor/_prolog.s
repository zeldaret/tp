lbl_80A48EA0:
/* 80A48EA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A48EA4  7C 08 02 A6 */	mflr r0
/* 80A48EA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A48EAC  3C 60 80 A6 */	lis r3, data_80A5DEE8@ha
/* 80A48EB0  38 63 DE E8 */	addi r3, r3, data_80A5DEE8@l
/* 80A48EB4  4B 81 A2 98 */	b ModuleConstructorsX
/* 80A48EB8  4B 81 A1 D0 */	b ModuleProlog
/* 80A48EBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A48EC0  7C 08 03 A6 */	mtlr r0
/* 80A48EC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A48EC8  4E 80 00 20 */	blr 
