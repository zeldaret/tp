lbl_80B7EE74:
/* 80B7EE74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7EE78  7C 08 02 A6 */	mflr r0
/* 80B7EE7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7EE80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B7EE84  93 C1 00 08 */	stw r30, 8(r1)
/* 80B7EE88  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B7EE8C  7C 9F 23 78 */	mr r31, r4
/* 80B7EE90  41 82 00 98 */	beq lbl_80B7EF28
/* 80B7EE94  3C 60 80 B9 */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 80B7EE98  38 03 D9 F8 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 80B7EE9C  90 1E 00 98 */	stw r0, 0x98(r30)
/* 80B7EEA0  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80B7EEA4  3C 80 80 B8 */	lis r4, __dt__5csXyzFv@ha
/* 80B7EEA8  38 84 EF 44 */	addi r4, r4, __dt__5csXyzFv@l
/* 80B7EEAC  38 A0 00 06 */	li r5, 6
/* 80B7EEB0  38 C0 00 04 */	li r6, 4
/* 80B7EEB4  4B 7E 2E 34 */	b __destroy_arr
/* 80B7EEB8  38 7E 00 64 */	addi r3, r30, 0x64
/* 80B7EEBC  3C 80 80 B8 */	lis r4, __dt__5csXyzFv@ha
/* 80B7EEC0  38 84 EF 44 */	addi r4, r4, __dt__5csXyzFv@l
/* 80B7EEC4  38 A0 00 06 */	li r5, 6
/* 80B7EEC8  38 C0 00 04 */	li r6, 4
/* 80B7EECC  4B 7E 2E 1C */	b __destroy_arr
/* 80B7EED0  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80B7EED4  3C 80 80 B8 */	lis r4, __dt__5csXyzFv@ha
/* 80B7EED8  38 84 EF 44 */	addi r4, r4, __dt__5csXyzFv@l
/* 80B7EEDC  38 A0 00 06 */	li r5, 6
/* 80B7EEE0  38 C0 00 04 */	li r6, 4
/* 80B7EEE4  4B 7E 2E 04 */	b __destroy_arr
/* 80B7EEE8  38 7E 00 34 */	addi r3, r30, 0x34
/* 80B7EEEC  3C 80 80 B8 */	lis r4, __dt__5csXyzFv@ha
/* 80B7EEF0  38 84 EF 44 */	addi r4, r4, __dt__5csXyzFv@l
/* 80B7EEF4  38 A0 00 06 */	li r5, 6
/* 80B7EEF8  38 C0 00 04 */	li r6, 4
/* 80B7EEFC  4B 7E 2D EC */	b __destroy_arr
/* 80B7EF00  7F C3 F3 78 */	mr r3, r30
/* 80B7EF04  3C 80 80 B8 */	lis r4, __dt__4cXyzFv@ha
/* 80B7EF08  38 84 87 30 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B7EF0C  38 A0 00 0C */	li r5, 0xc
/* 80B7EF10  38 C0 00 04 */	li r6, 4
/* 80B7EF14  4B 7E 2D D4 */	b __destroy_arr
/* 80B7EF18  7F E0 07 35 */	extsh. r0, r31
/* 80B7EF1C  40 81 00 0C */	ble lbl_80B7EF28
/* 80B7EF20  7F C3 F3 78 */	mr r3, r30
/* 80B7EF24  4B 74 FE 18 */	b __dl__FPv
lbl_80B7EF28:
/* 80B7EF28  7F C3 F3 78 */	mr r3, r30
/* 80B7EF2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B7EF30  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B7EF34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7EF38  7C 08 03 A6 */	mtlr r0
/* 80B7EF3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B7EF40  4E 80 00 20 */	blr 
