lbl_80AA2C18:
/* 80AA2C18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA2C1C  7C 08 02 A6 */	mflr r0
/* 80AA2C20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA2C24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA2C28  93 C1 00 08 */	stw r30, 8(r1)
/* 80AA2C2C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AA2C30  7C 9F 23 78 */	mr r31, r4
/* 80AA2C34  41 82 00 4C */	beq lbl_80AA2C80
/* 80AA2C38  3C 80 80 AA */	lis r4, __vt__13daNpcPasser_c@ha /* 0x80AA7444@ha */
/* 80AA2C3C  38 04 74 44 */	addi r0, r4, __vt__13daNpcPasser_c@l /* 0x80AA7444@l */
/* 80AA2C40  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80AA2C44  80 9E 0A 98 */	lwz r4, 0xa98(r30)
/* 80AA2C48  80 BE 0B 00 */	lwz r5, 0xb00(r30)
/* 80AA2C4C  4B 6B 60 71 */	bl removeResrc__10daNpcCd2_cFii
/* 80AA2C50  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80AA2C54  28 00 00 00 */	cmplwi r0, 0
/* 80AA2C58  41 82 00 0C */	beq lbl_80AA2C64
/* 80AA2C5C  80 7E 05 8C */	lwz r3, 0x58c(r30)
/* 80AA2C60  4B 56 E6 B1 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80AA2C64:
/* 80AA2C64  7F C3 F3 78 */	mr r3, r30
/* 80AA2C68  38 80 00 00 */	li r4, 0
/* 80AA2C6C  48 00 37 99 */	bl __dt__10daNpcCd2_cFv
/* 80AA2C70  7F E0 07 35 */	extsh. r0, r31
/* 80AA2C74  40 81 00 0C */	ble lbl_80AA2C80
/* 80AA2C78  7F C3 F3 78 */	mr r3, r30
/* 80AA2C7C  4B 82 C0 C1 */	bl __dl__FPv
lbl_80AA2C80:
/* 80AA2C80  7F C3 F3 78 */	mr r3, r30
/* 80AA2C84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA2C88  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AA2C8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA2C90  7C 08 03 A6 */	mtlr r0
/* 80AA2C94  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA2C98  4E 80 00 20 */	blr 
