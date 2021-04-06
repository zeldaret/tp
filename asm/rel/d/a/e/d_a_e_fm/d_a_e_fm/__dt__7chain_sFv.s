lbl_804F9E14:
/* 804F9E14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F9E18  7C 08 02 A6 */	mflr r0
/* 804F9E1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F9E20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F9E24  93 C1 00 08 */	stw r30, 8(r1)
/* 804F9E28  7C 7E 1B 79 */	or. r30, r3, r3
/* 804F9E2C  7C 9F 23 78 */	mr r31, r4
/* 804F9E30  41 82 00 8C */	beq lbl_804F9EBC
/* 804F9E34  38 7E 04 B8 */	addi r3, r30, 0x4b8
/* 804F9E38  3C 80 80 50 */	lis r4, __dt__12dKy_tevstr_cFv@ha /* 0x804F9ED8@ha */
/* 804F9E3C  38 84 9E D8 */	addi r4, r4, __dt__12dKy_tevstr_cFv@l /* 0x804F9ED8@l */
/* 804F9E40  38 A0 03 88 */	li r5, 0x388
/* 804F9E44  38 C0 00 1A */	li r6, 0x1a
/* 804F9E48  4B E6 7E A1 */	bl __destroy_arr
/* 804F9E4C  38 7E 04 1C */	addi r3, r30, 0x41c
/* 804F9E50  3C 80 80 4F */	lis r4, __dt__5csXyzFv@ha /* 0x804EF63C@ha */
/* 804F9E54  38 84 F6 3C */	addi r4, r4, __dt__5csXyzFv@l /* 0x804EF63C@l */
/* 804F9E58  38 A0 00 06 */	li r5, 6
/* 804F9E5C  38 C0 00 1A */	li r6, 0x1a
/* 804F9E60  4B E6 7E 89 */	bl __destroy_arr
/* 804F9E64  38 7E 02 E4 */	addi r3, r30, 0x2e4
/* 804F9E68  3C 80 80 4F */	lis r4, __dt__4cXyzFv@ha /* 0x804EF678@ha */
/* 804F9E6C  38 84 F6 78 */	addi r4, r4, __dt__4cXyzFv@l /* 0x804EF678@l */
/* 804F9E70  38 A0 00 0C */	li r5, 0xc
/* 804F9E74  38 C0 00 1A */	li r6, 0x1a
/* 804F9E78  4B E6 7E 71 */	bl __destroy_arr
/* 804F9E7C  38 7E 01 AC */	addi r3, r30, 0x1ac
/* 804F9E80  3C 80 80 4F */	lis r4, __dt__4cXyzFv@ha /* 0x804EF678@ha */
/* 804F9E84  38 84 F6 78 */	addi r4, r4, __dt__4cXyzFv@l /* 0x804EF678@l */
/* 804F9E88  38 A0 00 0C */	li r5, 0xc
/* 804F9E8C  38 C0 00 1A */	li r6, 0x1a
/* 804F9E90  4B E6 7E 59 */	bl __destroy_arr
/* 804F9E94  38 7E 00 74 */	addi r3, r30, 0x74
/* 804F9E98  3C 80 80 4F */	lis r4, __dt__4cXyzFv@ha /* 0x804EF678@ha */
/* 804F9E9C  38 84 F6 78 */	addi r4, r4, __dt__4cXyzFv@l /* 0x804EF678@l */
/* 804F9EA0  38 A0 00 0C */	li r5, 0xc
/* 804F9EA4  38 C0 00 1A */	li r6, 0x1a
/* 804F9EA8  4B E6 7E 41 */	bl __destroy_arr
/* 804F9EAC  7F E0 07 35 */	extsh. r0, r31
/* 804F9EB0  40 81 00 0C */	ble lbl_804F9EBC
/* 804F9EB4  7F C3 F3 78 */	mr r3, r30
/* 804F9EB8  4B DD 4E 85 */	bl __dl__FPv
lbl_804F9EBC:
/* 804F9EBC  7F C3 F3 78 */	mr r3, r30
/* 804F9EC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F9EC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F9EC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F9ECC  7C 08 03 A6 */	mtlr r0
/* 804F9ED0  38 21 00 10 */	addi r1, r1, 0x10
/* 804F9ED4  4E 80 00 20 */	blr 
