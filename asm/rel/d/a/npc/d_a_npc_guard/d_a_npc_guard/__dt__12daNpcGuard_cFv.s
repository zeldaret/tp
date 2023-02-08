lbl_809F1F74:
/* 809F1F74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F1F78  7C 08 02 A6 */	mflr r0
/* 809F1F7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F1F80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F1F84  93 C1 00 08 */	stw r30, 8(r1)
/* 809F1F88  7C 7E 1B 79 */	or. r30, r3, r3
/* 809F1F8C  7C 9F 23 78 */	mr r31, r4
/* 809F1F90  41 82 00 78 */	beq lbl_809F2008
/* 809F1F94  3C 80 80 9F */	lis r4, __vt__12daNpcGuard_c@ha /* 0x809F2F58@ha */
/* 809F1F98  38 04 2F 58 */	addi r0, r4, __vt__12daNpcGuard_c@l /* 0x809F2F58@l */
/* 809F1F9C  90 1E 05 68 */	stw r0, 0x568(r30)
/* 809F1FA0  80 9E 0A 98 */	lwz r4, 0xa98(r30)
/* 809F1FA4  80 BE 0D 84 */	lwz r5, 0xd84(r30)
/* 809F1FA8  4B 76 6D 15 */	bl removeResrc__10daNpcCd2_cFii
/* 809F1FAC  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 809F1FB0  28 00 00 00 */	cmplwi r0, 0
/* 809F1FB4  41 82 00 0C */	beq lbl_809F1FC0
/* 809F1FB8  80 7E 05 8C */	lwz r3, 0x58c(r30)
/* 809F1FBC  4B 61 F3 55 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_809F1FC0:
/* 809F1FC0  38 7E 0B 14 */	addi r3, r30, 0xb14
/* 809F1FC4  3C 80 80 9F */	lis r4, __dt__8dCcD_SphFv@ha /* 0x809F1DA8@ha */
/* 809F1FC8  38 84 1D A8 */	addi r4, r4, __dt__8dCcD_SphFv@l /* 0x809F1DA8@l */
/* 809F1FCC  38 A0 01 38 */	li r5, 0x138
/* 809F1FD0  38 C0 00 02 */	li r6, 2
/* 809F1FD4  4B 96 FD 15 */	bl __destroy_arr
/* 809F1FD8  34 1E 0B 00 */	addic. r0, r30, 0xb00
/* 809F1FDC  41 82 00 10 */	beq lbl_809F1FEC
/* 809F1FE0  3C 60 80 9F */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x809F2F4C@ha */
/* 809F1FE4  38 03 2F 4C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x809F2F4C@l */
/* 809F1FE8  90 1E 0B 04 */	stw r0, 0xb04(r30)
lbl_809F1FEC:
/* 809F1FEC  7F C3 F3 78 */	mr r3, r30
/* 809F1FF0  38 80 00 00 */	li r4, 0
/* 809F1FF4  48 00 07 4D */	bl __dt__10daNpcCd2_cFv
/* 809F1FF8  7F E0 07 35 */	extsh. r0, r31
/* 809F1FFC  40 81 00 0C */	ble lbl_809F2008
/* 809F2000  7F C3 F3 78 */	mr r3, r30
/* 809F2004  4B 8D CD 39 */	bl __dl__FPv
lbl_809F2008:
/* 809F2008  7F C3 F3 78 */	mr r3, r30
/* 809F200C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F2010  83 C1 00 08 */	lwz r30, 8(r1)
/* 809F2014  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F2018  7C 08 03 A6 */	mtlr r0
/* 809F201C  38 21 00 10 */	addi r1, r1, 0x10
/* 809F2020  4E 80 00 20 */	blr 
