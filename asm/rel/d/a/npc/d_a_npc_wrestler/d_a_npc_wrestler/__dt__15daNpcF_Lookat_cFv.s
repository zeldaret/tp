lbl_80B40EBC:
/* 80B40EBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B40EC0  7C 08 02 A6 */	mflr r0
/* 80B40EC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B40EC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B40ECC  93 C1 00 08 */	stw r30, 8(r1)
/* 80B40ED0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B40ED4  7C 9F 23 78 */	mr r31, r4
/* 80B40ED8  41 82 00 98 */	beq lbl_80B40F70
/* 80B40EDC  3C 60 80 B4 */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x80B42DF4@ha */
/* 80B40EE0  38 03 2D F4 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x80B42DF4@l */
/* 80B40EE4  90 1E 00 98 */	stw r0, 0x98(r30)
/* 80B40EE8  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80B40EEC  3C 80 80 B4 */	lis r4, __dt__5csXyzFv@ha /* 0x80B40F8C@ha */
/* 80B40EF0  38 84 0F 8C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B40F8C@l */
/* 80B40EF4  38 A0 00 06 */	li r5, 6
/* 80B40EF8  38 C0 00 04 */	li r6, 4
/* 80B40EFC  4B 82 0D ED */	bl __destroy_arr
/* 80B40F00  38 7E 00 64 */	addi r3, r30, 0x64
/* 80B40F04  3C 80 80 B4 */	lis r4, __dt__5csXyzFv@ha /* 0x80B40F8C@ha */
/* 80B40F08  38 84 0F 8C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B40F8C@l */
/* 80B40F0C  38 A0 00 06 */	li r5, 6
/* 80B40F10  38 C0 00 04 */	li r6, 4
/* 80B40F14  4B 82 0D D5 */	bl __destroy_arr
/* 80B40F18  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80B40F1C  3C 80 80 B4 */	lis r4, __dt__5csXyzFv@ha /* 0x80B40F8C@ha */
/* 80B40F20  38 84 0F 8C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B40F8C@l */
/* 80B40F24  38 A0 00 06 */	li r5, 6
/* 80B40F28  38 C0 00 04 */	li r6, 4
/* 80B40F2C  4B 82 0D BD */	bl __destroy_arr
/* 80B40F30  38 7E 00 34 */	addi r3, r30, 0x34
/* 80B40F34  3C 80 80 B4 */	lis r4, __dt__5csXyzFv@ha /* 0x80B40F8C@ha */
/* 80B40F38  38 84 0F 8C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B40F8C@l */
/* 80B40F3C  38 A0 00 06 */	li r5, 6
/* 80B40F40  38 C0 00 04 */	li r6, 4
/* 80B40F44  4B 82 0D A5 */	bl __destroy_arr
/* 80B40F48  7F C3 F3 78 */	mr r3, r30
/* 80B40F4C  3C 80 80 B4 */	lis r4, __dt__4cXyzFv@ha /* 0x80B40FCC@ha */
/* 80B40F50  38 84 0F CC */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B40FCC@l */
/* 80B40F54  38 A0 00 0C */	li r5, 0xc
/* 80B40F58  38 C0 00 04 */	li r6, 4
/* 80B40F5C  4B 82 0D 8D */	bl __destroy_arr
/* 80B40F60  7F E0 07 35 */	extsh. r0, r31
/* 80B40F64  40 81 00 0C */	ble lbl_80B40F70
/* 80B40F68  7F C3 F3 78 */	mr r3, r30
/* 80B40F6C  4B 78 DD D1 */	bl __dl__FPv
lbl_80B40F70:
/* 80B40F70  7F C3 F3 78 */	mr r3, r30
/* 80B40F74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B40F78  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B40F7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B40F80  7C 08 03 A6 */	mtlr r0
/* 80B40F84  38 21 00 10 */	addi r1, r1, 0x10
/* 80B40F88  4E 80 00 20 */	blr 
