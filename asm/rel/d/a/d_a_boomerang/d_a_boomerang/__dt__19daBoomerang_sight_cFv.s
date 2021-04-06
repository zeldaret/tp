lbl_804A278C:
/* 804A278C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A2790  7C 08 02 A6 */	mflr r0
/* 804A2794  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A2798  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A279C  93 C1 00 08 */	stw r30, 8(r1)
/* 804A27A0  7C 7E 1B 79 */	or. r30, r3, r3
/* 804A27A4  7C 9F 23 78 */	mr r31, r4
/* 804A27A8  41 82 00 38 */	beq lbl_804A27E0
/* 804A27AC  3C 60 80 4A */	lis r3, __vt__19daBoomerang_sight_c@ha /* 0x804A2CC0@ha */
/* 804A27B0  38 03 2C C0 */	addi r0, r3, __vt__19daBoomerang_sight_c@l /* 0x804A2CC0@l */
/* 804A27B4  90 1E 00 00 */	stw r0, 0(r30)
/* 804A27B8  38 7E 00 C8 */	addi r3, r30, 0xc8
/* 804A27BC  3C 80 80 4A */	lis r4, __dt__4cXyzFv@ha /* 0x8049EE8C@ha */
/* 804A27C0  38 84 EE 8C */	addi r4, r4, __dt__4cXyzFv@l /* 0x8049EE8C@l */
/* 804A27C4  38 A0 00 0C */	li r5, 0xc
/* 804A27C8  38 C0 00 06 */	li r6, 6
/* 804A27CC  4B EB F5 1D */	bl __destroy_arr
/* 804A27D0  7F E0 07 35 */	extsh. r0, r31
/* 804A27D4  40 81 00 0C */	ble lbl_804A27E0
/* 804A27D8  7F C3 F3 78 */	mr r3, r30
/* 804A27DC  4B E2 C5 61 */	bl __dl__FPv
lbl_804A27E0:
/* 804A27E0  7F C3 F3 78 */	mr r3, r30
/* 804A27E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A27E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804A27EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A27F0  7C 08 03 A6 */	mtlr r0
/* 804A27F4  38 21 00 10 */	addi r1, r1, 0x10
/* 804A27F8  4E 80 00 20 */	blr 
