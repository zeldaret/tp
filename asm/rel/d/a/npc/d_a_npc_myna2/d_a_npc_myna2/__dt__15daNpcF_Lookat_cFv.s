lbl_80A87AAC:
/* 80A87AAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A87AB0  7C 08 02 A6 */	mflr r0
/* 80A87AB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A87AB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A87ABC  93 C1 00 08 */	stw r30, 8(r1)
/* 80A87AC0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A87AC4  7C 9F 23 78 */	mr r31, r4
/* 80A87AC8  41 82 00 98 */	beq lbl_80A87B60
/* 80A87ACC  3C 60 80 A9 */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x80A88AD4@ha */
/* 80A87AD0  38 03 8A D4 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x80A88AD4@l */
/* 80A87AD4  90 1E 00 98 */	stw r0, 0x98(r30)
/* 80A87AD8  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80A87ADC  3C 80 80 A8 */	lis r4, __dt__5csXyzFv@ha /* 0x80A87B7C@ha */
/* 80A87AE0  38 84 7B 7C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A87B7C@l */
/* 80A87AE4  38 A0 00 06 */	li r5, 6
/* 80A87AE8  38 C0 00 04 */	li r6, 4
/* 80A87AEC  4B 8D A1 FD */	bl __destroy_arr
/* 80A87AF0  38 7E 00 64 */	addi r3, r30, 0x64
/* 80A87AF4  3C 80 80 A8 */	lis r4, __dt__5csXyzFv@ha /* 0x80A87B7C@ha */
/* 80A87AF8  38 84 7B 7C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A87B7C@l */
/* 80A87AFC  38 A0 00 06 */	li r5, 6
/* 80A87B00  38 C0 00 04 */	li r6, 4
/* 80A87B04  4B 8D A1 E5 */	bl __destroy_arr
/* 80A87B08  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80A87B0C  3C 80 80 A8 */	lis r4, __dt__5csXyzFv@ha /* 0x80A87B7C@ha */
/* 80A87B10  38 84 7B 7C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A87B7C@l */
/* 80A87B14  38 A0 00 06 */	li r5, 6
/* 80A87B18  38 C0 00 04 */	li r6, 4
/* 80A87B1C  4B 8D A1 CD */	bl __destroy_arr
/* 80A87B20  38 7E 00 34 */	addi r3, r30, 0x34
/* 80A87B24  3C 80 80 A8 */	lis r4, __dt__5csXyzFv@ha /* 0x80A87B7C@ha */
/* 80A87B28  38 84 7B 7C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A87B7C@l */
/* 80A87B2C  38 A0 00 06 */	li r5, 6
/* 80A87B30  38 C0 00 04 */	li r6, 4
/* 80A87B34  4B 8D A1 B5 */	bl __destroy_arr
/* 80A87B38  7F C3 F3 78 */	mr r3, r30
/* 80A87B3C  3C 80 80 A8 */	lis r4, __dt__4cXyzFv@ha /* 0x80A87BBC@ha */
/* 80A87B40  38 84 7B BC */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A87BBC@l */
/* 80A87B44  38 A0 00 0C */	li r5, 0xc
/* 80A87B48  38 C0 00 04 */	li r6, 4
/* 80A87B4C  4B 8D A1 9D */	bl __destroy_arr
/* 80A87B50  7F E0 07 35 */	extsh. r0, r31
/* 80A87B54  40 81 00 0C */	ble lbl_80A87B60
/* 80A87B58  7F C3 F3 78 */	mr r3, r30
/* 80A87B5C  4B 84 71 E1 */	bl __dl__FPv
lbl_80A87B60:
/* 80A87B60  7F C3 F3 78 */	mr r3, r30
/* 80A87B64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A87B68  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A87B6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A87B70  7C 08 03 A6 */	mtlr r0
/* 80A87B74  38 21 00 10 */	addi r1, r1, 0x10
/* 80A87B78  4E 80 00 20 */	blr 
