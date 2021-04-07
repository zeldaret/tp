lbl_804A4388:
/* 804A4388  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A438C  7C 08 02 A6 */	mflr r0
/* 804A4390  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A4394  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A4398  93 C1 00 08 */	stw r30, 8(r1)
/* 804A439C  7C 7E 1B 79 */	or. r30, r3, r3
/* 804A43A0  7C 9F 23 78 */	mr r31, r4
/* 804A43A4  41 82 00 60 */	beq lbl_804A4404
/* 804A43A8  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 804A43AC  28 00 00 00 */	cmplwi r0, 0
/* 804A43B0  41 82 00 14 */	beq lbl_804A43C4
/* 804A43B4  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 804A43B8  28 03 00 00 */	cmplwi r3, 0
/* 804A43BC  41 82 00 08 */	beq lbl_804A43C4
/* 804A43C0  4B B6 CF 51 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_804A43C4:
/* 804A43C4  38 7E 06 F8 */	addi r3, r30, 0x6f8
/* 804A43C8  3C 80 80 4A */	lis r4, __dt__12demo_s1_ke_sFv@ha /* 0x804A4420@ha */
/* 804A43CC  38 84 44 20 */	addi r4, r4, __dt__12demo_s1_ke_sFv@l /* 0x804A4420@l */
/* 804A43D0  38 A0 01 8C */	li r5, 0x18c
/* 804A43D4  38 C0 00 16 */	li r6, 0x16
/* 804A43D8  4B EB D9 11 */	bl __destroy_arr
/* 804A43DC  38 7E 05 FC */	addi r3, r30, 0x5fc
/* 804A43E0  38 80 FF FF */	li r4, -1
/* 804A43E4  4B E1 C0 3D */	bl __dt__10Z2CreatureFv
/* 804A43E8  7F C3 F3 78 */	mr r3, r30
/* 804A43EC  38 80 00 00 */	li r4, 0
/* 804A43F0  4B B7 48 9D */	bl __dt__10fopAc_ac_cFv
/* 804A43F4  7F E0 07 35 */	extsh. r0, r31
/* 804A43F8  40 81 00 0C */	ble lbl_804A4404
/* 804A43FC  7F C3 F3 78 */	mr r3, r30
/* 804A4400  4B E2 A9 3D */	bl __dl__FPv
lbl_804A4404:
/* 804A4404  7F C3 F3 78 */	mr r3, r30
/* 804A4408  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A440C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804A4410  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A4414  7C 08 03 A6 */	mtlr r0
/* 804A4418  38 21 00 10 */	addi r1, r1, 0x10
/* 804A441C  4E 80 00 20 */	blr 
