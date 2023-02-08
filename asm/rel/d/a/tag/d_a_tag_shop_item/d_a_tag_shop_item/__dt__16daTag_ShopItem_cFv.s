lbl_80D61168:
/* 80D61168  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D6116C  7C 08 02 A6 */	mflr r0
/* 80D61170  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D61174  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D61178  93 C1 00 08 */	stw r30, 8(r1)
/* 80D6117C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D61180  7C 9F 23 78 */	mr r31, r4
/* 80D61184  41 82 00 28 */	beq lbl_80D611AC
/* 80D61188  3C 80 80 D6 */	lis r4, __vt__16daTag_ShopItem_c@ha /* 0x80D61240@ha */
/* 80D6118C  38 04 12 40 */	addi r0, r4, __vt__16daTag_ShopItem_c@l /* 0x80D61240@l */
/* 80D61190  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80D61194  38 80 00 00 */	li r4, 0
/* 80D61198  4B 2B 7A F5 */	bl __dt__10fopAc_ac_cFv
/* 80D6119C  7F E0 07 35 */	extsh. r0, r31
/* 80D611A0  40 81 00 0C */	ble lbl_80D611AC
/* 80D611A4  7F C3 F3 78 */	mr r3, r30
/* 80D611A8  4B 56 DB 95 */	bl __dl__FPv
lbl_80D611AC:
/* 80D611AC  7F C3 F3 78 */	mr r3, r30
/* 80D611B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D611B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D611B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D611BC  7C 08 03 A6 */	mtlr r0
/* 80D611C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D611C4  4E 80 00 20 */	blr 
