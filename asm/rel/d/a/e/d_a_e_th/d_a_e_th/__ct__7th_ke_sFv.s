lbl_807B3BD4:
/* 807B3BD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B3BD8  7C 08 02 A6 */	mflr r0
/* 807B3BDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B3BE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807B3BE4  7C 7F 1B 78 */	mr r31, r3
/* 807B3BE8  3C 80 80 7B */	lis r4, __ct__4cXyzFv@ha /* 0x807B3C3C@ha */
/* 807B3BEC  38 84 3C 3C */	addi r4, r4, __ct__4cXyzFv@l /* 0x807B3C3C@l */
/* 807B3BF0  3C A0 80 7B */	lis r5, __dt__4cXyzFv@ha /* 0x807B444C@ha */
/* 807B3BF4  38 A5 44 4C */	addi r5, r5, __dt__4cXyzFv@l /* 0x807B444C@l */
/* 807B3BF8  38 C0 00 0C */	li r6, 0xc
/* 807B3BFC  38 E0 00 0F */	li r7, 0xf
/* 807B3C00  4B BA E1 61 */	bl __construct_array
/* 807B3C04  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 807B3C08  3C 80 80 7B */	lis r4, __ct__4cXyzFv@ha /* 0x807B3C3C@ha */
/* 807B3C0C  38 84 3C 3C */	addi r4, r4, __ct__4cXyzFv@l /* 0x807B3C3C@l */
/* 807B3C10  3C A0 80 7B */	lis r5, __dt__4cXyzFv@ha /* 0x807B444C@ha */
/* 807B3C14  38 A5 44 4C */	addi r5, r5, __dt__4cXyzFv@l /* 0x807B444C@l */
/* 807B3C18  38 C0 00 0C */	li r6, 0xc
/* 807B3C1C  38 E0 00 0F */	li r7, 0xf
/* 807B3C20  4B BA E1 41 */	bl __construct_array
/* 807B3C24  7F E3 FB 78 */	mr r3, r31
/* 807B3C28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807B3C2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B3C30  7C 08 03 A6 */	mtlr r0
/* 807B3C34  38 21 00 10 */	addi r1, r1, 0x10
/* 807B3C38  4E 80 00 20 */	blr 
