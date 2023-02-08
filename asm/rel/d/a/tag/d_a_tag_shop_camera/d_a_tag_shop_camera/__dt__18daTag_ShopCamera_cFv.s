lbl_80D60A18:
/* 80D60A18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D60A1C  7C 08 02 A6 */	mflr r0
/* 80D60A20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D60A24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D60A28  93 C1 00 08 */	stw r30, 8(r1)
/* 80D60A2C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D60A30  7C 9F 23 78 */	mr r31, r4
/* 80D60A34  41 82 00 28 */	beq lbl_80D60A5C
/* 80D60A38  3C 80 80 D6 */	lis r4, __vt__18daTag_ShopCamera_c@ha /* 0x80D60AE0@ha */
/* 80D60A3C  38 04 0A E0 */	addi r0, r4, __vt__18daTag_ShopCamera_c@l /* 0x80D60AE0@l */
/* 80D60A40  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80D60A44  38 80 00 00 */	li r4, 0
/* 80D60A48  4B 2B 82 45 */	bl __dt__10fopAc_ac_cFv
/* 80D60A4C  7F E0 07 35 */	extsh. r0, r31
/* 80D60A50  40 81 00 0C */	ble lbl_80D60A5C
/* 80D60A54  7F C3 F3 78 */	mr r3, r30
/* 80D60A58  4B 56 E2 E5 */	bl __dl__FPv
lbl_80D60A5C:
/* 80D60A5C  7F C3 F3 78 */	mr r3, r30
/* 80D60A60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D60A64  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D60A68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D60A6C  7C 08 03 A6 */	mtlr r0
/* 80D60A70  38 21 00 10 */	addi r1, r1, 0x10
/* 80D60A74  4E 80 00 20 */	blr 
