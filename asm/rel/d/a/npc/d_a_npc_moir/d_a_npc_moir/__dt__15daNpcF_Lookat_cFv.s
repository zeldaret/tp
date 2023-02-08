lbl_80A8298C:
/* 80A8298C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A82990  7C 08 02 A6 */	mflr r0
/* 80A82994  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A82998  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A8299C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A829A0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A829A4  7C 9F 23 78 */	mr r31, r4
/* 80A829A8  41 82 00 98 */	beq lbl_80A82A40
/* 80A829AC  3C 60 80 A8 */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x80A83D54@ha */
/* 80A829B0  38 03 3D 54 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x80A83D54@l */
/* 80A829B4  90 1E 00 98 */	stw r0, 0x98(r30)
/* 80A829B8  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80A829BC  3C 80 80 A8 */	lis r4, __dt__5csXyzFv@ha /* 0x80A82A5C@ha */
/* 80A829C0  38 84 2A 5C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A82A5C@l */
/* 80A829C4  38 A0 00 06 */	li r5, 6
/* 80A829C8  38 C0 00 04 */	li r6, 4
/* 80A829CC  4B 8D F3 1D */	bl __destroy_arr
/* 80A829D0  38 7E 00 64 */	addi r3, r30, 0x64
/* 80A829D4  3C 80 80 A8 */	lis r4, __dt__5csXyzFv@ha /* 0x80A82A5C@ha */
/* 80A829D8  38 84 2A 5C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A82A5C@l */
/* 80A829DC  38 A0 00 06 */	li r5, 6
/* 80A829E0  38 C0 00 04 */	li r6, 4
/* 80A829E4  4B 8D F3 05 */	bl __destroy_arr
/* 80A829E8  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80A829EC  3C 80 80 A8 */	lis r4, __dt__5csXyzFv@ha /* 0x80A82A5C@ha */
/* 80A829F0  38 84 2A 5C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A82A5C@l */
/* 80A829F4  38 A0 00 06 */	li r5, 6
/* 80A829F8  38 C0 00 04 */	li r6, 4
/* 80A829FC  4B 8D F2 ED */	bl __destroy_arr
/* 80A82A00  38 7E 00 34 */	addi r3, r30, 0x34
/* 80A82A04  3C 80 80 A8 */	lis r4, __dt__5csXyzFv@ha /* 0x80A82A5C@ha */
/* 80A82A08  38 84 2A 5C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A82A5C@l */
/* 80A82A0C  38 A0 00 06 */	li r5, 6
/* 80A82A10  38 C0 00 04 */	li r6, 4
/* 80A82A14  4B 8D F2 D5 */	bl __destroy_arr
/* 80A82A18  7F C3 F3 78 */	mr r3, r30
/* 80A82A1C  3C 80 80 A8 */	lis r4, __dt__4cXyzFv@ha /* 0x80A82A9C@ha */
/* 80A82A20  38 84 2A 9C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A82A9C@l */
/* 80A82A24  38 A0 00 0C */	li r5, 0xc
/* 80A82A28  38 C0 00 04 */	li r6, 4
/* 80A82A2C  4B 8D F2 BD */	bl __destroy_arr
/* 80A82A30  7F E0 07 35 */	extsh. r0, r31
/* 80A82A34  40 81 00 0C */	ble lbl_80A82A40
/* 80A82A38  7F C3 F3 78 */	mr r3, r30
/* 80A82A3C  4B 84 C3 01 */	bl __dl__FPv
lbl_80A82A40:
/* 80A82A40  7F C3 F3 78 */	mr r3, r30
/* 80A82A44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A82A48  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A82A4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A82A50  7C 08 03 A6 */	mtlr r0
/* 80A82A54  38 21 00 10 */	addi r1, r1, 0x10
/* 80A82A58  4E 80 00 20 */	blr 
