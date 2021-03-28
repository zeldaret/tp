lbl_804A6F74:
/* 804A6F74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A6F78  7C 08 02 A6 */	mflr r0
/* 804A6F7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A6F80  48 00 00 15 */	bl draw__10daDemo00_cFv
/* 804A6F84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A6F88  7C 08 03 A6 */	mtlr r0
/* 804A6F8C  38 21 00 10 */	addi r1, r1, 0x10
/* 804A6F90  4E 80 00 20 */	blr 
