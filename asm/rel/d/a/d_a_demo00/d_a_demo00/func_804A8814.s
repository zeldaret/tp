lbl_804A8814:
/* 804A8814  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A8818  7C 08 02 A6 */	mflr r0
/* 804A881C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A8820  3C 60 80 4B */	lis r3, teduna_posL@ha /* 0x804A8C64@ha */
/* 804A8824  38 63 8C 64 */	addi r3, r3, teduna_posL@l /* 0x804A8C64@l */
/* 804A8828  3C 80 80 4A */	lis r4, __dt__4cXyzFv@ha /* 0x804A449C@ha */
/* 804A882C  38 84 44 9C */	addi r4, r4, __dt__4cXyzFv@l /* 0x804A449C@l */
/* 804A8830  38 A0 00 0C */	li r5, 0xc
/* 804A8834  38 C0 00 10 */	li r6, 0x10
/* 804A8838  4B EB 94 B1 */	bl __destroy_arr
/* 804A883C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A8840  7C 08 03 A6 */	mtlr r0
/* 804A8844  38 21 00 10 */	addi r1, r1, 0x10
/* 804A8848  4E 80 00 20 */	blr 
