lbl_807E1D2C:
/* 807E1D2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E1D30  7C 08 02 A6 */	mflr r0
/* 807E1D34  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E1D38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807E1D3C  7C 7F 1B 78 */	mr r31, r3
/* 807E1D40  3C 80 80 7E */	lis r4, __ct__4cXyzFv@ha /* 0x807E24FC@ha */
/* 807E1D44  38 84 24 FC */	addi r4, r4, __ct__4cXyzFv@l /* 0x807E24FC@l */
/* 807E1D48  3C A0 80 7D */	lis r5, __dt__4cXyzFv@ha /* 0x807D2B48@ha */
/* 807E1D4C  38 A5 2B 48 */	addi r5, r5, __dt__4cXyzFv@l /* 0x807D2B48@l */
/* 807E1D50  38 C0 00 0C */	li r6, 0xc
/* 807E1D54  38 E0 00 10 */	li r7, 0x10
/* 807E1D58  4B B8 00 09 */	bl __construct_array
/* 807E1D5C  7F E3 FB 78 */	mr r3, r31
/* 807E1D60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807E1D64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E1D68  7C 08 03 A6 */	mtlr r0
/* 807E1D6C  38 21 00 10 */	addi r1, r1, 0x10
/* 807E1D70  4E 80 00 20 */	blr 
