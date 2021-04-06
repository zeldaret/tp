lbl_809BAA80:
/* 809BAA80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BAA84  7C 08 02 A6 */	mflr r0
/* 809BAA88  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BAA8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BAA90  93 C1 00 08 */	stw r30, 8(r1)
/* 809BAA94  7C 7E 1B 79 */	or. r30, r3, r3
/* 809BAA98  7C 9F 23 78 */	mr r31, r4
/* 809BAA9C  41 82 00 4C */	beq lbl_809BAAE8
/* 809BAAA0  3C 80 80 9C */	lis r4, __vt__10daNpcFgd_c@ha /* 0x809BB4CC@ha */
/* 809BAAA4  38 04 B4 CC */	addi r0, r4, __vt__10daNpcFgd_c@l /* 0x809BB4CC@l */
/* 809BAAA8  90 1E 05 68 */	stw r0, 0x568(r30)
/* 809BAAAC  80 9E 0A 98 */	lwz r4, 0xa98(r30)
/* 809BAAB0  80 BE 0A CC */	lwz r5, 0xacc(r30)
/* 809BAAB4  4B 79 E2 09 */	bl removeResrc__10daNpcCd2_cFii
/* 809BAAB8  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 809BAABC  28 00 00 00 */	cmplwi r0, 0
/* 809BAAC0  41 82 00 0C */	beq lbl_809BAACC
/* 809BAAC4  80 7E 05 8C */	lwz r3, 0x58c(r30)
/* 809BAAC8  4B 65 68 49 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_809BAACC:
/* 809BAACC  7F C3 F3 78 */	mr r3, r30
/* 809BAAD0  38 80 00 00 */	li r4, 0
/* 809BAAD4  48 00 03 AD */	bl __dt__10daNpcCd2_cFv
/* 809BAAD8  7F E0 07 35 */	extsh. r0, r31
/* 809BAADC  40 81 00 0C */	ble lbl_809BAAE8
/* 809BAAE0  7F C3 F3 78 */	mr r3, r30
/* 809BAAE4  4B 91 42 59 */	bl __dl__FPv
lbl_809BAAE8:
/* 809BAAE8  7F C3 F3 78 */	mr r3, r30
/* 809BAAEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BAAF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 809BAAF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BAAF8  7C 08 03 A6 */	mtlr r0
/* 809BAAFC  38 21 00 10 */	addi r1, r1, 0x10
/* 809BAB00  4E 80 00 20 */	blr 
