lbl_804BAFD8:
/* 804BAFD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BAFDC  7C 08 02 A6 */	mflr r0
/* 804BAFE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BAFE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804BAFE8  7C 7F 1B 78 */	mr r31, r3
/* 804BAFEC  3C 80 80 4C */	lis r4, __ct__4cXyzFv@ha
/* 804BAFF0  38 84 B0 24 */	addi r4, r4, __ct__4cXyzFv@l
/* 804BAFF4  3C A0 80 4C */	lis r5, __dt__4cXyzFv@ha
/* 804BAFF8  38 A5 B1 B4 */	addi r5, r5, __dt__4cXyzFv@l
/* 804BAFFC  38 C0 00 0C */	li r6, 0xc
/* 804BB000  38 E0 00 02 */	li r7, 2
/* 804BB004  4B EA 6D 5C */	b __construct_array
/* 804BB008  7F E3 FB 78 */	mr r3, r31
/* 804BB00C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804BB010  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BB014  7C 08 03 A6 */	mtlr r0
/* 804BB018  38 21 00 10 */	addi r1, r1, 0x10
/* 804BB01C  4E 80 00 20 */	blr 
