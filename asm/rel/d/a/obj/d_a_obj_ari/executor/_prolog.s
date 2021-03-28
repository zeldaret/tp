lbl_80BA25A0:
/* 80BA25A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA25A4  7C 08 02 A6 */	mflr r0
/* 80BA25A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA25AC  3C 60 80 BA */	lis r3, data_80BA53F4@ha
/* 80BA25B0  38 63 53 F4 */	addi r3, r3, data_80BA53F4@l
/* 80BA25B4  4B 6C 0B 98 */	b ModuleConstructorsX
/* 80BA25B8  4B 6C 0A D0 */	b ModuleProlog
/* 80BA25BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA25C0  7C 08 03 A6 */	mtlr r0
/* 80BA25C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA25C8  4E 80 00 20 */	blr 
