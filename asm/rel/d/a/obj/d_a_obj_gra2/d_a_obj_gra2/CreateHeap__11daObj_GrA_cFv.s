lbl_80C00614:
/* 80C00614  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C00618  7C 08 02 A6 */	mflr r0
/* 80C0061C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C00620  39 61 00 30 */	addi r11, r1, 0x30
/* 80C00624  4B 76 1B B9 */	bl _savegpr_29
/* 80C00628  7C 7D 1B 78 */	mr r29, r3
/* 80C0062C  3C 60 80 C1 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80C0FE68@ha */
/* 80C00630  3B E3 FE 68 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80C0FE68@l */
/* 80C00634  4B 5A BF 49 */	bl dKy_darkworld_check__Fv
/* 80C00638  98 7D 08 44 */	stb r3, 0x844(r29)
/* 80C0063C  38 7F 00 84 */	addi r3, r31, 0x84
/* 80C00640  80 03 00 04 */	lwz r0, 4(r3)
/* 80C00644  54 00 10 3A */	slwi r0, r0, 2
/* 80C00648  38 7F 00 70 */	addi r3, r31, 0x70
/* 80C0064C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C00650  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 80C00654  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C00658  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C0065C  3C A5 00 02 */	addis r5, r5, 2
/* 80C00660  38 C0 00 80 */	li r6, 0x80
/* 80C00664  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C00668  4B 43 BC 85 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C0066C  7C 7E 1B 78 */	mr r30, r3
/* 80C00670  38 60 00 58 */	li r3, 0x58
/* 80C00674  4B 6C E5 D9 */	bl __nw__FUl
/* 80C00678  7C 60 1B 79 */	or. r0, r3, r3
/* 80C0067C  41 82 00 4C */	beq lbl_80C006C8
/* 80C00680  38 1D 07 58 */	addi r0, r29, 0x758
/* 80C00684  90 01 00 08 */	stw r0, 8(r1)
/* 80C00688  3C 00 00 08 */	lis r0, 8
/* 80C0068C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C00690  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80C00694  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80C00698  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C0069C  7F C4 F3 78 */	mr r4, r30
/* 80C006A0  38 A0 00 00 */	li r5, 0
/* 80C006A4  38 C0 00 00 */	li r6, 0
/* 80C006A8  38 E0 00 00 */	li r7, 0
/* 80C006AC  39 00 FF FF */	li r8, -1
/* 80C006B0  3D 20 80 C1 */	lis r9, lit_4332@ha /* 0x80C0FB94@ha */
/* 80C006B4  C0 29 FB 94 */	lfs f1, lit_4332@l(r9)  /* 0x80C0FB94@l */
/* 80C006B8  39 20 00 00 */	li r9, 0
/* 80C006BC  39 40 FF FF */	li r10, -1
/* 80C006C0  4B 41 01 11 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80C006C4  7C 60 1B 78 */	mr r0, r3
lbl_80C006C8:
/* 80C006C8  90 1D 07 54 */	stw r0, 0x754(r29)
/* 80C006CC  80 7D 07 54 */	lwz r3, 0x754(r29)
/* 80C006D0  28 03 00 00 */	cmplwi r3, 0
/* 80C006D4  41 82 00 1C */	beq lbl_80C006F0
/* 80C006D8  80 03 00 04 */	lwz r0, 4(r3)
/* 80C006DC  28 00 00 00 */	cmplwi r0, 0
/* 80C006E0  40 82 00 10 */	bne lbl_80C006F0
/* 80C006E4  4B 41 0C 2D */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 80C006E8  38 00 00 00 */	li r0, 0
/* 80C006EC  90 1D 07 54 */	stw r0, 0x754(r29)
lbl_80C006F0:
/* 80C006F0  80 7D 07 54 */	lwz r3, 0x754(r29)
/* 80C006F4  28 03 00 00 */	cmplwi r3, 0
/* 80C006F8  40 82 00 0C */	bne lbl_80C00704
/* 80C006FC  38 60 00 00 */	li r3, 0
/* 80C00700  48 00 00 78 */	b lbl_80C00778
lbl_80C00704:
/* 80C00704  80 A3 00 04 */	lwz r5, 4(r3)
/* 80C00708  38 C0 00 00 */	li r6, 0
/* 80C0070C  3C 60 80 C0 */	lis r3, jointCtrlCallBack__FP8J3DJointi@ha /* 0x80BFFF0C@ha */
/* 80C00710  38 83 FF 0C */	addi r4, r3, jointCtrlCallBack__FP8J3DJointi@l /* 0x80BFFF0C@l */
/* 80C00714  48 00 00 18 */	b lbl_80C0072C
lbl_80C00718:
/* 80C00718  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80C0071C  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80C00720  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C00724  90 83 00 04 */	stw r4, 4(r3)
/* 80C00728  38 C6 00 01 */	addi r6, r6, 1
lbl_80C0072C:
/* 80C0072C  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80C00730  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 80C00734  7C 03 00 40 */	cmplw r3, r0
/* 80C00738  41 80 FF E0 */	blt lbl_80C00718
/* 80C0073C  93 A5 00 14 */	stw r29, 0x14(r5)
/* 80C00740  38 1F 01 EC */	addi r0, r31, 0x1ec
/* 80C00744  90 1D 08 3C */	stw r0, 0x83c(r29)
/* 80C00748  7F A3 EB 78 */	mr r3, r29
/* 80C0074C  38 80 00 16 */	li r4, 0x16
/* 80C00750  38 A0 00 00 */	li r5, 0
/* 80C00754  3C C0 80 C1 */	lis r6, lit_4333@ha /* 0x80C0FB98@ha */
/* 80C00758  C0 26 FB 98 */	lfs f1, lit_4333@l(r6)  /* 0x80C0FB98@l */
/* 80C0075C  48 00 0D 99 */	bl setFaceAnm__11daObj_GrA_cFibf
/* 80C00760  7F A3 EB 78 */	mr r3, r29
/* 80C00764  38 80 00 11 */	li r4, 0x11
/* 80C00768  3C A0 80 C1 */	lis r5, lit_4333@ha /* 0x80C0FB98@ha */
/* 80C0076C  C0 25 FB 98 */	lfs f1, lit_4333@l(r5)  /* 0x80C0FB98@l */
/* 80C00770  48 00 0C 41 */	bl setBaseAnm__11daObj_GrA_cFif
/* 80C00774  38 60 00 01 */	li r3, 1
lbl_80C00778:
/* 80C00778  39 61 00 30 */	addi r11, r1, 0x30
/* 80C0077C  4B 76 1A AD */	bl _restgpr_29
/* 80C00780  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C00784  7C 08 03 A6 */	mtlr r0
/* 80C00788  38 21 00 30 */	addi r1, r1, 0x30
/* 80C0078C  4E 80 00 20 */	blr 
