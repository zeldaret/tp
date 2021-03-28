lbl_804A1EBC:
/* 804A1EBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A1EC0  7C 08 02 A6 */	mflr r0
/* 804A1EC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A1EC8  38 80 FF FF */	li r4, -1
/* 804A1ECC  4B FF FD 29 */	bl __dt__13daBoomerang_cFv
/* 804A1ED0  38 60 00 01 */	li r3, 1
/* 804A1ED4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A1ED8  7C 08 03 A6 */	mtlr r0
/* 804A1EDC  38 21 00 10 */	addi r1, r1, 0x10
/* 804A1EE0  4E 80 00 20 */	blr 
