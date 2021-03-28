lbl_80968FE4:
/* 80968FE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80968FE8  7C 08 02 A6 */	mflr r0
/* 80968FEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80968FF0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80968FF4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80968FF8  7C 7E 1B 78 */	mr r30, r3
/* 80968FFC  3C 60 80 97 */	lis r3, l_arcNames@ha
/* 80969000  38 63 CC 2C */	addi r3, r3, l_arcNames@l
/* 80969004  80 63 00 00 */	lwz r3, 0(r3)
/* 80969008  38 80 00 10 */	li r4, 0x10
/* 8096900C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80969010  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80969014  3C A5 00 02 */	addis r5, r5, 2
/* 80969018  38 C0 00 80 */	li r6, 0x80
/* 8096901C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80969020  4B 6D 32 CC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80969024  7C 7F 1B 78 */	mr r31, r3
/* 80969028  38 60 00 58 */	li r3, 0x58
/* 8096902C  4B 96 5C 20 */	b __nw__FUl
/* 80969030  7C 60 1B 79 */	or. r0, r3, r3
/* 80969034  41 82 00 4C */	beq lbl_80969080
/* 80969038  38 1E 0B 48 */	addi r0, r30, 0xb48
/* 8096903C  90 01 00 08 */	stw r0, 8(r1)
/* 80969040  3C 00 00 08 */	lis r0, 8
/* 80969044  90 01 00 0C */	stw r0, 0xc(r1)
/* 80969048  3C 80 11 00 */	lis r4, 0x1100 /* 0x11000084@ha */
/* 8096904C  38 04 00 84 */	addi r0, r4, 0x0084 /* 0x11000084@l */
/* 80969050  90 01 00 10 */	stw r0, 0x10(r1)
/* 80969054  7F E4 FB 78 */	mr r4, r31
/* 80969058  38 A0 00 00 */	li r5, 0
/* 8096905C  38 C0 00 00 */	li r6, 0
/* 80969060  38 E0 00 00 */	li r7, 0
/* 80969064  39 00 FF FF */	li r8, -1
/* 80969068  3D 20 80 97 */	lis r9, lit_4306@ha
/* 8096906C  C0 29 C9 E8 */	lfs f1, lit_4306@l(r9)
/* 80969070  39 20 00 00 */	li r9, 0
/* 80969074  39 40 FF FF */	li r10, -1
/* 80969078  4B 6A 77 58 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8096907C  7C 60 1B 78 */	mr r0, r3
lbl_80969080:
/* 80969080  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80969084  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80969088  28 03 00 00 */	cmplwi r3, 0
/* 8096908C  41 82 00 1C */	beq lbl_809690A8
/* 80969090  80 03 00 04 */	lwz r0, 4(r3)
/* 80969094  28 00 00 00 */	cmplwi r0, 0
/* 80969098  40 82 00 10 */	bne lbl_809690A8
/* 8096909C  4B 6A 82 74 */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 809690A0  38 00 00 00 */	li r0, 0
/* 809690A4  90 1E 05 68 */	stw r0, 0x568(r30)
lbl_809690A8:
/* 809690A8  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809690AC  28 03 00 00 */	cmplwi r3, 0
/* 809690B0  40 82 00 0C */	bne lbl_809690BC
/* 809690B4  38 60 00 00 */	li r3, 0
/* 809690B8  48 00 00 68 */	b lbl_80969120
lbl_809690BC:
/* 809690BC  80 A3 00 04 */	lwz r5, 4(r3)
/* 809690C0  38 C0 00 00 */	li r6, 0
/* 809690C4  3C 60 80 97 */	lis r3, ctrlJointCallBack__13daNpcBlueNS_cFP8J3DJointi@ha
/* 809690C8  38 83 9B 88 */	addi r4, r3, ctrlJointCallBack__13daNpcBlueNS_cFP8J3DJointi@l
/* 809690CC  48 00 00 18 */	b lbl_809690E4
lbl_809690D0:
/* 809690D0  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 809690D4  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 809690D8  7C 63 00 2E */	lwzx r3, r3, r0
/* 809690DC  90 83 00 04 */	stw r4, 4(r3)
/* 809690E0  38 C6 00 01 */	addi r6, r6, 1
lbl_809690E4:
/* 809690E4  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 809690E8  A0 1F 00 2C */	lhz r0, 0x2c(r31)
/* 809690EC  7C 03 00 40 */	cmplw r3, r0
/* 809690F0  41 80 FF E0 */	blt lbl_809690D0
/* 809690F4  93 C5 00 14 */	stw r30, 0x14(r5)
/* 809690F8  7F C3 F3 78 */	mr r3, r30
/* 809690FC  38 80 00 00 */	li r4, 0
/* 80969100  3C A0 80 97 */	lis r5, lit_4307@ha
/* 80969104  C0 25 C9 EC */	lfs f1, lit_4307@l(r5)
/* 80969108  38 A0 00 00 */	li r5, 0
/* 8096910C  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80969110  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80969114  7D 89 03 A6 */	mtctr r12
/* 80969118  4E 80 04 21 */	bctrl 
/* 8096911C  38 60 00 01 */	li r3, 1
lbl_80969120:
/* 80969120  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80969124  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80969128  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8096912C  7C 08 03 A6 */	mtlr r0
/* 80969130  38 21 00 20 */	addi r1, r1, 0x20
/* 80969134  4E 80 00 20 */	blr 
