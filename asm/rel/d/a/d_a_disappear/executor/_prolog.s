lbl_804A8EA0:
/* 804A8EA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A8EA4  7C 08 02 A6 */	mflr r0
/* 804A8EA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A8EAC  3C 60 80 4B */	lis r3, data_804A9458@ha
/* 804A8EB0  38 63 94 58 */	addi r3, r3, data_804A9458@l
/* 804A8EB4  4B DB A2 98 */	b ModuleConstructorsX
/* 804A8EB8  4B DB A1 D0 */	b ModuleProlog
/* 804A8EBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A8EC0  7C 08 03 A6 */	mtlr r0
/* 804A8EC4  38 21 00 10 */	addi r1, r1, 0x10
/* 804A8EC8  4E 80 00 20 */	blr 
