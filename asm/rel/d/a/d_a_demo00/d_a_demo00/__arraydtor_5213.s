lbl_804A87DC:
/* 804A87DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A87E0  7C 08 02 A6 */	mflr r0
/* 804A87E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A87E8  3C 60 80 4B */	lis r3, teduna_posR@ha
/* 804A87EC  38 63 8D 30 */	addi r3, r3, teduna_posR@l
/* 804A87F0  3C 80 80 4A */	lis r4, __dt__4cXyzFv@ha
/* 804A87F4  38 84 44 9C */	addi r4, r4, __dt__4cXyzFv@l
/* 804A87F8  38 A0 00 0C */	li r5, 0xc
/* 804A87FC  38 C0 00 10 */	li r6, 0x10
/* 804A8800  4B EB 94 E8 */	b __destroy_arr
/* 804A8804  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A8808  7C 08 03 A6 */	mtlr r0
/* 804A880C  38 21 00 10 */	addi r1, r1, 0x10
/* 804A8810  4E 80 00 20 */	blr 
