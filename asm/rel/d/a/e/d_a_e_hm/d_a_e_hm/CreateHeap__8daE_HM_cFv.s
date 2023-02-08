lbl_806E043C:
/* 806E043C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806E0440  7C 08 02 A6 */	mflr r0
/* 806E0444  90 01 00 34 */	stw r0, 0x34(r1)
/* 806E0448  39 61 00 30 */	addi r11, r1, 0x30
/* 806E044C  4B C8 1D 8D */	bl _savegpr_28
/* 806E0450  7C 7D 1B 78 */	mr r29, r3
/* 806E0454  3C 60 80 6E */	lis r3, d_a_e_hm__stringBase0@ha /* 0x806E5A74@ha */
/* 806E0458  38 63 5A 74 */	addi r3, r3, d_a_e_hm__stringBase0@l /* 0x806E5A74@l */
/* 806E045C  38 80 00 11 */	li r4, 0x11
/* 806E0460  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806E0464  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806E0468  3F E5 00 02 */	addis r31, r5, 2
/* 806E046C  3B FF C2 F8 */	addi r31, r31, -15624
/* 806E0470  7F E5 FB 78 */	mr r5, r31
/* 806E0474  38 C0 00 80 */	li r6, 0x80
/* 806E0478  4B 95 BE 75 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806E047C  7C 7E 1B 78 */	mr r30, r3
/* 806E0480  38 60 00 58 */	li r3, 0x58
/* 806E0484  4B BE E7 C9 */	bl __nw__FUl
/* 806E0488  7C 7C 1B 79 */	or. r28, r3, r3
/* 806E048C  41 82 00 68 */	beq lbl_806E04F4
/* 806E0490  3C 60 80 6E */	lis r3, d_a_e_hm__stringBase0@ha /* 0x806E5A74@ha */
/* 806E0494  38 63 5A 74 */	addi r3, r3, d_a_e_hm__stringBase0@l /* 0x806E5A74@l */
/* 806E0498  38 80 00 0D */	li r4, 0xd
/* 806E049C  7F E5 FB 78 */	mr r5, r31
/* 806E04A0  38 C0 00 80 */	li r6, 0x80
/* 806E04A4  4B 95 BE 49 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806E04A8  7C 67 1B 78 */	mr r7, r3
/* 806E04AC  38 1D 06 30 */	addi r0, r29, 0x630
/* 806E04B0  90 01 00 08 */	stw r0, 8(r1)
/* 806E04B4  3C 00 00 08 */	lis r0, 8
/* 806E04B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 806E04BC  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000284@ha */
/* 806E04C0  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11000284@l */
/* 806E04C4  90 01 00 10 */	stw r0, 0x10(r1)
/* 806E04C8  7F 83 E3 78 */	mr r3, r28
/* 806E04CC  7F C4 F3 78 */	mr r4, r30
/* 806E04D0  38 A0 00 00 */	li r5, 0
/* 806E04D4  38 C0 00 00 */	li r6, 0
/* 806E04D8  39 00 00 02 */	li r8, 2
/* 806E04DC  3D 20 80 6E */	lis r9, lit_3793@ha /* 0x806E5928@ha */
/* 806E04E0  C0 29 59 28 */	lfs f1, lit_3793@l(r9)  /* 0x806E5928@l */
/* 806E04E4  39 20 00 00 */	li r9, 0
/* 806E04E8  39 40 FF FF */	li r10, -1
/* 806E04EC  4B 93 02 E5 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 806E04F0  7C 7C 1B 78 */	mr r28, r3
lbl_806E04F4:
/* 806E04F4  93 9D 06 18 */	stw r28, 0x618(r29)
/* 806E04F8  80 7D 06 18 */	lwz r3, 0x618(r29)
/* 806E04FC  28 03 00 00 */	cmplwi r3, 0
/* 806E0500  41 82 00 10 */	beq lbl_806E0510
/* 806E0504  83 C3 00 04 */	lwz r30, 4(r3)
/* 806E0508  28 1E 00 00 */	cmplwi r30, 0
/* 806E050C  40 82 00 0C */	bne lbl_806E0518
lbl_806E0510:
/* 806E0510  38 60 00 00 */	li r3, 0
/* 806E0514  48 00 01 2C */	b lbl_806E0640
lbl_806E0518:
/* 806E0518  38 60 00 18 */	li r3, 0x18
/* 806E051C  4B BE E7 31 */	bl __nw__FUl
/* 806E0520  7C 7C 1B 79 */	or. r28, r3, r3
/* 806E0524  41 82 00 20 */	beq lbl_806E0544
/* 806E0528  3C 80 80 6E */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x806E5BB8@ha */
/* 806E052C  38 04 5B B8 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x806E5BB8@l */
/* 806E0530  90 1C 00 00 */	stw r0, 0(r28)
/* 806E0534  38 80 00 00 */	li r4, 0
/* 806E0538  4B C4 7E C5 */	bl init__12J3DFrameCtrlFs
/* 806E053C  38 00 00 00 */	li r0, 0
/* 806E0540  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_806E0544:
/* 806E0544  93 9D 06 10 */	stw r28, 0x610(r29)
/* 806E0548  80 1D 06 10 */	lwz r0, 0x610(r29)
/* 806E054C  28 00 00 00 */	cmplwi r0, 0
/* 806E0550  40 82 00 0C */	bne lbl_806E055C
/* 806E0554  38 60 00 00 */	li r3, 0
/* 806E0558  48 00 00 E8 */	b lbl_806E0640
lbl_806E055C:
/* 806E055C  3C 60 80 6E */	lis r3, d_a_e_hm__stringBase0@ha /* 0x806E5A74@ha */
/* 806E0560  38 63 5A 74 */	addi r3, r3, d_a_e_hm__stringBase0@l /* 0x806E5A74@l */
/* 806E0564  38 80 00 14 */	li r4, 0x14
/* 806E0568  7F E5 FB 78 */	mr r5, r31
/* 806E056C  38 C0 00 80 */	li r6, 0x80
/* 806E0570  4B 95 BD 7D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806E0574  7C 65 1B 78 */	mr r5, r3
/* 806E0578  80 9E 00 04 */	lwz r4, 4(r30)
/* 806E057C  80 7D 06 10 */	lwz r3, 0x610(r29)
/* 806E0580  38 84 00 58 */	addi r4, r4, 0x58
/* 806E0584  38 C0 00 01 */	li r6, 1
/* 806E0588  38 E0 00 02 */	li r7, 2
/* 806E058C  3D 00 80 6E */	lis r8, lit_3793@ha /* 0x806E5928@ha */
/* 806E0590  C0 28 59 28 */	lfs f1, lit_3793@l(r8)  /* 0x806E5928@l */
/* 806E0594  39 00 00 00 */	li r8, 0
/* 806E0598  39 20 FF FF */	li r9, -1
/* 806E059C  4B 92 D1 71 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 806E05A0  2C 03 00 00 */	cmpwi r3, 0
/* 806E05A4  40 82 00 0C */	bne lbl_806E05B0
/* 806E05A8  38 60 00 00 */	li r3, 0
/* 806E05AC  48 00 00 94 */	b lbl_806E0640
lbl_806E05B0:
/* 806E05B0  38 60 00 18 */	li r3, 0x18
/* 806E05B4  4B BE E6 99 */	bl __nw__FUl
/* 806E05B8  7C 7C 1B 79 */	or. r28, r3, r3
/* 806E05BC  41 82 00 20 */	beq lbl_806E05DC
/* 806E05C0  3C 80 80 6E */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x806E5BB8@ha */
/* 806E05C4  38 04 5B B8 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x806E5BB8@l */
/* 806E05C8  90 1C 00 00 */	stw r0, 0(r28)
/* 806E05CC  38 80 00 00 */	li r4, 0
/* 806E05D0  4B C4 7E 2D */	bl init__12J3DFrameCtrlFs
/* 806E05D4  38 00 00 00 */	li r0, 0
/* 806E05D8  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_806E05DC:
/* 806E05DC  93 9D 06 14 */	stw r28, 0x614(r29)
/* 806E05E0  80 1D 06 14 */	lwz r0, 0x614(r29)
/* 806E05E4  28 00 00 00 */	cmplwi r0, 0
/* 806E05E8  40 82 00 0C */	bne lbl_806E05F4
/* 806E05EC  38 60 00 00 */	li r3, 0
/* 806E05F0  48 00 00 50 */	b lbl_806E0640
lbl_806E05F4:
/* 806E05F4  3C 60 80 6E */	lis r3, d_a_e_hm__stringBase0@ha /* 0x806E5A74@ha */
/* 806E05F8  38 63 5A 74 */	addi r3, r3, d_a_e_hm__stringBase0@l /* 0x806E5A74@l */
/* 806E05FC  38 80 00 17 */	li r4, 0x17
/* 806E0600  7F E5 FB 78 */	mr r5, r31
/* 806E0604  38 C0 00 80 */	li r6, 0x80
/* 806E0608  4B 95 BC E5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806E060C  7C 65 1B 78 */	mr r5, r3
/* 806E0610  80 9E 00 04 */	lwz r4, 4(r30)
/* 806E0614  80 7D 06 14 */	lwz r3, 0x614(r29)
/* 806E0618  38 84 00 58 */	addi r4, r4, 0x58
/* 806E061C  38 C0 00 01 */	li r6, 1
/* 806E0620  38 E0 00 02 */	li r7, 2
/* 806E0624  3D 00 80 6E */	lis r8, lit_3793@ha /* 0x806E5928@ha */
/* 806E0628  C0 28 59 28 */	lfs f1, lit_3793@l(r8)  /* 0x806E5928@l */
/* 806E062C  39 00 00 00 */	li r8, 0
/* 806E0630  39 20 FF FF */	li r9, -1
/* 806E0634  4B 92 D0 09 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 806E0638  30 03 FF FF */	addic r0, r3, -1
/* 806E063C  7C 60 19 10 */	subfe r3, r0, r3
lbl_806E0640:
/* 806E0640  39 61 00 30 */	addi r11, r1, 0x30
/* 806E0644  4B C8 1B E1 */	bl _restgpr_28
/* 806E0648  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806E064C  7C 08 03 A6 */	mtlr r0
/* 806E0650  38 21 00 30 */	addi r1, r1, 0x30
/* 806E0654  4E 80 00 20 */	blr 
