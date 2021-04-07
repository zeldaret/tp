lbl_805DE464:
/* 805DE464  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805DE468  7C 08 02 A6 */	mflr r0
/* 805DE46C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805DE470  39 61 00 30 */	addi r11, r1, 0x30
/* 805DE474  4B D8 3D 65 */	bl _savegpr_28
/* 805DE478  7C 7E 1B 78 */	mr r30, r3
/* 805DE47C  3C 60 80 5F */	lis r3, d_a_b_gg__stringBase0@ha /* 0x805ED3D4@ha */
/* 805DE480  38 63 D3 D4 */	addi r3, r3, d_a_b_gg__stringBase0@l /* 0x805ED3D4@l */
/* 805DE484  38 80 00 23 */	li r4, 0x23
/* 805DE488  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805DE48C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805DE490  3F E5 00 02 */	addis r31, r5, 2
/* 805DE494  3B FF C2 F8 */	addi r31, r31, -15624
/* 805DE498  7F E5 FB 78 */	mr r5, r31
/* 805DE49C  38 C0 00 80 */	li r6, 0x80
/* 805DE4A0  4B A5 DE 4D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805DE4A4  7C 7C 1B 78 */	mr r28, r3
/* 805DE4A8  38 60 00 58 */	li r3, 0x58
/* 805DE4AC  4B CF 07 A1 */	bl __nw__FUl
/* 805DE4B0  7C 7D 1B 79 */	or. r29, r3, r3
/* 805DE4B4  41 82 00 68 */	beq lbl_805DE51C
/* 805DE4B8  3C 60 80 5F */	lis r3, d_a_b_gg__stringBase0@ha /* 0x805ED3D4@ha */
/* 805DE4BC  38 63 D3 D4 */	addi r3, r3, d_a_b_gg__stringBase0@l /* 0x805ED3D4@l */
/* 805DE4C0  38 80 00 0E */	li r4, 0xe
/* 805DE4C4  7F E5 FB 78 */	mr r5, r31
/* 805DE4C8  38 C0 00 80 */	li r6, 0x80
/* 805DE4CC  4B A5 DE 21 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805DE4D0  7C 67 1B 78 */	mr r7, r3
/* 805DE4D4  38 1E 0E 4C */	addi r0, r30, 0xe4c
/* 805DE4D8  90 01 00 08 */	stw r0, 8(r1)
/* 805DE4DC  3C 00 00 08 */	lis r0, 8
/* 805DE4E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805DE4E4  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 805DE4E8  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 805DE4EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 805DE4F0  7F A3 EB 78 */	mr r3, r29
/* 805DE4F4  7F 84 E3 78 */	mr r4, r28
/* 805DE4F8  38 A0 00 00 */	li r5, 0
/* 805DE4FC  38 C0 00 00 */	li r6, 0
/* 805DE500  39 00 00 02 */	li r8, 2
/* 805DE504  3D 20 80 5F */	lis r9, lit_3913@ha /* 0x805ED068@ha */
/* 805DE508  C0 29 D0 68 */	lfs f1, lit_3913@l(r9)  /* 0x805ED068@l */
/* 805DE50C  39 20 00 00 */	li r9, 0
/* 805DE510  39 40 FF FF */	li r10, -1
/* 805DE514  4B A3 22 BD */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 805DE518  7C 7D 1B 78 */	mr r29, r3
lbl_805DE51C:
/* 805DE51C  93 BE 0E 30 */	stw r29, 0xe30(r30)
/* 805DE520  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805DE524  28 03 00 00 */	cmplwi r3, 0
/* 805DE528  41 82 00 10 */	beq lbl_805DE538
/* 805DE52C  80 03 00 04 */	lwz r0, 4(r3)
/* 805DE530  28 00 00 00 */	cmplwi r0, 0
/* 805DE534  40 82 00 0C */	bne lbl_805DE540
lbl_805DE538:
/* 805DE538  38 60 00 00 */	li r3, 0
/* 805DE53C  48 00 00 DC */	b lbl_805DE618
lbl_805DE540:
/* 805DE540  3C 60 80 5F */	lis r3, d_a_b_gg__stringBase0@ha /* 0x805ED3D4@ha */
/* 805DE544  38 63 D3 D4 */	addi r3, r3, d_a_b_gg__stringBase0@l /* 0x805ED3D4@l */
/* 805DE548  38 80 00 25 */	li r4, 0x25
/* 805DE54C  7F E5 FB 78 */	mr r5, r31
/* 805DE550  38 C0 00 80 */	li r6, 0x80
/* 805DE554  4B A5 DD 99 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805DE558  3C 80 00 08 */	lis r4, 8
/* 805DE55C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 805DE560  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 805DE564  4B A3 66 F1 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 805DE568  90 7E 0E 34 */	stw r3, 0xe34(r30)
/* 805DE56C  80 1E 0E 34 */	lwz r0, 0xe34(r30)
/* 805DE570  28 00 00 00 */	cmplwi r0, 0
/* 805DE574  40 82 00 0C */	bne lbl_805DE580
/* 805DE578  38 60 00 00 */	li r3, 0
/* 805DE57C  48 00 00 9C */	b lbl_805DE618
lbl_805DE580:
/* 805DE580  3C 60 80 5F */	lis r3, d_a_b_gg__stringBase0@ha /* 0x805ED3D4@ha */
/* 805DE584  38 63 D3 D4 */	addi r3, r3, d_a_b_gg__stringBase0@l /* 0x805ED3D4@l */
/* 805DE588  38 80 00 26 */	li r4, 0x26
/* 805DE58C  7F E5 FB 78 */	mr r5, r31
/* 805DE590  38 C0 00 80 */	li r6, 0x80
/* 805DE594  4B A5 DD 59 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805DE598  3C 80 00 08 */	lis r4, 8
/* 805DE59C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 805DE5A0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 805DE5A4  4B A3 66 B1 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 805DE5A8  90 7E 0E 38 */	stw r3, 0xe38(r30)
/* 805DE5AC  80 1E 0E 38 */	lwz r0, 0xe38(r30)
/* 805DE5B0  28 00 00 00 */	cmplwi r0, 0
/* 805DE5B4  40 82 00 0C */	bne lbl_805DE5C0
/* 805DE5B8  38 60 00 00 */	li r3, 0
/* 805DE5BC  48 00 00 5C */	b lbl_805DE618
lbl_805DE5C0:
/* 805DE5C0  88 1E 06 90 */	lbz r0, 0x690(r30)
/* 805DE5C4  28 00 00 00 */	cmplwi r0, 0
/* 805DE5C8  41 82 00 0C */	beq lbl_805DE5D4
/* 805DE5CC  28 00 00 FF */	cmplwi r0, 0xff
/* 805DE5D0  40 82 00 44 */	bne lbl_805DE614
lbl_805DE5D4:
/* 805DE5D4  3C 60 80 5F */	lis r3, d_a_b_gg__stringBase0@ha /* 0x805ED3D4@ha */
/* 805DE5D8  38 63 D3 D4 */	addi r3, r3, d_a_b_gg__stringBase0@l /* 0x805ED3D4@l */
/* 805DE5DC  38 80 00 24 */	li r4, 0x24
/* 805DE5E0  7F E5 FB 78 */	mr r5, r31
/* 805DE5E4  38 C0 00 80 */	li r6, 0x80
/* 805DE5E8  4B A5 DD 05 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805DE5EC  3C 80 00 08 */	lis r4, 8
/* 805DE5F0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 805DE5F4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 805DE5F8  4B A3 66 5D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 805DE5FC  90 7E 0E 3C */	stw r3, 0xe3c(r30)
/* 805DE600  80 1E 0E 3C */	lwz r0, 0xe3c(r30)
/* 805DE604  28 00 00 00 */	cmplwi r0, 0
/* 805DE608  40 82 00 0C */	bne lbl_805DE614
/* 805DE60C  38 60 00 00 */	li r3, 0
/* 805DE610  48 00 00 08 */	b lbl_805DE618
lbl_805DE614:
/* 805DE614  38 60 00 01 */	li r3, 1
lbl_805DE618:
/* 805DE618  39 61 00 30 */	addi r11, r1, 0x30
/* 805DE61C  4B D8 3C 09 */	bl _restgpr_28
/* 805DE620  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805DE624  7C 08 03 A6 */	mtlr r0
/* 805DE628  38 21 00 30 */	addi r1, r1, 0x30
/* 805DE62C  4E 80 00 20 */	blr 
