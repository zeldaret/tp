lbl_809DE70C:
/* 809DE70C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DE710  7C 08 02 A6 */	mflr r0
/* 809DE714  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DE718  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809DE71C  93 C1 00 08 */	stw r30, 8(r1)
/* 809DE720  7C 7E 1B 79 */	or. r30, r3, r3
/* 809DE724  7C 9F 23 78 */	mr r31, r4
/* 809DE728  41 82 00 98 */	beq lbl_809DE7C0
/* 809DE72C  3C 60 80 9E */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x809DF6E0@ha */
/* 809DE730  38 03 F6 E0 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x809DF6E0@l */
/* 809DE734  90 1E 00 98 */	stw r0, 0x98(r30)
/* 809DE738  38 7E 00 7C */	addi r3, r30, 0x7c
/* 809DE73C  3C 80 80 9E */	lis r4, __dt__5csXyzFv@ha /* 0x809DE7DC@ha */
/* 809DE740  38 84 E7 DC */	addi r4, r4, __dt__5csXyzFv@l /* 0x809DE7DC@l */
/* 809DE744  38 A0 00 06 */	li r5, 6
/* 809DE748  38 C0 00 04 */	li r6, 4
/* 809DE74C  4B 98 35 9D */	bl __destroy_arr
/* 809DE750  38 7E 00 64 */	addi r3, r30, 0x64
/* 809DE754  3C 80 80 9E */	lis r4, __dt__5csXyzFv@ha /* 0x809DE7DC@ha */
/* 809DE758  38 84 E7 DC */	addi r4, r4, __dt__5csXyzFv@l /* 0x809DE7DC@l */
/* 809DE75C  38 A0 00 06 */	li r5, 6
/* 809DE760  38 C0 00 04 */	li r6, 4
/* 809DE764  4B 98 35 85 */	bl __destroy_arr
/* 809DE768  38 7E 00 4C */	addi r3, r30, 0x4c
/* 809DE76C  3C 80 80 9E */	lis r4, __dt__5csXyzFv@ha /* 0x809DE7DC@ha */
/* 809DE770  38 84 E7 DC */	addi r4, r4, __dt__5csXyzFv@l /* 0x809DE7DC@l */
/* 809DE774  38 A0 00 06 */	li r5, 6
/* 809DE778  38 C0 00 04 */	li r6, 4
/* 809DE77C  4B 98 35 6D */	bl __destroy_arr
/* 809DE780  38 7E 00 34 */	addi r3, r30, 0x34
/* 809DE784  3C 80 80 9E */	lis r4, __dt__5csXyzFv@ha /* 0x809DE7DC@ha */
/* 809DE788  38 84 E7 DC */	addi r4, r4, __dt__5csXyzFv@l /* 0x809DE7DC@l */
/* 809DE78C  38 A0 00 06 */	li r5, 6
/* 809DE790  38 C0 00 04 */	li r6, 4
/* 809DE794  4B 98 35 55 */	bl __destroy_arr
/* 809DE798  7F C3 F3 78 */	mr r3, r30
/* 809DE79C  3C 80 80 9E */	lis r4, __dt__4cXyzFv@ha /* 0x809DE81C@ha */
/* 809DE7A0  38 84 E8 1C */	addi r4, r4, __dt__4cXyzFv@l /* 0x809DE81C@l */
/* 809DE7A4  38 A0 00 0C */	li r5, 0xc
/* 809DE7A8  38 C0 00 04 */	li r6, 4
/* 809DE7AC  4B 98 35 3D */	bl __destroy_arr
/* 809DE7B0  7F E0 07 35 */	extsh. r0, r31
/* 809DE7B4  40 81 00 0C */	ble lbl_809DE7C0
/* 809DE7B8  7F C3 F3 78 */	mr r3, r30
/* 809DE7BC  4B 8F 05 81 */	bl __dl__FPv
lbl_809DE7C0:
/* 809DE7C0  7F C3 F3 78 */	mr r3, r30
/* 809DE7C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809DE7C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 809DE7CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DE7D0  7C 08 03 A6 */	mtlr r0
/* 809DE7D4  38 21 00 10 */	addi r1, r1, 0x10
/* 809DE7D8  4E 80 00 20 */	blr 
