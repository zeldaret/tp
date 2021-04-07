lbl_80AA8270:
/* 80AA8270  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA8274  7C 08 02 A6 */	mflr r0
/* 80AA8278  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA827C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA8280  93 C1 00 08 */	stw r30, 8(r1)
/* 80AA8284  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AA8288  7C 9F 23 78 */	mr r31, r4
/* 80AA828C  41 82 00 5C */	beq lbl_80AA82E8
/* 80AA8290  3C 80 80 AB */	lis r4, __vt__14daNpcPasser2_c@ha /* 0x80AA8B2C@ha */
/* 80AA8294  38 04 8B 2C */	addi r0, r4, __vt__14daNpcPasser2_c@l /* 0x80AA8B2C@l */
/* 80AA8298  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80AA829C  80 9E 09 C4 */	lwz r4, 0x9c4(r30)
/* 80AA82A0  2C 04 00 1E */	cmpwi r4, 0x1e
/* 80AA82A4  40 80 00 14 */	bge lbl_80AA82B8
/* 80AA82A8  80 BE 0A 24 */	lwz r5, 0xa24(r30)
/* 80AA82AC  2C 05 00 09 */	cmpwi r5, 9
/* 80AA82B0  40 80 00 08 */	bge lbl_80AA82B8
/* 80AA82B4  4B 6A E9 9D */	bl removeResrc__9daNpcCd_cFii
lbl_80AA82B8:
/* 80AA82B8  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80AA82BC  28 00 00 00 */	cmplwi r0, 0
/* 80AA82C0  41 82 00 0C */	beq lbl_80AA82CC
/* 80AA82C4  80 7E 05 8C */	lwz r3, 0x58c(r30)
/* 80AA82C8  4B 56 90 49 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80AA82CC:
/* 80AA82CC  7F C3 F3 78 */	mr r3, r30
/* 80AA82D0  38 80 00 00 */	li r4, 0
/* 80AA82D4  48 00 03 C1 */	bl __dt__9daNpcCd_cFv
/* 80AA82D8  7F E0 07 35 */	extsh. r0, r31
/* 80AA82DC  40 81 00 0C */	ble lbl_80AA82E8
/* 80AA82E0  7F C3 F3 78 */	mr r3, r30
/* 80AA82E4  4B 82 6A 59 */	bl __dl__FPv
lbl_80AA82E8:
/* 80AA82E8  7F C3 F3 78 */	mr r3, r30
/* 80AA82EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA82F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AA82F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA82F8  7C 08 03 A6 */	mtlr r0
/* 80AA82FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA8300  4E 80 00 20 */	blr 
