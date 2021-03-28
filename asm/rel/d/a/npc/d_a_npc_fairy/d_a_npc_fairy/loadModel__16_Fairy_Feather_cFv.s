lbl_809B1BC0:
/* 809B1BC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809B1BC4  7C 08 02 A6 */	mflr r0
/* 809B1BC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 809B1BCC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809B1BD0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 809B1BD4  7C 7E 1B 78 */	mr r30, r3
/* 809B1BD8  3C 60 80 9C */	lis r3, l_resNameList@ha
/* 809B1BDC  38 63 95 F8 */	addi r3, r3, l_resNameList@l
/* 809B1BE0  80 63 00 04 */	lwz r3, 4(r3)
/* 809B1BE4  38 80 00 22 */	li r4, 0x22
/* 809B1BE8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 809B1BEC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 809B1BF0  3C A5 00 02 */	addis r5, r5, 2
/* 809B1BF4  38 C0 00 80 */	li r6, 0x80
/* 809B1BF8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809B1BFC  4B 68 A6 F0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809B1C00  7C 7F 1B 78 */	mr r31, r3
/* 809B1C04  38 60 00 58 */	li r3, 0x58
/* 809B1C08  4B 91 D0 44 */	b __nw__FUl
/* 809B1C0C  7C 60 1B 79 */	or. r0, r3, r3
/* 809B1C10  41 82 00 4C */	beq lbl_809B1C5C
/* 809B1C14  38 1E 00 40 */	addi r0, r30, 0x40
/* 809B1C18  90 01 00 08 */	stw r0, 8(r1)
/* 809B1C1C  38 00 00 00 */	li r0, 0
/* 809B1C20  90 01 00 0C */	stw r0, 0xc(r1)
/* 809B1C24  3C 80 11 00 */	lis r4, 0x1100 /* 0x11000284@ha */
/* 809B1C28  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11000284@l */
/* 809B1C2C  90 01 00 10 */	stw r0, 0x10(r1)
/* 809B1C30  7F E4 FB 78 */	mr r4, r31
/* 809B1C34  38 A0 00 00 */	li r5, 0
/* 809B1C38  38 C0 00 00 */	li r6, 0
/* 809B1C3C  38 E0 00 00 */	li r7, 0
/* 809B1C40  39 00 FF FF */	li r8, -1
/* 809B1C44  3D 20 80 9C */	lis r9, lit_3916@ha
/* 809B1C48  C0 29 93 78 */	lfs f1, lit_3916@l(r9)
/* 809B1C4C  39 20 00 00 */	li r9, 0
/* 809B1C50  39 40 FF FF */	li r10, -1
/* 809B1C54  4B 65 EB 7C */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 809B1C58  7C 60 1B 78 */	mr r0, r3
lbl_809B1C5C:
/* 809B1C5C  90 1E 00 00 */	stw r0, 0(r30)
/* 809B1C60  80 7E 00 00 */	lwz r3, 0(r30)
/* 809B1C64  28 03 00 00 */	cmplwi r3, 0
/* 809B1C68  41 82 00 1C */	beq lbl_809B1C84
/* 809B1C6C  80 03 00 04 */	lwz r0, 4(r3)
/* 809B1C70  28 00 00 00 */	cmplwi r0, 0
/* 809B1C74  40 82 00 10 */	bne lbl_809B1C84
/* 809B1C78  4B 65 F6 98 */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 809B1C7C  38 00 00 00 */	li r0, 0
/* 809B1C80  90 1E 00 00 */	stw r0, 0(r30)
lbl_809B1C84:
/* 809B1C84  80 1E 00 00 */	lwz r0, 0(r30)
/* 809B1C88  28 00 00 00 */	cmplwi r0, 0
/* 809B1C8C  40 82 00 0C */	bne lbl_809B1C98
/* 809B1C90  38 60 00 00 */	li r3, 0
/* 809B1C94  48 00 00 38 */	b lbl_809B1CCC
lbl_809B1C98:
/* 809B1C98  38 A0 00 00 */	li r5, 0
/* 809B1C9C  3C 60 80 9B */	lis r3, ctrlJointCallBack__16_Fairy_Feather_cFP8J3DJointi@ha
/* 809B1CA0  38 63 1F 64 */	addi r3, r3, ctrlJointCallBack__16_Fairy_Feather_cFP8J3DJointi@l
/* 809B1CA4  48 00 00 18 */	b lbl_809B1CBC
lbl_809B1CA8:
/* 809B1CA8  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 809B1CAC  54 A0 13 BA */	rlwinm r0, r5, 2, 0xe, 0x1d
/* 809B1CB0  7C 84 00 2E */	lwzx r4, r4, r0
/* 809B1CB4  90 64 00 04 */	stw r3, 4(r4)
/* 809B1CB8  38 A5 00 01 */	addi r5, r5, 1
lbl_809B1CBC:
/* 809B1CBC  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 809B1CC0  28 00 00 1A */	cmplwi r0, 0x1a
/* 809B1CC4  41 80 FF E4 */	blt lbl_809B1CA8
/* 809B1CC8  38 60 00 01 */	li r3, 1
lbl_809B1CCC:
/* 809B1CCC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809B1CD0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 809B1CD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809B1CD8  7C 08 03 A6 */	mtlr r0
/* 809B1CDC  38 21 00 20 */	addi r1, r1, 0x20
/* 809B1CE0  4E 80 00 20 */	blr 
