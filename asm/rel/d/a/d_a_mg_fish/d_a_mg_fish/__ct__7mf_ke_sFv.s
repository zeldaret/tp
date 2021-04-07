lbl_80535FD4:
/* 80535FD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80535FD8  7C 08 02 A6 */	mflr r0
/* 80535FDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80535FE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80535FE4  7C 7F 1B 78 */	mr r31, r3
/* 80535FE8  3C 80 80 53 */	lis r4, __ct__4cXyzFv@ha /* 0x8053605C@ha */
/* 80535FEC  38 84 60 5C */	addi r4, r4, __ct__4cXyzFv@l /* 0x8053605C@l */
/* 80535FF0  3C A0 80 53 */	lis r5, __dt__4cXyzFv@ha /* 0x80529E4C@ha */
/* 80535FF4  38 A5 9E 4C */	addi r5, r5, __dt__4cXyzFv@l /* 0x80529E4C@l */
/* 80535FF8  38 C0 00 0C */	li r6, 0xc
/* 80535FFC  38 E0 00 05 */	li r7, 5
/* 80536000  4B E2 BD 61 */	bl __construct_array
/* 80536004  7F E3 FB 78 */	mr r3, r31
/* 80536008  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053600C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80536010  7C 08 03 A6 */	mtlr r0
/* 80536014  38 21 00 10 */	addi r1, r1, 0x10
/* 80536018  4E 80 00 20 */	blr 
