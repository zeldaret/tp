lbl_8079764C:
/* 8079764C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80797650  7C 08 02 A6 */	mflr r0
/* 80797654  90 01 00 34 */	stw r0, 0x34(r1)
/* 80797658  39 61 00 30 */	addi r11, r1, 0x30
/* 8079765C  4B BC AB 7D */	bl _savegpr_28
/* 80797660  7C 7F 1B 78 */	mr r31, r3
/* 80797664  3C 60 80 7A */	lis r3, d_a_e_sm__stringBase0@ha /* 0x80798780@ha */
/* 80797668  38 63 87 80 */	addi r3, r3, d_a_e_sm__stringBase0@l /* 0x80798780@l */
/* 8079766C  38 80 00 21 */	li r4, 0x21
/* 80797670  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80797674  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80797678  3F 85 00 02 */	addis r28, r5, 2
/* 8079767C  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80797680  7F 85 E3 78 */	mr r5, r28
/* 80797684  38 C0 00 80 */	li r6, 0x80
/* 80797688  4B 8A 4C 65 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8079768C  38 80 00 00 */	li r4, 0
/* 80797690  3C A0 11 02 */	lis r5, 0x1102 /* 0x11020203@ha */
/* 80797694  38 A5 02 03 */	addi r5, r5, 0x0203 /* 0x11020203@l */
/* 80797698  4B 87 D5 BD */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8079769C  90 7F 05 B8 */	stw r3, 0x5b8(r31)
/* 807976A0  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 807976A4  28 00 00 00 */	cmplwi r0, 0
/* 807976A8  40 82 00 0C */	bne lbl_807976B4
/* 807976AC  38 60 00 00 */	li r3, 0
/* 807976B0  48 00 00 BC */	b lbl_8079776C
lbl_807976B4:
/* 807976B4  38 60 00 58 */	li r3, 0x58
/* 807976B8  4B B3 75 95 */	bl __nw__FUl
/* 807976BC  7C 7E 1B 79 */	or. r30, r3, r3
/* 807976C0  41 82 00 84 */	beq lbl_80797744
/* 807976C4  3C 60 80 7A */	lis r3, d_a_e_sm__stringBase0@ha /* 0x80798780@ha */
/* 807976C8  38 63 87 80 */	addi r3, r3, d_a_e_sm__stringBase0@l /* 0x80798780@l */
/* 807976CC  38 80 00 1C */	li r4, 0x1c
/* 807976D0  7F 85 E3 78 */	mr r5, r28
/* 807976D4  38 C0 00 80 */	li r6, 0x80
/* 807976D8  4B 8A 4C 15 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807976DC  7C 7D 1B 78 */	mr r29, r3
/* 807976E0  3C 60 80 7A */	lis r3, d_a_e_sm__stringBase0@ha /* 0x80798780@ha */
/* 807976E4  38 63 87 80 */	addi r3, r3, d_a_e_sm__stringBase0@l /* 0x80798780@l */
/* 807976E8  38 80 00 24 */	li r4, 0x24
/* 807976EC  7F 85 E3 78 */	mr r5, r28
/* 807976F0  38 C0 00 80 */	li r6, 0x80
/* 807976F4  4B 8A 4B F9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807976F8  7C 64 1B 78 */	mr r4, r3
/* 807976FC  38 1F 05 BC */	addi r0, r31, 0x5bc
/* 80797700  90 01 00 08 */	stw r0, 8(r1)
/* 80797704  3C 00 00 08 */	lis r0, 8
/* 80797708  90 01 00 0C */	stw r0, 0xc(r1)
/* 8079770C  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80797710  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80797714  90 01 00 10 */	stw r0, 0x10(r1)
/* 80797718  7F C3 F3 78 */	mr r3, r30
/* 8079771C  38 A0 00 00 */	li r5, 0
/* 80797720  38 C0 00 00 */	li r6, 0
/* 80797724  7F A7 EB 78 */	mr r7, r29
/* 80797728  39 00 00 02 */	li r8, 2
/* 8079772C  3D 20 80 7A */	lis r9, lit_3922@ha /* 0x807985E8@ha */
/* 80797730  C0 29 85 E8 */	lfs f1, lit_3922@l(r9)  /* 0x807985E8@l */
/* 80797734  39 20 00 00 */	li r9, 0
/* 80797738  39 40 FF FF */	li r10, -1
/* 8079773C  4B 87 90 95 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80797740  7C 7E 1B 78 */	mr r30, r3
lbl_80797744:
/* 80797744  93 DF 05 B4 */	stw r30, 0x5b4(r31)
/* 80797748  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8079774C  28 03 00 00 */	cmplwi r3, 0
/* 80797750  41 82 00 10 */	beq lbl_80797760
/* 80797754  80 03 00 04 */	lwz r0, 4(r3)
/* 80797758  28 00 00 00 */	cmplwi r0, 0
/* 8079775C  40 82 00 0C */	bne lbl_80797768
lbl_80797760:
/* 80797760  38 60 00 00 */	li r3, 0
/* 80797764  48 00 00 08 */	b lbl_8079776C
lbl_80797768:
/* 80797768  38 60 00 01 */	li r3, 1
lbl_8079776C:
/* 8079776C  39 61 00 30 */	addi r11, r1, 0x30
/* 80797770  4B BC AA B5 */	bl _restgpr_28
/* 80797774  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80797778  7C 08 03 A6 */	mtlr r0
/* 8079777C  38 21 00 30 */	addi r1, r1, 0x30
/* 80797780  4E 80 00 20 */	blr 
