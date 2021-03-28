lbl_80A220A0:
/* 80A220A0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A220A4  7C 08 02 A6 */	mflr r0
/* 80A220A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A220AC  39 61 00 40 */	addi r11, r1, 0x40
/* 80A220B0  4B 94 01 2C */	b _savegpr_29
/* 80A220B4  7C 7D 1B 78 */	mr r29, r3
/* 80A220B8  3C 60 80 A2 */	lis r3, m__20daNpcKasiKyu_Param_c@ha
/* 80A220BC  3B E3 58 B8 */	addi r31, r3, m__20daNpcKasiKyu_Param_c@l
/* 80A220C0  3C 60 80 A2 */	lis r3, l_arcNames@ha
/* 80A220C4  38 63 5C 10 */	addi r3, r3, l_arcNames@l
/* 80A220C8  80 63 00 00 */	lwz r3, 0(r3)
/* 80A220CC  38 80 00 04 */	li r4, 4
/* 80A220D0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80A220D4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80A220D8  3C A5 00 02 */	addis r5, r5, 2
/* 80A220DC  38 C0 00 80 */	li r6, 0x80
/* 80A220E0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80A220E4  4B 61 A2 08 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A220E8  7C 7E 1B 78 */	mr r30, r3
/* 80A220EC  38 60 00 58 */	li r3, 0x58
/* 80A220F0  4B 8A CB 5C */	b __nw__FUl
/* 80A220F4  7C 60 1B 79 */	or. r0, r3, r3
/* 80A220F8  41 82 00 48 */	beq lbl_80A22140
/* 80A220FC  38 1D 0B 48 */	addi r0, r29, 0xb48
/* 80A22100  90 01 00 08 */	stw r0, 8(r1)
/* 80A22104  3C 00 00 08 */	lis r0, 8
/* 80A22108  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A2210C  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020084@ha */
/* 80A22110  38 04 00 84 */	addi r0, r4, 0x0084 /* 0x11020084@l */
/* 80A22114  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A22118  7F C4 F3 78 */	mr r4, r30
/* 80A2211C  38 A0 00 00 */	li r5, 0
/* 80A22120  38 C0 00 00 */	li r6, 0
/* 80A22124  38 E0 00 00 */	li r7, 0
/* 80A22128  39 00 FF FF */	li r8, -1
/* 80A2212C  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80A22130  39 20 00 00 */	li r9, 0
/* 80A22134  39 40 FF FF */	li r10, -1
/* 80A22138  4B 5E E6 98 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80A2213C  7C 60 1B 78 */	mr r0, r3
lbl_80A22140:
/* 80A22140  90 1D 05 68 */	stw r0, 0x568(r29)
/* 80A22144  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A22148  28 03 00 00 */	cmplwi r3, 0
/* 80A2214C  41 82 00 1C */	beq lbl_80A22168
/* 80A22150  80 03 00 04 */	lwz r0, 4(r3)
/* 80A22154  28 00 00 00 */	cmplwi r0, 0
/* 80A22158  40 82 00 10 */	bne lbl_80A22168
/* 80A2215C  4B 5E F1 B4 */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 80A22160  38 00 00 00 */	li r0, 0
/* 80A22164  90 1D 05 68 */	stw r0, 0x568(r29)
lbl_80A22168:
/* 80A22168  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A2216C  28 03 00 00 */	cmplwi r3, 0
/* 80A22170  40 82 00 0C */	bne lbl_80A2217C
/* 80A22174  38 60 00 00 */	li r3, 0
/* 80A22178  48 00 00 94 */	b lbl_80A2220C
lbl_80A2217C:
/* 80A2217C  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80A22180  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80A22184  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80A22188  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A2218C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80A22190  38 00 00 01 */	li r0, 1
/* 80A22194  98 03 00 54 */	stb r0, 0x54(r3)
/* 80A22198  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A2219C  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 80A221A0  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 80A221A4  D0 23 00 48 */	stfs f1, 0x48(r3)
/* 80A221A8  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A221AC  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A221B0  38 C0 00 00 */	li r6, 0
/* 80A221B4  3C 60 80 A2 */	lis r3, ctrlJointCallBack__14daNpcKasiKyu_cFP8J3DJointi@ha
/* 80A221B8  38 83 24 7C */	addi r4, r3, ctrlJointCallBack__14daNpcKasiKyu_cFP8J3DJointi@l
/* 80A221BC  48 00 00 18 */	b lbl_80A221D4
lbl_80A221C0:
/* 80A221C0  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80A221C4  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80A221C8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A221CC  90 83 00 04 */	stw r4, 4(r3)
/* 80A221D0  38 C6 00 01 */	addi r6, r6, 1
lbl_80A221D4:
/* 80A221D4  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80A221D8  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 80A221DC  7C 03 00 40 */	cmplw r3, r0
/* 80A221E0  41 80 FF E0 */	blt lbl_80A221C0
/* 80A221E4  93 A5 00 14 */	stw r29, 0x14(r5)
/* 80A221E8  7F A3 EB 78 */	mr r3, r29
/* 80A221EC  38 80 00 04 */	li r4, 4
/* 80A221F0  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80A221F4  38 A0 00 00 */	li r5, 0
/* 80A221F8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A221FC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A22200  7D 89 03 A6 */	mtctr r12
/* 80A22204  4E 80 04 21 */	bctrl 
/* 80A22208  38 60 00 01 */	li r3, 1
lbl_80A2220C:
/* 80A2220C  39 61 00 40 */	addi r11, r1, 0x40
/* 80A22210  4B 94 00 18 */	b _restgpr_29
/* 80A22214  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A22218  7C 08 03 A6 */	mtlr r0
/* 80A2221C  38 21 00 40 */	addi r1, r1, 0x40
/* 80A22220  4E 80 00 20 */	blr 
