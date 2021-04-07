lbl_809BB10C:
/* 809BB10C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BB110  7C 08 02 A6 */	mflr r0
/* 809BB114  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BB118  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BB11C  93 C1 00 08 */	stw r30, 8(r1)
/* 809BB120  7C 7E 1B 79 */	or. r30, r3, r3
/* 809BB124  7C 9F 23 78 */	mr r31, r4
/* 809BB128  41 82 00 B0 */	beq lbl_809BB1D8
/* 809BB12C  3C 60 80 9C */	lis r3, __vt__16dNpcLib_lookat_c@ha /* 0x809BB4C0@ha */
/* 809BB130  38 03 B4 C0 */	addi r0, r3, __vt__16dNpcLib_lookat_c@l /* 0x809BB4C0@l */
/* 809BB134  90 1E 00 00 */	stw r0, 0(r30)
/* 809BB138  38 7E 00 94 */	addi r3, r30, 0x94
/* 809BB13C  3C 80 80 9C */	lis r4, __dt__5csXyzFv@ha /* 0x809BB0D0@ha */
/* 809BB140  38 84 B0 D0 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809BB0D0@l */
/* 809BB144  38 A0 00 06 */	li r5, 6
/* 809BB148  38 C0 00 04 */	li r6, 4
/* 809BB14C  4B 9A 6B 9D */	bl __destroy_arr
/* 809BB150  38 7E 00 7C */	addi r3, r30, 0x7c
/* 809BB154  3C 80 80 9C */	lis r4, __dt__5csXyzFv@ha /* 0x809BB0D0@ha */
/* 809BB158  38 84 B0 D0 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809BB0D0@l */
/* 809BB15C  38 A0 00 06 */	li r5, 6
/* 809BB160  38 C0 00 04 */	li r6, 4
/* 809BB164  4B 9A 6B 85 */	bl __destroy_arr
/* 809BB168  38 7E 00 64 */	addi r3, r30, 0x64
/* 809BB16C  3C 80 80 9C */	lis r4, __dt__5csXyzFv@ha /* 0x809BB0D0@ha */
/* 809BB170  38 84 B0 D0 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809BB0D0@l */
/* 809BB174  38 A0 00 06 */	li r5, 6
/* 809BB178  38 C0 00 04 */	li r6, 4
/* 809BB17C  4B 9A 6B 6D */	bl __destroy_arr
/* 809BB180  38 7E 00 4C */	addi r3, r30, 0x4c
/* 809BB184  3C 80 80 9C */	lis r4, __dt__5csXyzFv@ha /* 0x809BB0D0@ha */
/* 809BB188  38 84 B0 D0 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809BB0D0@l */
/* 809BB18C  38 A0 00 06 */	li r5, 6
/* 809BB190  38 C0 00 04 */	li r6, 4
/* 809BB194  4B 9A 6B 55 */	bl __destroy_arr
/* 809BB198  38 7E 00 34 */	addi r3, r30, 0x34
/* 809BB19C  3C 80 80 9C */	lis r4, __dt__5csXyzFv@ha /* 0x809BB0D0@ha */
/* 809BB1A0  38 84 B0 D0 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809BB0D0@l */
/* 809BB1A4  38 A0 00 06 */	li r5, 6
/* 809BB1A8  38 C0 00 04 */	li r6, 4
/* 809BB1AC  4B 9A 6B 3D */	bl __destroy_arr
/* 809BB1B0  38 7E 00 04 */	addi r3, r30, 4
/* 809BB1B4  3C 80 80 9C */	lis r4, __dt__4cXyzFv@ha /* 0x809BB2E0@ha */
/* 809BB1B8  38 84 B2 E0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809BB2E0@l */
/* 809BB1BC  38 A0 00 0C */	li r5, 0xc
/* 809BB1C0  38 C0 00 04 */	li r6, 4
/* 809BB1C4  4B 9A 6B 25 */	bl __destroy_arr
/* 809BB1C8  7F E0 07 35 */	extsh. r0, r31
/* 809BB1CC  40 81 00 0C */	ble lbl_809BB1D8
/* 809BB1D0  7F C3 F3 78 */	mr r3, r30
/* 809BB1D4  4B 91 3B 69 */	bl __dl__FPv
lbl_809BB1D8:
/* 809BB1D8  7F C3 F3 78 */	mr r3, r30
/* 809BB1DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BB1E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 809BB1E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BB1E8  7C 08 03 A6 */	mtlr r0
/* 809BB1EC  38 21 00 10 */	addi r1, r1, 0x10
/* 809BB1F0  4E 80 00 20 */	blr 
