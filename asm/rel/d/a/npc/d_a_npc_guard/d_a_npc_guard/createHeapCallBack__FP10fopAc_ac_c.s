lbl_809EFD58:
/* 809EFD58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809EFD5C  7C 08 02 A6 */	mflr r0
/* 809EFD60  90 01 00 14 */	stw r0, 0x14(r1)
/* 809EFD64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809EFD68  93 C1 00 08 */	stw r30, 8(r1)
/* 809EFD6C  7C 7E 1B 78 */	mr r30, r3
/* 809EFD70  80 83 0A 98 */	lwz r4, 0xa98(r3)
/* 809EFD74  4B 76 7F 8D */	bl NpcCreate__10daNpcCd2_cFi
/* 809EFD78  7C 7F 1B 79 */	or. r31, r3, r3
/* 809EFD7C  41 82 00 88 */	beq lbl_809EFE04
/* 809EFD80  7F C3 F3 78 */	mr r3, r30
/* 809EFD84  80 9E 0D 84 */	lwz r4, 0xd84(r30)
/* 809EFD88  4B 76 81 A1 */	bl ObjCreate__10daNpcCd2_cFi
/* 809EFD8C  90 7E 0A C8 */	stw r3, 0xac8(r30)
/* 809EFD90  30 03 FF FF */	addic r0, r3, -1
/* 809EFD94  7C 00 19 10 */	subfe r0, r0, r3
/* 809EFD98  54 1F 06 3F */	clrlwi. r31, r0, 0x18
/* 809EFD9C  40 82 00 0C */	bne lbl_809EFDA8
/* 809EFDA0  80 7E 05 8C */	lwz r3, 0x58c(r30)
/* 809EFDA4  4B 62 15 6D */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_809EFDA8:
/* 809EFDA8  80 1E 0A 98 */	lwz r0, 0xa98(r30)
/* 809EFDAC  2C 00 00 01 */	cmpwi r0, 1
/* 809EFDB0  40 82 00 54 */	bne lbl_809EFE04
/* 809EFDB4  3C 60 80 9F */	lis r3, d_a_npc_guard__stringBase0@ha /* 0x809F2D48@ha */
/* 809EFDB8  38 63 2D 48 */	addi r3, r3, d_a_npc_guard__stringBase0@l /* 0x809F2D48@l */
/* 809EFDBC  38 80 00 11 */	li r4, 0x11
/* 809EFDC0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809EFDC4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809EFDC8  3C A5 00 02 */	addis r5, r5, 2
/* 809EFDCC  38 C0 00 80 */	li r6, 0x80
/* 809EFDD0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809EFDD4  4B 64 C5 19 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809EFDD8  3C 80 00 08 */	lis r4, 8
/* 809EFDDC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 809EFDE0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 809EFDE4  4B 62 4E 71 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 809EFDE8  90 7E 0A CC */	stw r3, 0xacc(r30)
/* 809EFDEC  80 1E 0A CC */	lwz r0, 0xacc(r30)
/* 809EFDF0  28 00 00 00 */	cmplwi r0, 0
/* 809EFDF4  40 82 00 10 */	bne lbl_809EFE04
/* 809EFDF8  80 7E 05 8C */	lwz r3, 0x58c(r30)
/* 809EFDFC  4B 62 15 15 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 809EFE00  3B E0 00 00 */	li r31, 0
lbl_809EFE04:
/* 809EFE04  7F E3 FB 78 */	mr r3, r31
/* 809EFE08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809EFE0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 809EFE10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809EFE14  7C 08 03 A6 */	mtlr r0
/* 809EFE18  38 21 00 10 */	addi r1, r1, 0x10
/* 809EFE1C  4E 80 00 20 */	blr 
