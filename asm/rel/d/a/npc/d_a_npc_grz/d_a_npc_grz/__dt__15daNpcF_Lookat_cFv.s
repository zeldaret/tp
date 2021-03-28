lbl_809EE908:
/* 809EE908  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809EE90C  7C 08 02 A6 */	mflr r0
/* 809EE910  90 01 00 14 */	stw r0, 0x14(r1)
/* 809EE914  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809EE918  93 C1 00 08 */	stw r30, 8(r1)
/* 809EE91C  7C 7E 1B 79 */	or. r30, r3, r3
/* 809EE920  7C 9F 23 78 */	mr r31, r4
/* 809EE924  41 82 00 98 */	beq lbl_809EE9BC
/* 809EE928  3C 60 80 9F */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 809EE92C  38 03 FB E8 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 809EE930  90 1E 00 98 */	stw r0, 0x98(r30)
/* 809EE934  38 7E 00 7C */	addi r3, r30, 0x7c
/* 809EE938  3C 80 80 9F */	lis r4, __dt__5csXyzFv@ha
/* 809EE93C  38 84 E9 D8 */	addi r4, r4, __dt__5csXyzFv@l
/* 809EE940  38 A0 00 06 */	li r5, 6
/* 809EE944  38 C0 00 04 */	li r6, 4
/* 809EE948  4B 97 33 A0 */	b __destroy_arr
/* 809EE94C  38 7E 00 64 */	addi r3, r30, 0x64
/* 809EE950  3C 80 80 9F */	lis r4, __dt__5csXyzFv@ha
/* 809EE954  38 84 E9 D8 */	addi r4, r4, __dt__5csXyzFv@l
/* 809EE958  38 A0 00 06 */	li r5, 6
/* 809EE95C  38 C0 00 04 */	li r6, 4
/* 809EE960  4B 97 33 88 */	b __destroy_arr
/* 809EE964  38 7E 00 4C */	addi r3, r30, 0x4c
/* 809EE968  3C 80 80 9F */	lis r4, __dt__5csXyzFv@ha
/* 809EE96C  38 84 E9 D8 */	addi r4, r4, __dt__5csXyzFv@l
/* 809EE970  38 A0 00 06 */	li r5, 6
/* 809EE974  38 C0 00 04 */	li r6, 4
/* 809EE978  4B 97 33 70 */	b __destroy_arr
/* 809EE97C  38 7E 00 34 */	addi r3, r30, 0x34
/* 809EE980  3C 80 80 9F */	lis r4, __dt__5csXyzFv@ha
/* 809EE984  38 84 E9 D8 */	addi r4, r4, __dt__5csXyzFv@l
/* 809EE988  38 A0 00 06 */	li r5, 6
/* 809EE98C  38 C0 00 04 */	li r6, 4
/* 809EE990  4B 97 33 58 */	b __destroy_arr
/* 809EE994  7F C3 F3 78 */	mr r3, r30
/* 809EE998  3C 80 80 9F */	lis r4, __dt__4cXyzFv@ha
/* 809EE99C  38 84 EA 18 */	addi r4, r4, __dt__4cXyzFv@l
/* 809EE9A0  38 A0 00 0C */	li r5, 0xc
/* 809EE9A4  38 C0 00 04 */	li r6, 4
/* 809EE9A8  4B 97 33 40 */	b __destroy_arr
/* 809EE9AC  7F E0 07 35 */	extsh. r0, r31
/* 809EE9B0  40 81 00 0C */	ble lbl_809EE9BC
/* 809EE9B4  7F C3 F3 78 */	mr r3, r30
/* 809EE9B8  4B 8E 03 84 */	b __dl__FPv
lbl_809EE9BC:
/* 809EE9BC  7F C3 F3 78 */	mr r3, r30
/* 809EE9C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809EE9C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 809EE9C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809EE9CC  7C 08 03 A6 */	mtlr r0
/* 809EE9D0  38 21 00 10 */	addi r1, r1, 0x10
/* 809EE9D4  4E 80 00 20 */	blr 
