lbl_80961918:
/* 80961918  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8096191C  7C 08 02 A6 */	mflr r0
/* 80961920  90 01 00 14 */	stw r0, 0x14(r1)
/* 80961924  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80961928  93 C1 00 08 */	stw r30, 8(r1)
/* 8096192C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80961930  7C 9F 23 78 */	mr r31, r4
/* 80961934  41 82 00 98 */	beq lbl_809619CC
/* 80961938  3C 60 80 96 */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 8096193C  38 03 27 9C */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 80961940  90 1E 00 98 */	stw r0, 0x98(r30)
/* 80961944  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80961948  3C 80 80 96 */	lis r4, __dt__5csXyzFv@ha
/* 8096194C  38 84 19 E8 */	addi r4, r4, __dt__5csXyzFv@l
/* 80961950  38 A0 00 06 */	li r5, 6
/* 80961954  38 C0 00 04 */	li r6, 4
/* 80961958  4B A0 03 90 */	b __destroy_arr
/* 8096195C  38 7E 00 64 */	addi r3, r30, 0x64
/* 80961960  3C 80 80 96 */	lis r4, __dt__5csXyzFv@ha
/* 80961964  38 84 19 E8 */	addi r4, r4, __dt__5csXyzFv@l
/* 80961968  38 A0 00 06 */	li r5, 6
/* 8096196C  38 C0 00 04 */	li r6, 4
/* 80961970  4B A0 03 78 */	b __destroy_arr
/* 80961974  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80961978  3C 80 80 96 */	lis r4, __dt__5csXyzFv@ha
/* 8096197C  38 84 19 E8 */	addi r4, r4, __dt__5csXyzFv@l
/* 80961980  38 A0 00 06 */	li r5, 6
/* 80961984  38 C0 00 04 */	li r6, 4
/* 80961988  4B A0 03 60 */	b __destroy_arr
/* 8096198C  38 7E 00 34 */	addi r3, r30, 0x34
/* 80961990  3C 80 80 96 */	lis r4, __dt__5csXyzFv@ha
/* 80961994  38 84 19 E8 */	addi r4, r4, __dt__5csXyzFv@l
/* 80961998  38 A0 00 06 */	li r5, 6
/* 8096199C  38 C0 00 04 */	li r6, 4
/* 809619A0  4B A0 03 48 */	b __destroy_arr
/* 809619A4  7F C3 F3 78 */	mr r3, r30
/* 809619A8  3C 80 80 96 */	lis r4, __dt__4cXyzFv@ha
/* 809619AC  38 84 1A 28 */	addi r4, r4, __dt__4cXyzFv@l
/* 809619B0  38 A0 00 0C */	li r5, 0xc
/* 809619B4  38 C0 00 04 */	li r6, 4
/* 809619B8  4B A0 03 30 */	b __destroy_arr
/* 809619BC  7F E0 07 35 */	extsh. r0, r31
/* 809619C0  40 81 00 0C */	ble lbl_809619CC
/* 809619C4  7F C3 F3 78 */	mr r3, r30
/* 809619C8  4B 96 D3 74 */	b __dl__FPv
lbl_809619CC:
/* 809619CC  7F C3 F3 78 */	mr r3, r30
/* 809619D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809619D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 809619D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809619DC  7C 08 03 A6 */	mtlr r0
/* 809619E0  38 21 00 10 */	addi r1, r1, 0x10
/* 809619E4  4E 80 00 20 */	blr 
