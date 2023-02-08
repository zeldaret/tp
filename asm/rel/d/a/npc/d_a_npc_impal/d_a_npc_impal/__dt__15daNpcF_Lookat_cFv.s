lbl_80A0BAA0:
/* 80A0BAA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0BAA4  7C 08 02 A6 */	mflr r0
/* 80A0BAA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0BAAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A0BAB0  93 C1 00 08 */	stw r30, 8(r1)
/* 80A0BAB4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A0BAB8  7C 9F 23 78 */	mr r31, r4
/* 80A0BABC  41 82 00 98 */	beq lbl_80A0BB54
/* 80A0BAC0  3C 60 80 A1 */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x80A0C8D4@ha */
/* 80A0BAC4  38 03 C8 D4 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x80A0C8D4@l */
/* 80A0BAC8  90 1E 00 98 */	stw r0, 0x98(r30)
/* 80A0BACC  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80A0BAD0  3C 80 80 A1 */	lis r4, __dt__5csXyzFv@ha /* 0x80A0BB70@ha */
/* 80A0BAD4  38 84 BB 70 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A0BB70@l */
/* 80A0BAD8  38 A0 00 06 */	li r5, 6
/* 80A0BADC  38 C0 00 04 */	li r6, 4
/* 80A0BAE0  4B 95 62 09 */	bl __destroy_arr
/* 80A0BAE4  38 7E 00 64 */	addi r3, r30, 0x64
/* 80A0BAE8  3C 80 80 A1 */	lis r4, __dt__5csXyzFv@ha /* 0x80A0BB70@ha */
/* 80A0BAEC  38 84 BB 70 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A0BB70@l */
/* 80A0BAF0  38 A0 00 06 */	li r5, 6
/* 80A0BAF4  38 C0 00 04 */	li r6, 4
/* 80A0BAF8  4B 95 61 F1 */	bl __destroy_arr
/* 80A0BAFC  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80A0BB00  3C 80 80 A1 */	lis r4, __dt__5csXyzFv@ha /* 0x80A0BB70@ha */
/* 80A0BB04  38 84 BB 70 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A0BB70@l */
/* 80A0BB08  38 A0 00 06 */	li r5, 6
/* 80A0BB0C  38 C0 00 04 */	li r6, 4
/* 80A0BB10  4B 95 61 D9 */	bl __destroy_arr
/* 80A0BB14  38 7E 00 34 */	addi r3, r30, 0x34
/* 80A0BB18  3C 80 80 A1 */	lis r4, __dt__5csXyzFv@ha /* 0x80A0BB70@ha */
/* 80A0BB1C  38 84 BB 70 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A0BB70@l */
/* 80A0BB20  38 A0 00 06 */	li r5, 6
/* 80A0BB24  38 C0 00 04 */	li r6, 4
/* 80A0BB28  4B 95 61 C1 */	bl __destroy_arr
/* 80A0BB2C  7F C3 F3 78 */	mr r3, r30
/* 80A0BB30  3C 80 80 A1 */	lis r4, __dt__4cXyzFv@ha /* 0x80A0BBB0@ha */
/* 80A0BB34  38 84 BB B0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A0BBB0@l */
/* 80A0BB38  38 A0 00 0C */	li r5, 0xc
/* 80A0BB3C  38 C0 00 04 */	li r6, 4
/* 80A0BB40  4B 95 61 A9 */	bl __destroy_arr
/* 80A0BB44  7F E0 07 35 */	extsh. r0, r31
/* 80A0BB48  40 81 00 0C */	ble lbl_80A0BB54
/* 80A0BB4C  7F C3 F3 78 */	mr r3, r30
/* 80A0BB50  4B 8C 31 ED */	bl __dl__FPv
lbl_80A0BB54:
/* 80A0BB54  7F C3 F3 78 */	mr r3, r30
/* 80A0BB58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A0BB5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A0BB60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0BB64  7C 08 03 A6 */	mtlr r0
/* 80A0BB68  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0BB6C  4E 80 00 20 */	blr 
