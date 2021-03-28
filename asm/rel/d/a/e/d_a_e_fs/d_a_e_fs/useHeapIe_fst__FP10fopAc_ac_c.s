lbl_806BD740:
/* 806BD740  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806BD744  7C 08 02 A6 */	mflr r0
/* 806BD748  90 01 00 34 */	stw r0, 0x34(r1)
/* 806BD74C  39 61 00 30 */	addi r11, r1, 0x30
/* 806BD750  4B CA 4A 88 */	b _savegpr_28
/* 806BD754  7C 7F 1B 78 */	mr r31, r3
/* 806BD758  38 60 00 58 */	li r3, 0x58
/* 806BD75C  4B C1 14 F0 */	b __nw__FUl
/* 806BD760  7C 7E 1B 79 */	or. r30, r3, r3
/* 806BD764  41 82 00 94 */	beq lbl_806BD7F8
/* 806BD768  3C 60 80 6C */	lis r3, stringBase0@ha
/* 806BD76C  38 63 E5 64 */	addi r3, r3, stringBase0@l
/* 806BD770  38 80 00 09 */	li r4, 9
/* 806BD774  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806BD778  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806BD77C  3F 85 00 02 */	addis r28, r5, 2
/* 806BD780  3B 9C C2 F8 */	addi r28, r28, -15624
/* 806BD784  7F 85 E3 78 */	mr r5, r28
/* 806BD788  38 C0 00 80 */	li r6, 0x80
/* 806BD78C  4B 97 EB 60 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806BD790  7C 7D 1B 78 */	mr r29, r3
/* 806BD794  3C 60 80 6C */	lis r3, stringBase0@ha
/* 806BD798  38 63 E5 64 */	addi r3, r3, stringBase0@l
/* 806BD79C  38 80 00 0C */	li r4, 0xc
/* 806BD7A0  7F 85 E3 78 */	mr r5, r28
/* 806BD7A4  38 C0 00 80 */	li r6, 0x80
/* 806BD7A8  4B 97 EB 44 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806BD7AC  7C 64 1B 78 */	mr r4, r3
/* 806BD7B0  38 1F 05 D4 */	addi r0, r31, 0x5d4
/* 806BD7B4  90 01 00 08 */	stw r0, 8(r1)
/* 806BD7B8  3C 00 00 08 */	lis r0, 8
/* 806BD7BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 806BD7C0  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 806BD7C4  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 806BD7C8  90 01 00 10 */	stw r0, 0x10(r1)
/* 806BD7CC  7F C3 F3 78 */	mr r3, r30
/* 806BD7D0  38 A0 00 00 */	li r5, 0
/* 806BD7D4  38 C0 00 00 */	li r6, 0
/* 806BD7D8  7F A7 EB 78 */	mr r7, r29
/* 806BD7DC  39 00 00 00 */	li r8, 0
/* 806BD7E0  3D 20 80 6C */	lis r9, lit_3919@ha
/* 806BD7E4  C0 29 E4 94 */	lfs f1, lit_3919@l(r9)
/* 806BD7E8  39 20 00 00 */	li r9, 0
/* 806BD7EC  39 40 FF FF */	li r10, -1
/* 806BD7F0  4B 95 2F E0 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 806BD7F4  7C 7E 1B 78 */	mr r30, r3
lbl_806BD7F8:
/* 806BD7F8  93 DF 05 D0 */	stw r30, 0x5d0(r31)
/* 806BD7FC  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806BD800  28 03 00 00 */	cmplwi r3, 0
/* 806BD804  41 82 00 10 */	beq lbl_806BD814
/* 806BD808  80 03 00 04 */	lwz r0, 4(r3)
/* 806BD80C  28 00 00 00 */	cmplwi r0, 0
/* 806BD810  40 82 00 0C */	bne lbl_806BD81C
lbl_806BD814:
/* 806BD814  38 60 00 00 */	li r3, 0
/* 806BD818  48 00 00 08 */	b lbl_806BD820
lbl_806BD81C:
/* 806BD81C  38 60 00 01 */	li r3, 1
lbl_806BD820:
/* 806BD820  39 61 00 30 */	addi r11, r1, 0x30
/* 806BD824  4B CA 4A 00 */	b _restgpr_28
/* 806BD828  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806BD82C  7C 08 03 A6 */	mtlr r0
/* 806BD830  38 21 00 30 */	addi r1, r1, 0x30
/* 806BD834  4E 80 00 20 */	blr 
