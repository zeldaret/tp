lbl_804A84B4:
/* 804A84B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A84B8  7C 08 02 A6 */	mflr r0
/* 804A84BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A84C0  38 80 FF FF */	li r4, -1
/* 804A84C4  4B FF BE C5 */	bl __dt__10daDemo00_cFv
/* 804A84C8  38 60 00 01 */	li r3, 1
/* 804A84CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A84D0  7C 08 03 A6 */	mtlr r0
/* 804A84D4  38 21 00 10 */	addi r1, r1, 0x10
/* 804A84D8  4E 80 00 20 */	blr 
