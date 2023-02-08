lbl_804A86B4:
/* 804A86B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A86B8  7C 08 02 A6 */	mflr r0
/* 804A86BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A86C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A86C4  7C 7F 1B 78 */	mr r31, r3
/* 804A86C8  3C 80 80 4B */	lis r4, __ct__4cXyzFv@ha /* 0x804A871C@ha */
/* 804A86CC  38 84 87 1C */	addi r4, r4, __ct__4cXyzFv@l /* 0x804A871C@l */
/* 804A86D0  3C A0 80 4A */	lis r5, __dt__4cXyzFv@ha /* 0x804A449C@ha */
/* 804A86D4  38 A5 44 9C */	addi r5, r5, __dt__4cXyzFv@l /* 0x804A449C@l */
/* 804A86D8  38 C0 00 0C */	li r6, 0xc
/* 804A86DC  38 E0 00 10 */	li r7, 0x10
/* 804A86E0  4B EB 96 81 */	bl __construct_array
/* 804A86E4  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 804A86E8  3C 80 80 4B */	lis r4, __ct__4cXyzFv@ha /* 0x804A871C@ha */
/* 804A86EC  38 84 87 1C */	addi r4, r4, __ct__4cXyzFv@l /* 0x804A871C@l */
/* 804A86F0  3C A0 80 4A */	lis r5, __dt__4cXyzFv@ha /* 0x804A449C@ha */
/* 804A86F4  38 A5 44 9C */	addi r5, r5, __dt__4cXyzFv@l /* 0x804A449C@l */
/* 804A86F8  38 C0 00 0C */	li r6, 0xc
/* 804A86FC  38 E0 00 10 */	li r7, 0x10
/* 804A8700  4B EB 96 61 */	bl __construct_array
/* 804A8704  7F E3 FB 78 */	mr r3, r31
/* 804A8708  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A870C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A8710  7C 08 03 A6 */	mtlr r0
/* 804A8714  38 21 00 10 */	addi r1, r1, 0x10
/* 804A8718  4E 80 00 20 */	blr 
