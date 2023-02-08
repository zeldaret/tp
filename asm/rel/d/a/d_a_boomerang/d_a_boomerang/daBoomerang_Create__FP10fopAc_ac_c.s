lbl_804A26F8:
/* 804A26F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A26FC  7C 08 02 A6 */	mflr r0
/* 804A2700  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A2704  4B FF F9 81 */	bl create__13daBoomerang_cFv
/* 804A2708  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A270C  7C 08 03 A6 */	mtlr r0
/* 804A2710  38 21 00 10 */	addi r1, r1, 0x10
/* 804A2714  4E 80 00 20 */	blr 
