lbl_80AF1E64:
/* 80AF1E64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF1E68  7C 08 02 A6 */	mflr r0
/* 80AF1E6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF1E70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF1E74  93 C1 00 08 */	stw r30, 8(r1)
/* 80AF1E78  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AF1E7C  7C 9F 23 78 */	mr r31, r4
/* 80AF1E80  41 82 00 98 */	beq lbl_80AF1F18
/* 80AF1E84  3C 60 80 AF */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 80AF1E88  38 03 2A CC */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 80AF1E8C  90 1E 00 98 */	stw r0, 0x98(r30)
/* 80AF1E90  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80AF1E94  3C 80 80 AF */	lis r4, __dt__5csXyzFv@ha
/* 80AF1E98  38 84 1F 34 */	addi r4, r4, __dt__5csXyzFv@l
/* 80AF1E9C  38 A0 00 06 */	li r5, 6
/* 80AF1EA0  38 C0 00 04 */	li r6, 4
/* 80AF1EA4  4B 86 FE 44 */	b __destroy_arr
/* 80AF1EA8  38 7E 00 64 */	addi r3, r30, 0x64
/* 80AF1EAC  3C 80 80 AF */	lis r4, __dt__5csXyzFv@ha
/* 80AF1EB0  38 84 1F 34 */	addi r4, r4, __dt__5csXyzFv@l
/* 80AF1EB4  38 A0 00 06 */	li r5, 6
/* 80AF1EB8  38 C0 00 04 */	li r6, 4
/* 80AF1EBC  4B 86 FE 2C */	b __destroy_arr
/* 80AF1EC0  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80AF1EC4  3C 80 80 AF */	lis r4, __dt__5csXyzFv@ha
/* 80AF1EC8  38 84 1F 34 */	addi r4, r4, __dt__5csXyzFv@l
/* 80AF1ECC  38 A0 00 06 */	li r5, 6
/* 80AF1ED0  38 C0 00 04 */	li r6, 4
/* 80AF1ED4  4B 86 FE 14 */	b __destroy_arr
/* 80AF1ED8  38 7E 00 34 */	addi r3, r30, 0x34
/* 80AF1EDC  3C 80 80 AF */	lis r4, __dt__5csXyzFv@ha
/* 80AF1EE0  38 84 1F 34 */	addi r4, r4, __dt__5csXyzFv@l
/* 80AF1EE4  38 A0 00 06 */	li r5, 6
/* 80AF1EE8  38 C0 00 04 */	li r6, 4
/* 80AF1EEC  4B 86 FD FC */	b __destroy_arr
/* 80AF1EF0  7F C3 F3 78 */	mr r3, r30
/* 80AF1EF4  3C 80 80 AF */	lis r4, __dt__4cXyzFv@ha
/* 80AF1EF8  38 84 1F 74 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AF1EFC  38 A0 00 0C */	li r5, 0xc
/* 80AF1F00  38 C0 00 04 */	li r6, 4
/* 80AF1F04  4B 86 FD E4 */	b __destroy_arr
/* 80AF1F08  7F E0 07 35 */	extsh. r0, r31
/* 80AF1F0C  40 81 00 0C */	ble lbl_80AF1F18
/* 80AF1F10  7F C3 F3 78 */	mr r3, r30
/* 80AF1F14  4B 7D CE 28 */	b __dl__FPv
lbl_80AF1F18:
/* 80AF1F18  7F C3 F3 78 */	mr r3, r30
/* 80AF1F1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF1F20  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AF1F24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF1F28  7C 08 03 A6 */	mtlr r0
/* 80AF1F2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF1F30  4E 80 00 20 */	blr 
